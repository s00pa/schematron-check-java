<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 12/02/2015 9:49:07 AM

                  Product            : Shared Health Summary
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.1.4.1
                  IG Guide Title     : Administered Immunisation (MEDICATION ACTION)
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Shared_Health_Summary_3A_AdministeredImmunisation_MEDICATIONACTION_7_1_4_1-errors"
        id="p-Shared_Health_Summary_3A_AdministeredImmunisation_MEDICATIONACTION_7_1_4_1-errors"
        see="#p-Shared_Health_Summary_3A_AdministeredImmunisation_MEDICATIONACTION_7_1_4_1-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry[cda:substanceAdministration/@classCode = 'SBADM']">

            <report test="count(cda:substanceAdministration) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION)" -
                The 'substanceAdministration' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']">

            <assert test="@moodCode"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION)" -
                The 'substanceAdministration' tag 'moodCode' attribute is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION)" -
                The 'substanceAdministration' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION)" -
                The 'substanceAdministration' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="cda:id"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Medication Action Instance Identifier" -
                The 'id' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:id) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Medication Action Instance Identifier" -
                The 'id' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

            <assert test="cda:consumable"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'consumable' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:consumable) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'consumable' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

            <report test="count(cda:entryRelationship[cda:supply/@classCode = 'SPLY']) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'entryRelationship' tag shall appear only once for ' Vaccine Sequence Number (Sequence Number)'.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

            <assert test="cda:effectiveTime"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation  (MEDICATION ACTION) / Medication Action DateTime" -
                The 'effectiveTime' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:effectiveTime) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation  (MEDICATION ACTION) / Medication Action DateTime" -
                The 'effectiveTime' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:id">

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
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Medication Action Instance Identifier" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable">

            <assert test="cda:manufacturedProduct"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'manufacturedProduct' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:manufacturedProduct) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'manufacturedProduct' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct">

            <assert test="cda:manufacturedMaterial"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'manufacturedMaterial' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:manufacturedMaterial) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'manufacturedMaterial' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial">

            <assert test="cda:code"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'code' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:code) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:consumable/cda:manufacturedProduct/cda:manufacturedMaterial/cda:code">

            <assert test="not(@nullFlavor)"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Therapeutic Good Identification" -
                The 'code' tag 'nullFlavor' attribute shall not be present.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:supply/@classCode = 'SPLY']">

            <assert test="@typeCode"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'entryRelationship' tag 'typeCode' attribute is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="not(@typeCode) or normalize-space(@typeCode) != ''"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain a value.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="
                not(@typeCode) or normalize-space(@typeCode) = '' or @typeCode = 'COMP'"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'entryRelationship' tag 'typeCode' attribute shall contain the value 'COMP'.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="cda:sequenceNumber"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'sequenceNumber' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:sequenceNumber) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'sequenceNumber' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

            <report test="count(cda:supply) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'supply' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship[cda:supply/@classCode = 'SPLY']/cda:sequenceNumber">

            <assert test="@value"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'sequenceNumber' tag 'value' attribute is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'sequenceNumber' tag 'value' attribute shall contain a value.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>


        <rule context="cda:supply[@classCode = 'SPLY']">

            <assert test="
                count(/cda:ClinicalDocument//cda:supply[@classCode = 'SPLY']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code='101.16638']/cda:entry/cda:substanceAdministration[@classCode='SBADM']/cda:entryRelationship/cda:supply[@classCode='SPLY'])"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.16638']/entry/substanceAdministration[@classCode = 'SBADM']/entryRelationship/supply[@classCode = 'SPLY']' path -
                1 or more tags are missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="@moodCode"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'supply' tag 'moodCode' attribute is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="not(@moodCode) or normalize-space(@moodCode) != ''"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'supply' tag 'moodCode' attribute shall contain a value.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="
                not(@moodCode) or normalize-space(@moodCode) = '' or @moodCode = 'EVN'"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'supply' tag 'moodCode' attribute shall contain the value 'EVN'.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="cda:independentInd"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'independentInd' tag is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <report test="count(cda:independentInd) > 1"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'independentInd' tag shall appear only once.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:entryRelationship/cda:supply[@classCode = 'SPLY']/cda:independentInd">

            <assert test="@value"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'independentInd' tag 'value' attribute is missing.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="not(@value) or normalize-space(@value) != ''"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'independentInd' tag 'value' attribute shall contain a value.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

            <assert test="
                not(@value) or normalize-space(@value) = '' or @value = 'false'"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation (MEDICATION ACTION) / Vaccine Sequence Number (Sequence Number)" -
                The 'independentInd' tag 'value' attribute shall contain the value 'false'.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.16638']/cda:entry/cda:substanceAdministration[@classCode = 'SBADM']/cda:effectiveTime">

            <assert test="not(@nullFlavor)"
                >Error: Shared Health Summary - 7.1.4.1 Administered Immunisation (MEDICATION ACTION) -
                "Administered Immunisation  (MEDICATION ACTION) / Medication Action DateTime" -
                The 'effectiveTime' tag 'nullFlavor' attribute shall not be present.
                Refer to section 7.1.4.1 of the
                Shared_Health_Summary_CDA_Implementation_Guide_v1.4.</assert>

        </rule>


    </pattern>

</schema>
