package org.rpo.core.rdf;

import org.apache.jena.rdf.model.Model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * InMemory Model Store
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class InMemoryModelStore {

    private static Map<String, Model> modelMap = new HashMap<>();
    private static InMemoryModelStore instance = new InMemoryModelStore();

    private InMemoryModelStore() {
    }

    static {
        Map<String, Model> availableModels = RDFReader.readAllRDFs();
        if (availableModels.size() > 0) {
            availableModels.forEach(modelMap::put);
        }
    }

    /**
     * Get instance of InMemoryModelStore
     *
     * @return InMemoryModelStore instance
     */
    public static InMemoryModelStore getInstance() {
        return instance;
    }

    /**
     * Get Model of rdf
     *
     * @param fileName rdf file name
     * @return Model instance
     */
    public Model getModel(String fileName) {
        return modelMap.get(fileName);
    }

    /**
     * Get all available models
     *
     * @return List of Models
     */
    public List<Model> getModels() {
        if (modelMap.size() > 0) {
            return new ArrayList<Model>(modelMap.values());
        }
        return Collections.EMPTY_LIST;
    }

    public Set<String> getModelNames() {
        if (modelMap.size() > 0) {
            return modelMap.keySet();
        }
        return Collections.EMPTY_SET;
    }

}
