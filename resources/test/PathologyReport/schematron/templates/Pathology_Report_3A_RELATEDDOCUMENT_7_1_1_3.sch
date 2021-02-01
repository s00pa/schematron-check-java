<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 2016-07-20 2:02:22 PM

                  Product            : Pathology Report
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.1.1.3
                  IG Guide Title     : RELATED DOCUMENT
                  Generator Version  : 2.28
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Pathology_Report_3A_RELATEDDOCUMENT_7_1_1_3-errors"
        id="p-Pathology_Report_3A_RELATEDDOCUMENT_7_1_1_3-errors"
        see="#p-Pathology_Report_3A_RELATEDDOCUMENT_7_1_1_3-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']">

            <assert test="cda:entry[cda:act/cda:code/@code = '102.16971']"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'entry' tag is missing for 'RELATED DOCUMENT'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:entry[cda:act/cda:code/@code = '102.16971']) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'entry' tag shall appear only once for 'RELATED DOCUMENT'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry[cda:act/cda:code/@code = '102.16971']">

            <report test="@typeCode and normalize-space(@typeCode) = ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'entry' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="
                @typeCode and normalize-space(@typeCode) != '' and @typeCode != 'COMP'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="count(cda:act) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']">

            <assert test="@classCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'ACT'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag 'classCode' attribute shall contain the value 'ACT'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@moodCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="cda:id"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'id' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:id) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'id' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="count(cda:code) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:reference[cda:externalDocument/cda:code/@code = '11526-1']"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'reference' tag is missing for ' Link Nature'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:reference[cda:externalDocument/cda:code/@code = '11526-1']) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'reference' tag shall appear only once for ' Link Nature'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@code = '103.16966']) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'entryRelationship' tag shall appear only once for ' Report Name (Document Title)'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:entryRelationship[cda:act/cda:code/@code = '103.16966']"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'entryRelationship' tag is missing for ' Report Name (Document Title)'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:entryRelationship[cda:observation/cda:code/@code = '103.20104']) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'entryRelationship' tag shall appear only once for ' Report Status (Document Status)'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:entryRelationship[cda:observation/cda:code/@code = '103.20104']"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'entryRelationship' tag is missing for ' Report Status (Document Status)'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="cda:effectiveTime"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'effectiveTime' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:effectiveTime) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:id">

            <report test="
                contains(@root, '-') and not(
                string-length(@root) = 36 and
                substring(@root,  9, 1) = '-' and substring(@root, 14, 1) = '-' and
                substring(@root, 19, 1) = '-' and substring(@root, 24, 1) = '-' and
                translate(substring(@root,  1,  8), '0123456789ABCDEFabcdef', '0000000000000000000000') = '00000000' and
                translate(substring(@root, 10,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 15,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 20,  4), '0123456789ABCDEFabcdef', '0000000000000000000000') = '0000' and
                translate(substring(@root, 25, 12), '0123456789ABCDEFabcdef', '0000000000000000000000') = '000000000000')"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act/cda:code[@code = '102.16971']">

            <assert test="@codeSystem"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@displayName"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Related Document'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'code' tag 'displayName' attribute shall contain the value 'Related Document'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(cda:translation)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT" -
                The 'translation' tag shall not be present.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference[cda:externalDocument/cda:code/@code = '11526-1']">

            <assert test="@typeCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'reference' tag 'typeCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'reference' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'XCRPT'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'reference' tag 'typeCode' attribute shall contain the value 'XCRPT'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="cda:seperatableInd"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'seperatableInd' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:seperatableInd) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'seperatableInd' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="count(cda:externalDocument) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'externalDocument' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference[cda:externalDocument/cda:code/@code = '11526-1']/cda:seperatableInd">

            <assert test="@value"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'seperatableInd' tag 'value' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'seperatableInd' tag 'value' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@value) or normalize-space(@value) = '' or @value = 'true'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Link Nature" -
                The 'seperatableInd' tag 'value' attribute shall contain the value 'true'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference/cda:externalDocument[cda:code/@code = '11526-1']">

            <report test="@classCode and normalize-space(@classCode) = ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'externalDocument' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="
                @classCode and normalize-space(@classCode) != '' and @classCode != 'DOC'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'externalDocument' tag 'classCode' attribute shall contain the value 'DOC'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="@moodCode and normalize-space(@moodCode) = ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'externalDocument' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="
                @moodCode and normalize-space(@moodCode) != '' and @moodCode != 'EVN'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'externalDocument' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:text"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:text) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="count(cda:code) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Document Type" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:id"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Identifier (Document Identifier)" -
                The 'id' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:id) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Identifier (Document Identifier)" -
                The 'id' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference/cda:externalDocument[cda:code/@code = '11526-1']/cda:text">

            <assert test="@mediaType"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag 'mediaType' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@mediaType) or normalize-space(@mediaType) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag 'mediaType' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@mediaType) or normalize-space(@mediaType) = '' or @mediaType = 'application/pdf'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag 'mediaType' attribute shall contain the value 'application/pdf'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@integrityCheck"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag 'integrityCheck' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@integrityCheck) or normalize-space(@integrityCheck) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag 'integrityCheck' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ED' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ED')"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ED'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="count(cda:reference) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'reference' tag shall appear only once.
                Refer to section M 17 of 3.3.3 Conformance points of  CDA Package Version 1.0 AND "023473 CDA document has a PDF packaged attachment" of the eHealth_Pathology_Report_My_Health_Record_Conformance_Profile_v1.1 and section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:reference"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'reference' tag is missing.
                Refer to section "023473 CDA document has a PDF packaged attachment" of the eHealth_Pathology_Report_My_Health_Record_Conformance_Profile_v1.1 and section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference/cda:externalDocument[cda:code/@code = '11526-1']/cda:text/cda:reference">

            <assert test="@value"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'reference' tag 'value' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / Test Result Representation (Document Target)" -
                The 'reference' tag 'value' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship[cda:act/cda:code/@code = '103.16966']">

            <assert test="@typeCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:act) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship/cda:act[cda:code/@code = '103.16966']">

            <assert test="@classCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'ACT'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag 'classCode' attribute shall contain the value 'ACT'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@moodCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:code) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:text"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'text' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:text) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'text' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'text' tag shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship/cda:act/cda:code[@code = '103.16966']">

            <assert test="@codeSystem"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@displayName"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Document Title'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'code' tag 'displayName' attribute shall contain the value 'Document Title'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(cda:translation)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'translation' tag shall not be present.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship/cda:act[cda:code/@code = '103.16966']/cda:text">

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Name (Document Title)" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship[cda:observation/cda:code/@code = '103.20104']">

            <assert test="@typeCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:observation) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship/cda:observation[cda:code/@code = '103.20104']">

            <assert test="@classCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@moodCode"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:code) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:value"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:value) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship/cda:observation/cda:code[@code = '103.20104']">

            <assert test="@codeSystem"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@displayName"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Document Status'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'code' tag 'displayName' attribute shall contain the value 'Document Status'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(cda:translation)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'translation' tag shall not be present.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:entryRelationship/cda:observation[cda:code/@code = '103.20104']/cda:value">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="@code"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'code' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'code' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test = "not(@code) or normalize-space(@code) = '' or 
                document('TEMPLATE/VALDN/CDAValidate_Vocabs.xml', .)/systems/system[@codeSystemName = 'HL7 : Result Status']/code[(@code = current()/@code)]"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'code' attribute shall be as per HL7 : Result Status.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@codeSystem"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@codeSystem) or normalize-space(@codeSystem) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'codeSystem' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '2.16.840.1.113883.12.123'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.12.123'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="@codeSystemName and normalize-space(@codeSystemName) = ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'codeSystemName' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="
                @codeSystemName and normalize-space(@codeSystemName) != '' and @codeSystemName != 'HL7 Result Status'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'codeSystemName' attribute shall contain the value 'HL7 Result Status'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="@displayName and normalize-space(@displayName) = ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'displayName' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <report test="@code and normalize-space(@code) != '' and
                @displayName and normalize-space(@displayName) != '' and
                not(document('TEMPLATE/VALDN/CDAValidate_Vocabs.xml', .)/systems/system [@codeSystemName = 'HL7 : Result Status']/code[
                    (@code = current()/@code) and (
                    translate(@displayName,  'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') =
                    translate(current()/@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'))])"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'value' tag 'code' and 'displayName' attributes shall match as per HL7 : Result Status.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

            <assert test="not(cda:translation)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Status (Document Status)" -
                The 'translation' tag shall not be present.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference/cda:externalDocument/cda:code[@code = '11526-1']">

            <assert test="@codeSystem"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Document Type" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '2.16.840.1.113883.6.1'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Document Type" -
                The 'code' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.6.1'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@displayName"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Document Type" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Pathology study'"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Document Type" -
                The 'code' tag 'displayName' attribute shall contain the value 'Pathology study'.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(cda:translation)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Document Type" -
                The 'translation' tag shall not be present.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:reference/cda:externalDocument[cda:code/@code = '11526-1']/cda:id">

            <assert test="not(@nullFlavor)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATEDDOCUMENT / DOCUMENT DETAILS / Report Identifier (Document Identifier)" -
                The 'id' tag 'nullFlavor' attribute shall not be present.
                Refer to "024692 - Pathology Report information which must be present and not null" of the eHealth_Pathology_Report_My_Health_Record_Conformance_Profile_v1.1 and section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:effectiveTime">

            <assert test="not(@nullFlavor)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall not be present.
                Refer to "024692 - Pathology Report information which must be present and not null" of the eHealth_Pathology_Report_My_Health_Record_Conformance_Profile_v1.1 and section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="cda:low"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'low' tag is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:low) > 1"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'low' tag shall appear only once.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20018']/cda:entry/cda:act[cda:code/@code = '102.16971']/cda:effectiveTime/cda:low">

            <assert test="@value"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'low' tag 'value' attribute is missing.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'low' tag 'value' attribute shall contain a value.
                Refer to section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(@nullFlavor)"
                >Error: Pathology Report - 7.1.1.3 RELATED DOCUMENT -
                "RELATED DOCUMENT / DOCUMENT DETAILS / Report DateTime (Effective Period)" -
                The 'low' tag 'nullFlavor' attribute shall not be present.
                Refer to "024692 - Pathology Report information which must be present and not null" of the eHealth_Pathology_Report_My_Health_Record_Conformance_Profile_v1.1 and section 7.1.1.3 of the
                Pathology_Report_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


    </pattern>

</schema>
