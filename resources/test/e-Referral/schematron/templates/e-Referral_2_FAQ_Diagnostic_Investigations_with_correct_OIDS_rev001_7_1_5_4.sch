<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 2/06/2015 1:39:49 PM

                  Product            : e-Referral
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.1.5.4
                  IG Guide Title     : FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001
                  Generator Version  : 2.28
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-e-Referral_2_FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001_7_1_5_4-errors"
        id="p-e-Referral_2_FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001_7_1_5_4-errors"
        see="#p-e-Referral_2_FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001_7_1_5_4-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20117']/cda:component[cda:section/cda:code/@code = '102.16029']">

            <report test="count(cda:section) > 1"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'section' tag shall appear only once.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20117']/cda:component/cda:section[cda:code/@code = '102.16029']">

            <report test="count(cda:code) > 1"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <report test="count(cda:id) > 1"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'id' tag shall appear only once.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="cda:title"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'title' tag is missing.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:title) > 1"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'title' tag shall appear only once.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

            <assert test="
                not(cda:title) or normalize-space(cda:title) = '' or
                cda:title = 'Diagnostic Investigation'"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'title' tag shall contain the value 'Diagnostic Investigation'.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <report test="count(cda:text) > 1"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'text' tag shall appear only once.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</report>

        </rule>


        <rule context="cda:code[@code = '102.16029']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '102.16029']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '101.20117']/cda:component/cda:section/cda:code[@code = '102.16029'])"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The '/ClinicalDocument/component/structuredBody/component/section[code/@code = '101.20117']/component/section/code[@code = '102.16029']' path -
                1 or more tags are missing.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@codeSystem"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="@displayName"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or @displayName = 'Diagnostic Investigation'"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'code' tag 'displayName' attribute shall contain the value 'Diagnostic Investigation'.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>

            <assert test="not(cda:translation)"
                >Error: e-Referral - 7.1.5.4 FAQ_Diagnostic_Investigations_with_correct_OIDS_rev001 -
                "Undifferentiated Pathology and Radiology Results" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.1.5.4 of the
                e-Referral_CDA_Implementation_Guide_v2.2.</assert>
        </rule>


    </pattern>

</schema>
