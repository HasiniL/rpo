package org.rpo.core.rdf.model;

import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.apache.jena.rdf.model.Property;
import org.apache.jena.rdf.model.Resource;

public class ResearchPaper {

    public static final String uri = "http://www.slit.lk/2016/rpo/1.0#";

    public ResearchPaper() {}

    public static String getURI()
    {
        return "http://www.slit.lk/2016/rpo/1.0#";
    }

    private static final Model MODEL = ModelFactory.createDefaultModel();
    public static final Resource RESEARCH_PAPER = MODEL.createResource(uri + "ResearchPaper");
    public static final Property ABSTRACT = MODEL.createProperty(uri, "Abstract");
    public static final Property INTRODUCTION = MODEL.createProperty(uri, "Introduction");
    public static final Property REFERENCES = MODEL.createProperty(uri, "References");
    public static final Property KEYWORD = MODEL.createProperty(uri, "Keyword");
    public static final Property CONCLUSION = MODEL.createProperty(uri, "Conclusion");
    public static final Property AUTHOR = MODEL.createProperty(uri, "Author");

}

