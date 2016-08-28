package org.rpo.core.rdf.util;

/**
 * Query String Store
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class QueryStringStore {


    public static final String GET_ALL_AUTHORS = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
                                                 "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
                                                 "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
                                                 "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
                                                 "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
                                                 "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
                                                 "\n" +
                                                 "SELECT ?x " +
                                                 "WHERE " +
                                                 "{ ?y rpo:Name ?x }";

    public static final String GET_ALL_ABSTRACTS = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
                                                   "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
                                                   "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
                                                   "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
                                                   "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
                                                   "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
                                                   "\n" +
                                                   "SELECT ?x " +
                                                   "WHERE " +
                                                   "{ ?y rpo:Abstract ?x }";

    public static final String GET_ALL_INTRODUCTIONS = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
                                                       "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
                                                       "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
                                                       "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
                                                       "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
                                                       "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
                                                       "\n" +
                                                       "SELECT ?x " +
                                                       "WHERE " +
                                                       "{ ?y rpo:Introduction ?x }";

    public static final String GET_ALL_REFERENCES = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
                                                    "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
                                                    "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
                                                    "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
                                                    "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
                                                    "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
                                                    "\n" +
                                                    "SELECT ?x " +
                                                    "WHERE " +
                                                    "{ ?y rpo:References ?x }";

    public static final String GET_ALL_KEYWORDS = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
                                                  "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
                                                  "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
                                                  "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
                                                  "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
                                                  "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
                                                  "\n" +
                                                  "SELECT ?x " +
                                                  "WHERE " +
                                                  "{ ?y rpo:Keywords ?x }";

    public static final String GET_ALL_CONCLUSIONS = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
                                                     "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
                                                     "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
                                                     "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
                                                     "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
                                                     "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
                                                     "\n" +
                                                     "SELECT ?x " +
                                                     "WHERE " +
                                                     "{ ?y rpo:Conclusion ?x }";

    public static final String GET_ALL_TITLES = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
            "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
            "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
            "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
            "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
            "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
            "\n" +
            "SELECT ?x " +
            "WHERE " +
            "{ ?y rpo:Title ?x }";

    public static final String GET_ALL_METHODOLOGIES = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
            "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
            "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
            "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
            "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
            "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
            "\n" +
            "SELECT ?x " +
            "WHERE " +
            "{ ?y rpo:Methodology ?x }";

    public static final String GET_ALL_LITERATURE_REVIEW = "PREFIX rpo: <http://www.sliit.lk/2016/rpo#>\n" +
            "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
            "PREFIX owl: <http://www.w3.org/2002/07/owl#>\n" +
            "PREFIX xml: <http://www.w3.org/XML/1998/namespace>\n" +
            "PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>\n" +
            "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
            "\n" +
            "SELECT ?x " +
            "WHERE " +
            "{ ?y rpo:LitretureReview ?x }";


    private QueryStringStore() {

    }

}
