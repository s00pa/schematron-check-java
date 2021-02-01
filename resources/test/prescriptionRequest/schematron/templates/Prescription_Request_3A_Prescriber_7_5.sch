<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 10-10-2013 10:43:30

                  Product            : Prescription Request
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 7.5
                  IG Guide Title     : Prescriber
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Prescription_Request_3A_Prescriber_7_5-errors"
        id="p-Prescription_Request_3A_Prescriber_7_5-errors"
        see="#p-Prescription_Request_3A_Prescriber_7_5-errors">


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']">

            <assert test="cda:author"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber" -
                The 'author' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:author) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber" -
                The 'author' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author">

            <assert test="cda:time"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber/Time" -
                The 'time' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:time) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber/Time" -
                The 'time' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <assert test="cda:assignedAuthor"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'assignedAuthor' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:assignedAuthor) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'assignedAuthor' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author/cda:assignedAuthor">

            <assert test="cda:code"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'code' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:code) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'code' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <assert test="cda:id"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'id' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:id) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'id' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <assert test="cda:assignedPerson"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant" -
                The 'assignedPerson' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:assignedPerson) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant" -
                The 'assignedPerson' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="count(cda:addr) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Address" -
                The 'addr' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author/cda:assignedAuthor/cda:id">

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
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Role" -
                The 'id' tag 'root' attribute shall be a valid UUID.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author/cda:assignedAuthor/cda:assignedPerson">

            <assert test="ext:asEntityIdentifier"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Entity Identifier" -
                The 'asEntityIdentifier' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(ext:asEntityIdentifier) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Entity Identifier" -
                The 'asEntityIdentifier' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <assert test="not(ext:asEntityIdentifier) or ext:asEntityIdentifier/ext:id[starts-with(@root, '1.2.36.1.2001.1003.0.800361')]"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Entity Identifier" -
                The 'asEntityIdentifier' tag for 'HPI-I' is missing.
                "The value of one Entity Identifier SHALL be an Australian HPI-I." although there could be multiple Entity Identifiers.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="cda:name"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Person Name" -
                The 'name' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:name) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Person Name" -
                The 'name' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="count(ext:asEmployment) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Employment Detail / Occupation" -
                The 'asEmployment' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

            <report test="count(ext:asQualifications) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author/cda:assignedAuthor/cda:assignedPerson/ext:asEmployment">

            <report test="count(ext:jobCode) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Person or Organization or Device / Person / Employment Detail / Occupation" -
                The 'jobCode' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author/cda:assignedAuthor/cda:assignedPerson/ext:asQualifications">

            <assert test="@classCode"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag 'classCode' attribute is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="not(@classCode) or normalize-space(@classCode) != ''"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag 'classCode' attribute shall contain a value.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="
                not(@classCode) or normalize-space(@classCode) = '' or @classCode = 'QUAL'"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'asQualifications' tag 'classCode' attribute shall contain the value 'QUAL'.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <assert test="ext:code"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'code' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(ext:code) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'code' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


        <rule context="/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section[cda:code/@code = '102.16290']/cda:author/cda:assignedAuthor/cda:assignedPerson/ext:asQualifications/ext:code">

            <assert test="cda:originalText"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'originalText' tag is missing.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</assert>

            <report test="count(cda:originalText) > 1"
                >Error: Prescription Request - 7.5 Prescriber -
                "Prescriber / Participant / Qualifications" -
                The 'originalText' tag shall appear only once.
                Refer to section 7.5 of the
                Prescription_Request_CDA_Implementation_Guide_v0.5.</report>

        </rule>


    </pattern>

</schema>
