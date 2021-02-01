package au.gov.nehta.test;

import au.gov.nehta.schematron.Schematron;
import au.gov.nehta.schematron.SchematronCheckResult;
import org.junit.Assert;
import org.junit.Test;
import org.w3c.dom.Document;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;

public class TestSchematronCheckSpecialistLetter {

    // Test the schema check against a CDA document with a known
    // number of schema and schematron errors
    @Test
    public void testSimpleInterface() {

        SchematronCheckResult result;

        result = Schematron.check("resources/test/SpecialistLetter",
                "ccd-3A.sch",
                "resources/test/generated_xml/specialist_letter/sl-max-java.xml");

        Assert.assertEquals(0, result.schemaErrors.size());
        Assert.assertEquals(0, result.schematronErrors.size());
    }

    // Test the schema check against a CDA document with a known
    // number of schema and schematron errors
    @Test
    public void testSimpleInterfaceWithDocument() {

        SchematronCheckResult result;
        Document ePrescription = readDocument("resources/test/generated_xml/specialist_letter/sl-max-java.xml");
        result = Schematron.check("resources/test/SpecialistLetter",
                "ccd-3A.sch",
                ePrescription);

        Assert.assertEquals(0, result.schemaErrors.size());
        Assert.assertEquals(0, result.schematronErrors.size());
    }

    // Test the schema check against a CDA document with a known
    // number of schema and schematron errors
    @Test
    public void testLargeInterface() {
        SchematronCheckResult result;
        result = Schematron.check("resources/test/SpecialistLetter",
                "resources/test/SpecialistLetter/cdar2/CDA.xsd",
                "resources/test/SpecialistLetter/cdar2/EXTENSION.xsd",
                "resources/test/SpecialistLetter/schematron/ccd-3A.sch",
                "resources/test/SpecialistLetter/schematron/schematron-Validator-report.xsl",
                "resources/test/generated_xml/specialist_letter/sl-max-java.xml");

        Assert.assertEquals(0, result.schemaErrors.size());
        Assert.assertEquals(0, result.schematronErrors.size());
    }

    // Run the schematron check a number of times to test compiled performance
    @Test
    public void testAverageExecutionTime() {

        long t = System.currentTimeMillis();
        int runs = 10;
        for (int i = 0; i < runs; i++) {
            SchematronCheckResult result =
                    Schematron.check(
                            "resources/test/SpecialistLetter",
                            "resources/test/SpecialistLetter/cdar2/CDA.xsd",
                            "resources/test/SpecialistLetter/cdar2/EXTENSION.xsd",
                            "resources/test/SpecialistLetter/schematron/ccd-3A.sch",
                            "resources/test/SpecialistLetter/schematron/schematron-Validator-report.xsl",
                            "resources/test/generated_xml/specialist_letter/sl-max-java.xml");
            Assert.assertEquals(0, result.schemaErrors.size());
            Assert.assertEquals(0, result.schematronErrors.size());
        }

        long b = System.currentTimeMillis() - t;
        long avgPerRun = b / runs;
        System.out.println("Average Execution time: " + avgPerRun + "ms");

        // should be subsecond performance
        Assert.assertTrue(avgPerRun < 1000);
    }

    /**
     * Read the document in from the given location.
     * @param xmlLocation The location of the XML file
     * @return The parsed document
     */
    private Document readDocument(String xmlLocation) {

        DocumentBuilderFactory DocumentBuilderfactory = getDocumentBuilder();
        DocumentBuilder builder;
        Document doc;

        try {
            builder = DocumentBuilderfactory.newDocumentBuilder();

            // use a null error handler
            builder.setErrorHandler(new ErrorHandler() {

                @Override
                public void warning(SAXParseException exception) throws SAXException {
                    // no-op
                }

                @Override
                public void fatalError(SAXParseException exception) throws SAXException {
                    // no-op
                }

                @Override
                public void error(SAXParseException exception) throws SAXException {
                    // no-op
                }
            });

            doc = builder.parse(xmlLocation);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return doc;
    }

    public static DocumentBuilderFactory getDocumentBuilder() {
        DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        documentBuilderFactory.setNamespaceAware(true);
        documentBuilderFactory.setValidating(true);
        documentBuilderFactory.setAttribute("http://java.sun.com/xml/jaxp/properties/schemaLanguage", XMLConstants.W3C_XML_SCHEMA_NS_URI);

        // documentBuilderFactory.setAttribute("http://java.sun.com/xml/jaxp/properties/schemaSource",
        // schema);
        documentBuilderFactory.setIgnoringElementContentWhitespace(true);
        return documentBuilderFactory;
    }
}
