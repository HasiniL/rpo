package org.rpo.core.rdf.util;

/**
 * Util
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class Util {

    private Util() {}

    public static String getQueryString(String queryName) {
        if("author".equals(queryName)) {
            return QueryStringStore.GET_ALL_AUTHORS;
        } else if("abstract".equals(queryName)) {
            return QueryStringStore.GET_ALL_ABSTRACTS;
        } else if("conclusion".equals(queryName)) {
            return QueryStringStore.GET_ALL_CONCLUSIONS;
        } else if("introduction".equals(queryName)) {
            return QueryStringStore.GET_ALL_INTRODUCTIONS;
        } else if("keyword".equals(queryName)) {
            return QueryStringStore.GET_ALL_KEYWORDS;
        } else if("reference".equals(queryName)) {
            return QueryStringStore.GET_ALL_REFERENCES;
        }
        throw new RuntimeException("Unsupported query.");
    }

}
