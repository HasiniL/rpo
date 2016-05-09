package org.rpo.core.rdf;

import org.apache.jena.rdf.model.Model;
import org.apache.jena.rdf.model.ModelFactory;

import java.io.IOException;
import java.nio.file.DirectoryIteratorException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

/**
 * This class will read rdf files available at WEB-INF/classes folder
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class RDFReader {

    /**
     * Get available RDF files in the system
     *
     * @return List<Model>
     */
    public static Map<String, Model> readAllRDFs() {

        Map<String, Model> modelMap = new HashMap<>();
        Path path = Paths.get(Paths.get(System.getProperty("user.dir")).getParent().toString(), "webapps",
                              "rpo.org", "WEB-INF", "classes");

        if (Files.exists(path)) {
            try (DirectoryStream<Path> stream = Files.newDirectoryStream(path, "*.rdf")) {
                for (Path filePath : stream) {
                    Model model = ModelFactory.createDefaultModel();
                    model.read(Files.newInputStream(filePath), null);
                    modelMap.put(filePath.getFileName().toString(), model);
                }
            } catch (DirectoryIteratorException | IOException ex) {
                throw new RuntimeException("Failed to read rdf files from path: " + path.toString(), ex);
            }
        }

        return modelMap;
    }

}
