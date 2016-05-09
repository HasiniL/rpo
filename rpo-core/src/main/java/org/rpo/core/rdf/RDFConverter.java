package org.rpo.core.rdf;

import org.apache.jena.rdf.model.Model;

import java.io.InputStream;

/**
 * RDF Converter interface
 *
 * @author Miyasi Lankage
 * @since 1.0.0
 */
public interface RDFConverter {

    Model build(InputStream in);

}
