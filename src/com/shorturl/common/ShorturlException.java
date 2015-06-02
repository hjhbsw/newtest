package com.shorturl.common;

/**
 * 短链接异常
 * 
 * @author yanglei
 * @version $Id: ShorturlException.java, v 0.1 2015年1月30日 上午10:00:37 yanglei Exp $
 */
public class ShorturlException extends Exception {

    private static final long serialVersionUID = -8136690499495145334L;

    private ExcepFactor       expmodel;

    public ShorturlException(final ExcepFactor expmodel) {
        super(expmodel.getErrorMsg());
        this.expmodel = expmodel;
    }

    public ShorturlException(final ExcepFactor expmodel, final Exception exception) {
        super(exception);
        this.expmodel = expmodel;
    }

    public ExcepFactor getExpmodel() {
        return expmodel;
    }

    public void setExpmodel(final ExcepFactor expmodel) {
        this.expmodel = expmodel;
    }

    /**
     * @param args
     */
    public static void main(final String[] args) {

    }

}
