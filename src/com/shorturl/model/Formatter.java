/**
 * 
 */
package com.shorturl.model;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.SAXReader;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shorturl.common.ShorturlException;

/**
 * 返回值类型
 * 
 * @author yanglei
 * @version $Id: Formatter.java, v 0.1 2015年2月3日 下午5:18:21 yanglei Exp $
 */
public class Formatter {

    private static Logger      log         = LoggerFactory.getLogger(Formatter.class);

    public static final String MIME_XML    = "text/xml";
    public static final String MIME_JSON   = "text/javascript";
    public static final String MIME_STRING = "text/html";

    public enum FORMAT {
        xml,

        json,

        redirect;

        public static FORMAT getFormat(final HttpServletRequest request) {
            final String uri = request.getRequestURI();
            FORMAT rst = redirect;
            if (uri.endsWith(".xml") || uri.endsWith(".XML")) {
                rst = xml;
            } else if (uri.endsWith(".json") || uri.endsWith(".json")) {
                rst = json;
            }

            return rst;
        }
    }

    public static String toXML(final List<UrlInfo> urlinfos) {
        final StringBuilder sb = new StringBuilder();

        sb.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
        sb.append("<urlinfos>\n");
        for (final UrlInfo urlinfo : urlinfos) {
            try {
                sb.append(urlinfo.toXML()).append("\n");
            } catch (Exception e) {
                log.warn("toXML: " + urlinfo, e);
            }
        }
        sb.append("</urlinfos>\n");

        return sb.toString();
    }

    public static String toJSON(final List<UrlInfo> urlinfos) {
        final StringBuilder sb = new StringBuilder();
        boolean objAppended = false;
        sb.append("{\"urlinfos\":[\n");
        for (final UrlInfo urlinfo : urlinfos) {
            try {
                sb.append(urlinfo.toJSON()).append(",\n");
                objAppended = true;
            } catch (final ShorturlException e) {
                log.warn("toJSON: " + urlinfo, e);
            }
        }
        if (objAppended) {
            sb.setLength(sb.length() - 2);
        }
        sb.append("\n]}\n");
        return sb.toString();
    }

    public static String toString(final List<UrlInfo> urlinfos) {
        return "string " + urlinfos + "\n";
    }

    /**
     * @param args
     * @throws ShorturlException
     * @throws DocumentException
     * @throws JSONException
     */
    public static void main(final String[] args) throws ShorturlException, DocumentException,
                                                JSONException {
        final UrlInfo urlinfo = UrlInfo.getUrlInfoByLongUrl("http://a.t.cn/aa?a=b&c=d");
        final UrlInfo urlinfo2 = UrlInfo.getUrlInfoByLongUrl("http://a.t.cn/aa?a=d&c=b");

        final ArrayList<UrlInfo> urlinfos = new ArrayList<UrlInfo>();
        urlinfos.add(urlinfo);
        urlinfos.add(urlinfo2);

        final JSONObject json = new JSONObject(new JSONTokener(toJSON(urlinfos)));
        System.out.println(json.toString());

        final SAXReader xmlReader = new SAXReader();
        final String xml = toXML(urlinfos);
        final Document doc = xmlReader.read(new StringReader(xml));
        System.out.println(doc.getRootElement().asXML());
    }

}
