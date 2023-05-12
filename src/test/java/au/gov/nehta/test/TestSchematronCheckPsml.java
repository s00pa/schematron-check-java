package au.gov.nehta.test;

import au.gov.nehta.schematron.Schematron;
import au.gov.nehta.schematron.SchematronCheckResult;
import org.junit.Assert;
import org.junit.Test;

public class TestSchematronCheckPsml {

    // Test the schema check against a CDA document with no known
    // schema or schematron errors
    @Test
    public void testSimpleInterface() {

        SchematronCheckResult result;

        result = Schematron.check("resources/test/PharmacistSharedMedicines",
                "ccd-1A.sch",
                "resources/test/generated_xml/psml/psml-max-java.xml");

        Assert.assertEquals(0, result.schemaErrors.size());
        Assert.assertEquals(0, result.schematronErrors.size());
    }

}
