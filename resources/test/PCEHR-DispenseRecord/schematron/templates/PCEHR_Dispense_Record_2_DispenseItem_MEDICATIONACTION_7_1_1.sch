<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 28/01/2015 2:42:15 PM

                  Product            : PCEHR Dispense Record
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.1.1
                  IG Guide Title     : Dispense Item (MEDICATION ACTION)
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-PCEHR_Dispense_Record_2_DispenseItem_MEDICATIONACTION_7_1_1-errors"
        id="p-PCEHR_Dispense_Record_2_DispenseItem_MEDICATIONACTION_7_1_1-errors"
        see="#p-PCEHR_Dispense_Record_2_DispenseItem_MEDICATIONACTION_7_1_1-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody">

            <assert test="cda:component[cda:section/cda:code/@code = '102.16210']"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'component' tag is missing for 'Dispense Item'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:component[cda:section/cda:code/@code = '102.16210']) > 1"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'component' tag shall appear only once for 'Dispense Item'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component[cda:section/cda:code/@code = '102.16210']">

            <report test="count(cda:section) > 1"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'section' tag shall appear only once.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16210']">

            <report test="count(cda:code) > 1"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag shall appear only once.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</report>

            <assert test="not(cda:title) or normalize-space(cda:title) != ''"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'title' tag shall contain a value.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(cda:title) or normalize-space(cda:title) = '' or
                translate(cda:title, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = 'DISPENSE ITEM'"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'title' tag shall contain the value 'Dispense Item'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="cda:title"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'title' tag is missing.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:title) > 1"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'title' tag shall appear only once.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</report>

            <assert test="cda:text"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'text' tag is missing.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <report test="count(cda:text) > 1"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'text' tag shall appear only once.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</report>

            <assert test="not(cda:text) or normalize-space(cda:text) != ''"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'text' tag shall contain a value.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


        <rule context="cda:code[@code = '102.16210']">

            <assert test="
                count(/cda:ClinicalDocument//cda:code[@code = '102.16210']) =
                count(/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:code[@code = '102.16210'])"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The '/ClinicalDocument/component/structuredBody/component/section/code[@code = '102.16210']' path -
                1 or more tags are missing.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@codeSystem"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag 'codeSystem' attribute is missing.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystem) or normalize-space(@codeSystem) = '' or @codeSystem = '1.2.36.1.2001.1001.101'"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag 'codeSystem' attribute shall contain the value '1.2.36.1.2001.1001.101'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@codeSystemName"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag 'codeSystemName' attribute is missing.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@codeSystemName) or normalize-space(@codeSystemName) = '' or translate(@codeSystemName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = &quot;NCTIS DATA COMPONENTS&quot;"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag 'codeSystemName' attribute shall contain the value 'NCTIS Data Components'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="@displayName"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag 'displayName' attribute is missing.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="
                not(@displayName) or normalize-space(@displayName) = '' or translate(@displayName, 'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ') = &quot;DISPENSE ITEM&quot;"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'code' tag 'displayName' attribute shall contain the value 'Dispense Item'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

            <assert test="not(cda:translation)"
                >Error: PCEHR Dispense Record - 7.1.1 Dispense Item (MEDICATION ACTION) -
                "Dispense Item" -
                The 'translation' tag shall not be present within 'code'.
                Refer to section 7.1.1 of the
                PCEHR_Dispense_Record_CDA_Implementation_Guide_v1.0.</assert>

        </rule>


    </pattern>

</schema>
