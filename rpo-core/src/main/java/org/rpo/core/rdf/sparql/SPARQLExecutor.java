package org.rpo.core.rdf.sparql;

import org.apache.jena.query.Query;
import org.apache.jena.query.QueryExecution;
import org.apache.jena.query.QueryExecutionFactory;
import org.apache.jena.query.QueryFactory;
import org.apache.jena.query.QuerySolution;
import org.apache.jena.query.ResultSet;
import org.apache.jena.rdf.model.Literal;
import org.apache.jena.rdf.model.Model;
import org.rpo.core.rdf.RDFWriter;
import org.rpo.core.rdf.util.QueryStringStore;

import java.util.ArrayList;
import java.util.List;

/**
 * Query String Store
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class SPARQLExecutor {

    public static List<String> executeSelect(List<Model> modelList, String queryString) {

        List<String> results = new ArrayList<>();
        for(Model model : modelList) {
            Query query = QueryFactory.create(queryString);
            QueryExecution queryExecution = QueryExecutionFactory.create(query, model);

            ResultSet resultSet = queryExecution.execSelect();
            while (resultSet.hasNext()) {
                QuerySolution querySolution = resultSet.nextSolution();
                Literal literal = querySolution.getLiteral("x");
                results.add(literal.getString());
            }
        }
        return results;
    }

    public static void main(String[] args) {
        List<Model> models = new ArrayList<>();
        models.add(RDFWriter.getDummyRDF("test"));
        executeSelect(models, QueryStringStore.GET_ALL_AUTHORS);
        executeSelect(models, QueryStringStore.GET_ALL_ABSTRACTS);
        executeSelect(models, QueryStringStore.GET_ALL_CONCLUSIONS);
        executeSelect(models, QueryStringStore.GET_ALL_INTRODUCTIONS);
        executeSelect(models, QueryStringStore.GET_ALL_KEYWORDS);
        executeSelect(models, QueryStringStore.GET_ALL_REFERENCES);
    }

}

