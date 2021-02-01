package au.gov.nehta.examples;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

import au.gov.nehta.schematron.Schematron;
import au.gov.nehta.schematron.SchematronCheckResult;

public class SchematronCheckExample {

    public static void main(String[] args) {
        // The simplest way to invoke the check is using
        // the template path and schematron level
        SchematronCheckResult check = Schematron.check("resources/test/AdvanceCareDirective/",
                "ccd-3A.sch",
                "resources/test/generated_xml/advance_care_directive/acd-max-java.xml");

        System.out.println("# Of Schema errors:\t" + check.schemaErrors.size());
        System.out.println("# Of Schematron errors:\t" + check.schematronErrors.size());

        // Alternatively, you may specify complete paths
        check = Schematron.check(
                "resources/test/AdvanceCareDirective/",
                "resources/test/AdvanceCareDirective/cdar2/CDA.xsd",
                "resources/test/AdvanceCareDirective/cdar2/EXTENSION.xsd",
                "resources/test/AdvanceCareDirective/schematron/ccd-3A.sch",
                "resources/test/AdvanceCareDirective/schematron/schematron-Validator-report.xsl",
                "resources/test/generated_xml/advance_care_directive/acd-max-java.xml");

        // Both methods have an alternative that accepts an in-memory xml document
        Document xml = loadExampleDocument();
        check = Schematron.check("resources/test/AdvanceCareDirective/", "ccd-3A.sch", xml);
    }

    private static Document loadExampleDocument() {
        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        documentBuilderFactory.setNamespaceAware(true);
        documentBuilderFactory.setAttribute("http://java.sun.com/xml/jaxp/properties/schemaLanguage",
                XMLConstants.W3C_XML_SCHEMA_NS_URI);
        documentBuilderFactory.setIgnoringElementContentWhitespace(true);
        DocumentBuilder builder = null;
        Document doc = null;

        try {
            builder = documentBuilderFactory.newDocumentBuilder();
            doc = builder.parse("resources/test/generated_xml/advance_care_directive/acd-max-java.xml");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return doc;
    }
}
