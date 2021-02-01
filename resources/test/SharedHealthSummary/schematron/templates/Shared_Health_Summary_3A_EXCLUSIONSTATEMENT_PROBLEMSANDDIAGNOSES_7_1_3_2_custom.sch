<?xml version = "1.0" encoding = "UTF-8"?>

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix="cda" uri="urn:hl7-org:v3"/>
    <ns prefix="ext" uri="http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
    <ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance"/>


    <!-- Shared Health Summary Clinical Document:  7.1.3.2 Exclusion Statement / Problems And Diagnoses Custom -->

    <!-- Context: ClinicalDocument/Exclusion Statement_Problems And Diagnoses -->


    <!-- Status: Last Reviewed: 
         Status: Last Updated : 22/04/2013 -->



    <pattern name="p-Shared_Health_Summary_3A_EXCLUSIONSTATEMENT_PROBLEMSANDDIAGNOSES_7_1_3_2_custom-errors"
        id="p-Shared_Health_Summary_3A_EXCLUSIONSTATEMENT_PROBLEMSANDDIAGNOSES_7_1_3_2_custom-errors"
        see="#p-Shared_Health_Summary_3A_EXCLUSIONSTATEMENT_PROBLEMSANDDIAGNOSES_7_1_3_2_custom-errors">

        
        
        
        <rule
            context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.16117']/cda:entry/cda:observation[cda:code/@code='103.16302.120.1.3']/cda:value">
            
            <assert
                test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'CD' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'CD') or 
                normalize-space(@xsi:type) = 'CE' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'CE')"
                >
				Error: Shared Health Summary - 7.1.3.2 Exclusion Statement - Problems And Diagnoses - "Global Statement" - 
                The 'value' tag 'xsi:type' attribute shall contain the
                value 'CD' or 'CE'.
				Refer to section 7.1.3.2 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>
            
            
            <report test="
                @code and normalize-space(@code) != '' and normalize-space(@code) = '02'">
                Error: Shared Health Summary - 7.1.3.2 Exclusion Statement - Problems And Diagnoses - "Global Statement" - 
                The 'value' tag 'code' attribute shall not contain the value '02'.
                Refer to section 7.1.3.2 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>
            
        </rule>
        


    </pattern>

</schema>
