package org.rpo.core.rdf;

import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;
import org.rpo.core.rdf.model.ResearchPaper;

import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * This class will write rdf files to WEB-INF/classes folder
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class RDFWriter {

    /**
     * Write RDF to a file
     *
     * @param fileName file name
     * @param model    Model
     */
    public static void writeRDF(String fileName, Model model) {

        if (fileName != null && !fileName.trim().isEmpty() && model != null) {
            Path path = Paths.get(Paths.get(System.getProperty("user.dir")).getParent().toString(), "webapps",
                                  "rpo.org", "WEB-INF", "classes", fileName + ".rdf");

            try (OutputStream writer = Files.newOutputStream(path)) {
                String syntax = "RDF/XML-ABBREV";
                StringWriter out = new StringWriter();
                model.write(out, syntax);
                writer.write(out.toString().getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public static Model getDummyRDF(String filename) {

        Model model = ModelFactory.createDefaultModel();
        model.createResource("http://www.slit.lk/2016/rpo/1.0#" + filename)
                .addProperty(ResearchPaper.AUTHOR, "Tom Grey, Mike Vernon")
                .addProperty(ResearchPaper.ABSTRACT, "This is a dummy abstract")
                .addProperty(ResearchPaper.INTRODUCTION, "This is a dummy introduction")
                .addProperty(ResearchPaper.KEYWORD, "Dummy,Key,Words")
                .addProperty(ResearchPaper.CONCLUSION, "Dummy conclusion")
                .addProperty(ResearchPaper.REFERENCES, "Dummy references");
        model.setNsPrefix("rpo", "http://www.slit.lk/2016/rpo/1.0#");
        return model;
    }

    public static void main(String[] args) {

    }
}
