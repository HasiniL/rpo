package org.rpo.web;

import org.rpo.core.rdf.InMemoryModelStore;
import org.rpo.core.rdf.sparql.SPARQLExecutor;
import org.rpo.core.rdf.util.Util;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * SPARQL Servlet
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public class SPARQLServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
                                                                                          IOException {

        String selectParam = request.getParameter("select");
        String returnString = "{}";

        if (selectParam != null && !selectParam.trim().isEmpty()) {
            List<String> results = SPARQLExecutor.executeSelect(InMemoryModelStore.getInstance().getModels(),
                                                                Util.getQueryString(selectParam));

            if (!results.isEmpty()) {
                response.setContentType("application/json");
                returnString = "{\"results\":[";
                for (String result : results) {
                    returnString += "\"" + result + "\", ";
                }
                returnString = returnString.substring(0, returnString.lastIndexOf(","));
                returnString += "]}";
            }
        }

        response.getWriter().println(returnString);
    }

}
