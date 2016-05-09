/**
 *  Copyright (c) WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 *  WSO2 Inc. licenses this file to you under the Apache License,
 *  Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package org.rpo.web;

import org.apache.jena.rdf.model.Model;
import org.rpo.core.rdf.InMemoryModelStore;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RDFServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
                                                                                          IOException {

        String allFiles = request.getParameter("getAll");
        String fileName = request.getParameter("fileName");
        String returnString = "{}";

        if (allFiles != null && Boolean.TRUE.toString().equalsIgnoreCase(allFiles.trim())) {
            Set<String> fileNames = InMemoryModelStore.getInstance().getModelNames();
            if (!fileNames.isEmpty()) {
                response.setContentType("application/json");
                returnString = "{\"files\":[";
                for (String file : fileNames) {
                    returnString += "\"" + file + "\", ";
                }
                returnString = returnString.substring(0, returnString.lastIndexOf(","));
                returnString += "]}";
            }

        } else if (fileName != null && !fileName.trim().isEmpty()) {
            Model model = InMemoryModelStore.getInstance().getModel(fileName);
            if (model != null) {
                response.setContentType("text/plain");
                String syntax = "RDF/XML-ABBREV";
                StringWriter out = new StringWriter();
                model.write(out, syntax);
                returnString = out.toString();
            }
        }

        response.getWriter().println(returnString);
    }
}
