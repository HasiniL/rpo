package org.rpo.core.rdf.util;

/**
 * Query String Store
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class QueryStringStore {


    public static final String GET_ALL_AUTHORS = "PREFIX rpo: <http://www.slit.lk/2016/rpo/1.0#> " +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 " { ?y rpo:Author   ?x . }";

    public static final String GET_ALL_ABSTRACTS = "PREFIX rpo: <http://www.slit.lk/2016/rpo/1.0#> " +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 " { ?y rpo:Abstract   ?x . }";

    public static final String GET_ALL_INTRODUCTIONS = "PREFIX rpo: <http://www.slit.lk/2016/rpo/1.0#> " +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 " { ?y rpo:Introduction   ?x . }";

    public static final String GET_ALL_REFERENCES = "PREFIX rpo: <http://www.slit.lk/2016/rpo/1.0#> " +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 " { ?y rpo:References   ?x . }";

    public static final String GET_ALL_KEYWORDS = "PREFIX rpo: <http://www.slit.lk/2016/rpo/1.0#> " +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 " { ?y rpo:Keyword   ?x . }";

    public static final String GET_ALL_CONCLUSIONS = "PREFIX rpo: <http://www.slit.lk/2016/rpo/1.0#> " +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 " { ?y rpo:Conclusion   ?x . }";

    private QueryStringStore() {

    }

}
