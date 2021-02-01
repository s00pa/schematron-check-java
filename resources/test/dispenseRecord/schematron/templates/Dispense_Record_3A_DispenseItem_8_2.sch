<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 24/10/2013 10:44:28 AM

                  Product            : Dispense Record
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 8.2
                  IG Guide Title     : Dispense Item
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Dispense_Record_3A_DispenseItem_8_2-errors"
        id="p-Dispense_Record_3A_DispenseItem_8_2-errors"
        see="#p-Dispense_Record_3A_DispenseItem_8_2-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']">

            <assert test="cda:entry[cda:substanceAdministration/@classCode = 'SBADM']"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'entry' tag is missing for ' entry'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:entry[cda:substanceAdministration/@classCode = 'SBADM']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'entry' tag shall appear only once for ' entry'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry[cda:substanceAdministration/@classCode = 'SBADM']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'entry' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'entry' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'DRIV'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'entry' tag 'typeCode' attribute shall contain the value 'DRIV'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:substanceAdministration) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'substanceAdministration' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']">

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'substanceAdministration' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'substanceAdministration' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'RQO'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'substanceAdministration' tag 'moodCode' attribute shall contain the value 'RQO'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="cda:statusCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'statusCode' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:statusCode) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'statusCode' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:entryRelationship[cda:supply/@classCode = 'SPLY']"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'entryRelationship' tag is missing for ' Dispense Item Identifier'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:entryRelationship[cda:supply/@classCode = 'SPLY']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'entryRelationship' tag shall appear only once for ' Dispense Item Identifier'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Prescription Item Identifier" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Prescription Item Identifier" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:consumable"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'consumable' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:consumable) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'consumable' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@code = '103.16272']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'entryRelationship' tag shall appear only once for ' Formula'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:repeatNumber"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Maximum Number of Repeats" -
                The 'repeatNumber' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:repeatNumber) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Maximum Number of Repeats" -
                The 'repeatNumber' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@code = '103.16044']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'entryRelationship' tag shall appear only once for ' Additional Comments'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:entryRelationship[cda:act/cda:code/@codeSystem = '1.2.36.1.5001.1.1.3.2.5']"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'entryRelationship' tag is missing for ' Patient Category'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@codeSystem = '1.2.36.1.5001.1.1.3.2.5']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'entryRelationship' tag shall appear only once for ' Patient Category'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@codeSystem = '1.2.36.1.2001.1005.44']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'entryRelationship' tag shall appear only once for ' RACF Id'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:statusCode">

            <assert test="@code"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'statusCode' tag 'code' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / entry" -
                The 'statusCode' tag 'code' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:supply/@classCode = 'SPLY']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:supply) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'supply' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:sequenceNumber"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Number of this Dispense" -
                The 'sequenceNumber' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:sequenceNumber) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Number of this Dispense" -
                The 'sequenceNumber' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']">

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'supply' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'supply' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'RQO'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'supply' tag 'moodCode' attribute shall contain the value 'RQO'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="cda:independentInd"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'independentInd' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:independentInd) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'independentInd' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:effectiveTime"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / DateTime of Dispense Event" -
                The 'effectiveTime' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:effectiveTime) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / DateTime of Dispense Event" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@code = '103.16109']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'entryRelationship' tag shall appear only once for ' Label Instruction'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:quantity) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity " -
                The 'quantity' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:product) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'product' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:entryRelationship[cda:act/cda:code/@code = '246205007']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'entryRelationship' tag shall appear only once for ' Quantity Description'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:entryRelationship[cda:observation/cda:code/@code = '103.16064']"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'entryRelationship' tag is missing for ' Brand Substitution Occurred'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:entryRelationship[cda:observation/cda:code/@code = '103.16064']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'entryRelationship' tag shall appear only once for ' Brand Substitution Occurred'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(ext:coverage[ext:policyOrAccount/ext:code/@code = '103.16095.3']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'coverage' tag shall appear only once for ' PBS Close the Gap Benefit'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(ext:coverage[ext:policyOrAccount/ext:code/@code = '103.16348']) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'coverage' tag shall appear only once for ' Early Supply With Pharmaceutical Benefit'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:independentInd">

            <assert test="@value"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'independentInd' tag 'value' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'independentInd' tag 'value' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@value) or normalize-space(@value) = '' or @value = 'false'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Dispense Item Identifier" -
                The 'independentInd' tag 'value' attribute shall contain the value 'false'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable">

            <assert test="cda:manufacturedProduct"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'manufacturedProduct' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:manufacturedProduct) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'manufacturedProduct' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct">

            <assert test="cda:manufacturedMaterial"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'manufacturedMaterial' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:manufacturedMaterial) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'manufacturedMaterial' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">

            <assert test="cda:code"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'code' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Therapeutic Good Identification" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code">

            <report test="count(cda:translation) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS/RPBS Item Code" -
                The 'translation' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:act/cda:code/@code = '103.16272']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:act) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@code = '103.16272']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'RQO'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'act' tag 'moodCode' attribute shall contain the value 'RQO'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="cda:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:text"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'text' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:text) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'text' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'text' tag shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@code = '103.16272']/cda:id">

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
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '103.16272']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16272']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:act/cda:code[@code='103.16272'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/act/code[@code = '103.16272']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Formula'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'code' tag 'displayName' attribute shall contain the value 'Formula'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@code = '103.16272']/cda:text">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'text' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Formula" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship[cda:act/cda:code/@code = '103.16109']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:act) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship/cda:act[cda:code/@code = '103.16109']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:text"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'text' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:text) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'text' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'text' tag shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="cda:code[@code = '103.16109']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16109']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:supply[@classCode='SPLY']/cda:entryRelationship/cda:act/cda:code[@code='103.16109'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/supply[@classCode = 'SPLY']/entryRelationship/act/code[@code = '103.16109']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Label Instruction'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'code' tag 'displayName' attribute shall contain the value 'Label Instruction'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship/cda:act[cda:code/@code = '103.16109']/cda:text">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'text' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Label Instruction" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:quantity">

            <assert test="@value"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity " -
                The 'quantity' tag 'value' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity " -
                The 'quantity' tag 'value' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="@unit and normalize-space(@unit) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity " -
                The 'quantity' tag 'unit' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:product">

            <assert test="cda:manufacturedProduct"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'manufacturedProduct' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:manufacturedProduct) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'manufacturedProduct' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:product/cda:manufacturedProduct">

            <assert test="cda:manufacturedMaterial"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'manufacturedMaterial' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:manufacturedMaterial) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'manufacturedMaterial' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:manufacturerOrganization) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS/RPBS Manufacturer Code" -
                The 'manufacturerOrganization' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:product/cda:manufacturedProduct/cda:manufacturedMaterial">

            <report test="count(ext:formCode) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'formCode' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:product/cda:manufacturedProduct/cda:manufacturedMaterial/ext:formCode">

            <report test="
                @codeSystem and normalize-space(@codeSystem) != '' and @codeSystem != '2.16.840.1.113883.6.96'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'formCode' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.6.96'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @codeSystemName and normalize-space(@codeSystemName) != '' and @codeSystemName != 'SNOMED CT-AU'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Dispensing Unit" -
                The 'formCode' tag 'codeSystemName' attribute shall contain the value 'SNOMED CT-AU'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship[cda:act/cda:code/@code = '246205007']">

            <report test="count(cda:act) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship/cda:act[cda:code/@code = '246205007']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'ACT'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag 'classCode' attribute shall contain the value 'ACT'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:text"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'text' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:text) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'text' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'text' tag shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="cda:code[@code = '246205007']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '246205007']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:supply[@classCode='SPLY']/cda:entryRelationship/cda:act/cda:code[@code='246205007'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/supply[@classCode = 'SPLY']/entryRelationship/act/code[@code = '246205007']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '2.16.840.1.113883.6.96'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag 'codeSystem' attribute shall contain the value '2.16.840.1.113883.6.96'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'SNOMED CT'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'SNOMED CT'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Quantity'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'code' tag 'displayName' attribute shall contain the value 'Quantity'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Quantity Dispensed / Quantity Description" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship[cda:observation/cda:code/@code = '103.16064']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:observation) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship/cda:observation[cda:code/@code = '103.16064']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'OBS'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag 'classCode' attribute shall contain the value 'OBS'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'observation' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:value"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'value' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:value) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'value' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship/cda:observation/cda:code[@code = '103.16064']">

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Brand Substitution Occurred'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'code' tag 'displayName' attribute shall contain the value 'Brand Substitution Occurred'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:entryRelationship/cda:observation[cda:code/@code = '103.16064']/cda:value">

            <assert test="@xsi:type"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'value' tag 'xsi:type' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@xsi:type) or normalize-space(@xsi:type) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'value' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@xsi:type) or normalize-space(@xsi:type) = '' or 
                normalize-space(@xsi:type) = 'BL' or
                (substring-before(normalize-space(@xsi:type), ':') != '' and
                substring-after(normalize-space(@xsi:type), ':') = 'BL')"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Brand Substitution Occurred" -
                The 'value' tag 'xsi:type' attribute shall contain the value 'BL'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:repeatNumber">

            <assert test="cda:high"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Maximum Number of Repeats" -
                The 'high' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:high) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Maximum Number of Repeats" -
                The 'high' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:repeatNumber/cda:high">

            <assert test="@value"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Maximum Number of Repeats" -
                The 'high' tag 'value' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Maximum Number of Repeats" -
                The 'high' tag 'value' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:supply/@classCode = 'SPLY']/cda:sequenceNumber">

            <report test="@value and normalize-space(@value) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Number of this Dispense" -
                The 'sequenceNumber' tag 'value' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage[ext:policyOrAccount/ext:code/@code = '103.16095.3']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'coverage' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'coverage' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COVBY'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'coverage' tag 'typeCode' attribute shall contain the value 'COVBY'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:policyOrAccount) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage/ext:policyOrAccount[ext:code/@code = '103.16095.3']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'COV'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag 'classCode' attribute shall contain the value 'COV'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'PERM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'policyOrAccount' tag 'moodCode' attribute shall contain the value 'PERM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="ext:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="ext:code[@code = '103.16095.3']">

            <assert test="
                count(/cda:ClinicalDocument//ext:code[@code = '103.16095.3']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:supply[@classCode='SPLY']/ext:coverage/ext:policyOrAccount/ext:code[@code='103.16095.3'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/supply[@classCode = 'SPLY']/coverage/policyOrAccount/code[@code = '103.16095.3']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'PBS Close the Gap Benefit'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'code' tag 'displayName' attribute shall contain the value 'PBS Close the Gap Benefit'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / PBS Close the Gap Benefit" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:product/cda:manufacturedProduct/cda:manufacturerOrganization">

            <assert test="cda:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS/RPBS Manufacturer Code" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS/RPBS Manufacturer Code" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/ext:asIngredient">

            <assert test="ext:ingredientManufacturedMaterial"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT" -
                The 'ingredientManufacturedMaterial' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:ingredientManufacturedMaterial) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT" -
                The 'ingredientManufacturedMaterial' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/ext:asIngredient/ext:ingredientManufacturedMaterial">

            <assert test="ext:code"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Name " -
                The 'code' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Name " -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="ext:quantity"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Quantity " -
                The 'quantity' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:quantity) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Quantity " -
                The 'quantity' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/ext:asIngredient/ext:ingredientManufacturedMaterial/ext:quantity">

            <assert test="cda:numerator"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Quantity " -
                The 'numerator' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:numerator) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Quantity " -
                The 'numerator' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/ext:asIngredient/ext:ingredientManufacturedMaterial/ext:quantity/cda:numerator">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Quantity " -
                The 'numerator' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'PQ' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'PQ')"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Prescription Item / PBS EXTEMPORANEOUS PREPARATION DESCRIPTION / PBS EXTEMPORANEOUS INGREDIENT / PBS Extemporaneous Ingredient Quantity " -
                The 'numerator' tag 'xsi:type' attribute shall contain the value 'PQ'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage[ext:policyOrAccount/ext:code/@codeSystem = '1.2.36.1.2001.1001.101.104.16060']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'coverage' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'coverage' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COVBY'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'coverage' tag 'typeCode' attribute shall contain the value 'COVBY'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:policyOrAccount) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage/ext:policyOrAccount[ext:code/@codeSystem = '1.2.36.1.2001.1001.101.104.16060']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'COV'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag 'classCode' attribute shall contain the value 'COV'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'PERM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'policyOrAccount' tag 'moodCode' attribute shall contain the value 'PERM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage/ext:policyOrAccount/ext:code[@codeSystem = '1.2.36.1.2001.1001.101.104.16060']">

            <assert test="@code"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag 'code' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag 'code' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@codeSystemName) or normalize-space(@codeSystemName) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag 'codeSystemName' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@displayName) or normalize-space(@displayName) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Claim Category Type" -
                The 'code' tag 'displayName' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage[ext:policyOrAccount/ext:code/@code = '103.16348']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'coverage' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'coverage' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COVBY'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'coverage' tag 'typeCode' attribute shall contain the value 'COVBY'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:policyOrAccount) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage/ext:policyOrAccount[ext:code/@code = '103.16348']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'COV'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag 'classCode' attribute shall contain the value 'COV'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'PERM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'policyOrAccount' tag 'moodCode' attribute shall contain the value 'PERM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="ext:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(ext:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(ext:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/ext:coverage/ext:policyOrAccount[ext:code/@code = '103.16348']/ext:id">

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
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="ext:code[@code = '103.16348']">

            <assert test="
                count(/cda:ClinicalDocument//ext:code[@code = '103.16348']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:supply[@classCode='SPLY']/ext:coverage/ext:policyOrAccount/ext:code[@code = '103.16348'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/supply[@classCode = 'SPLY']/coverage/policyOrAccount/code[@code = '103.16348']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Early Supply With Pharmaceutical Benefit'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'code' tag 'displayName' attribute shall contain the value 'Early Supply With Pharmaceutical Benefit'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Early Supply With Pharmaceutical Benefit" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:act/cda:code/@code = '103.16044']">

            <assert test="@typeCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:act) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@code = '103.16044']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'act' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="cda:id"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'id' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'id' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:text"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'text' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:text) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'text' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'text' tag shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@code = '103.16044']/cda:id">

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
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@code = '103.16044']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '103.16044']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:act/cda:code[@code = '103.16044'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/act/code[@code = '103.16044']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystem"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'NCTIS Data Components'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Additional Comments'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'code' tag 'displayName' attribute shall contain the value 'Additional Comments'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@code = '103.16044']/cda:text">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'text' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Additional Comments" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:act/cda:code/@codeSystem = '1.2.36.1.5001.1.1.3.2.5']">

            <report test="count(cda:act) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@codeSystem = '1.2.36.1.5001.1.1.3.2.5']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'RQO'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'act' tag 'moodCode' attribute shall contain the value 'RQO'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="cda:text"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'text' tag is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:text) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'text' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'text' tag shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act/cda:code[@codeSystem = '1.2.36.1.5001.1.1.3.2.5']">

            <assert test="@code"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'code' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'code' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@codeSystemName) or normalize-space(@codeSystemName) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'codeSystemName' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'Patient Category'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'Patient Category'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@displayName) or normalize-space(@displayName) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'code' tag 'displayName' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@codeSystem = '1.2.36.1.5001.1.1.3.2.5']/cda:text">

            <report test="@xsi:type and normalize-space(@xsi:type) = ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'text' tag 'xsi:type' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

            <report test="
                @xsi:type and normalize-space(@xsi:type) != '' and 
                normalize-space(@xsi:type) != 'ST' and
                not(substring-before(normalize-space(@xsi:type), ':') != '' and
                    substring-after(normalize-space(@xsi:type), ':') = 'ST')"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / Patient Category" -
                The 'text' tag 'xsi:type' attribute shall contain the value 'ST'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:act/cda:code/@codeSystem = '1.2.36.1.2001.1005.44']">

            <report test="count(cda:act) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16211']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:act[cda:code/@codeSystem = '1.2.36.1.2001.1005.44']">

            <assert test="@classCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag 'classCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag 'classCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'INFRM'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag 'classCode' attribute shall contain the value 'INFRM'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@moodCode"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag 'moodCode' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag 'moodCode' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'RQO'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'act' tag 'moodCode' attribute shall contain the value 'RQO'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag shall appear only once.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


        <rule context="cda:code[@codeSystem = '1.2.36.1.2001.1005.44']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@codeSystem = '1.2.36.1.2001.1005.44']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='102.16211']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:act/cda:code[@codeSystem = '1.2.36.1.2001.1005.44'])"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '102.16211']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/act/code[@codeSystem = '1.2.36.1.2001.1005.44']' path -
                1 or more tags are missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@code"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'code' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@code) or normalize-space(@code) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'code' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@codeSystemName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@codeSystemName) or normalize-space(@codeSystemName) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'codeSystemName' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or @codeSystemName = 'RACF Id'"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'RACF Id'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="@displayName"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(@displayName) or normalize-space(@displayName) != ''"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'code' tag 'displayName' attribute shall contain a value.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <assert test="not(cda:translation)"
                >Error: Dispense Record - 8.2 Dispense Item -
                "Dispense Item / RACF Id" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 8.2 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

        </rule>


    </pattern>

</schema>
