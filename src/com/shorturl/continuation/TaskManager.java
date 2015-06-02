/**
 * 
 */
package com.shorturl.continuation;

import java.util.concurrent.FutureTask;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jetty.continuation.Continuation;
import org.eclipse.jetty.continuation.ContinuationSupport;

import cn.sina.data.utils.Priority;
import cn.sina.data.utils.ThreadPoolManager;
import cn.sina.data.utils.TooManyWaitingTaskException;

/**
 * @author tangfulin
 * 
 */
public final class TaskManager {

    public static final String TASK_FUTURE = "TaskManager.taskFuture";
    public static final String TASK_RESULTS = "TaskManager.taskResults";
    public static final String TASK_EXCEPTION = "TaskManager.taskException";

    private static ThreadPoolManager exec = null;
    private static int continuationTimeout = 3000;

    public static ThreadPoolManager getThreadPoolManager() {
        return exec;
    }

    public static void setThreadPoolManager(final ThreadPoolManager tpm) {
        exec = tpm;
    }

    public static void setTimeout(final int timeout) {
        continuationTimeout = timeout;
    }

    public static boolean submitTask(final HttpServletRequest request, final HttpServletResponse response,
            final AbstractContinuation<Object> task) {
        return submitTask(request, response, task, Priority.NORMAL);
    }

    public static boolean submitMaxPriorityTask(final HttpServletRequest request, final HttpServletResponse response,
            final AbstractContinuation<Object> task) {
        return submitTask(request, response, task, Priority.MAX);
    }

    public static boolean submitLowPriorityTask(final HttpServletRequest request, final HttpServletResponse response,
            final AbstractContinuation<Object> task) {
        return submitTask(request, response, task, Priority.LOW);
    }

    /**
     * submit a task async
     * 
     * @param request
     * @param response
     * @param task
     * @return result true for first submit task, false for expire or exception
     */
    public static boolean submitTask(final HttpServletRequest request, final HttpServletResponse response,
            final AbstractContinuation<Object> task, final int priority) {

        // submit sync if no exec
        if (exec == null) {
            submitTaskSync(request, response, task);
            return true;
        }

        final Continuation continuation = ContinuationSupport.getContinuation(request);

        if (continuation.isExpired()) {
            @SuppressWarnings("unchecked")
            final FutureTask<Object> ftask = (FutureTask<Object>) request.getAttribute(TASK_FUTURE);
            if (ftask != null) {
                // not Interrupt if it is still running
                ftask.cancel(false);
            }
            task.onExpire(request, response);
            return false;
        }

        // first call of this request
        if (continuation.isInitial()) {
            continuation.setTimeout(continuationTimeout);
            continuation.suspend(response);
        }

        try {
            final FutureTask<Object> ftask = new FutureTask<Object>(task) {
                @Override
                protected void done() {
                    // cancelled, just return
                    if (isCancelled()) {
                        return;
                    }
                    // expired, just return
                    if (continuation.isExpired()) {
                        return;
                    }

                    // complete, so *NO* attribute will take effects
                    // request.setAttribute(TASK_RESULTS, get());
                    try {
                        final Object ftaskResult = get();
                        task.onResult(request, response, ftaskResult);
                    } catch (final Exception e) {
                        task.onException(request, response, e);
                    }
                    continuation.complete();
                }
            };
            submitFutureTask(ftask, priority);
            request.setAttribute(TASK_FUTURE, ftask);
            return true;
        } catch (final TooManyWaitingTaskException e) {
            task.onException(request, response, e);
            return false;
        }

    }

    public static void submitFutureTask(final FutureTask<Object> ftask) throws TooManyWaitingTaskException {
        exec.submit(ftask, Priority.NORMAL);
    }

    public static void submitFutureTask(final FutureTask<Object> ftask, final int priority)
            throws TooManyWaitingTaskException {
        exec.submit(ftask, priority);
    }

    public static void submitMaxPriorityFutureTask(final FutureTask<Object> ftask) throws TooManyWaitingTaskException {
        exec.submit(ftask, Priority.MAX);
    }

    public static void submitLowPriorityFutureTask(final FutureTask<Object> ftask) throws TooManyWaitingTaskException {
        exec.submit(ftask, Priority.LOW);
    }

    public static void submitRunnable(final Runnable runner) throws TooManyWaitingTaskException {
        exec.submit(runner, Priority.NORMAL);
    }

    public static void submitRunnable(final Runnable runner, final int priority) throws TooManyWaitingTaskException {
        exec.submit(runner, priority);
    }

    public static void submitMaxPriorityRunnable(final Runnable runner) throws TooManyWaitingTaskException {
        exec.submit(runner, Priority.MAX);
    }

    public static void submitLowPriorityRunnable(final Runnable runner) throws TooManyWaitingTaskException {
        exec.submit(runner, Priority.LOW);
    }

    /**
     * submit a task sync, with *NO* expire support
     * 
     * @param request
     * @param response
     * @param task
     * @return result true for first submit task, false for expire or exception
     */
    public static boolean submitTaskSync(final HttpServletRequest request, final HttpServletResponse response,
            final AbstractContinuation<Object> task) {
        try {
            final Object result = task.call();
            task.onResult(request, response, result);
            return true;
        } catch (final TooManyWaitingTaskException e) {
            task.onException(request, response, e);
            return false;
        } catch (final Exception e) {
            task.onException(request, response, e);
            return false;
        }

    }

    /**
     * @param args
     */
    public static void main(final String[] args) {

    }

}
