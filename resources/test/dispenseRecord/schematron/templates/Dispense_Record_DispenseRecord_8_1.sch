<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 30/09/2013 2:25:59 PM

                  Product            : Dispense Record
                  Release            : CDA_Implementation_Guide_v1.0
                  IG Guide Reference : 8.1
                  IG Guide Title     : Dispense Record
                  Generator Version  : 2.27
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Dispense_Record_DispenseRecord_8_1-errors"
        id="p-Dispense_Record_DispenseRecord_8_1-errors"
        see="#p-Dispense_Record_DispenseRecord_8_1-errors">


        <rule context="/">

            <assert test="cda:ClinicalDocument"
                >Error: Dispense Record - 8.1 Dispense Record -
                "Dispense Record" -
                The 'ClinicalDocument' tag is missing.
                Refer to section 8.1 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</assert>

            <report test="count(cda:ClinicalDocument) > 1"
                >Error: Dispense Record - 8.1 Dispense Record -
                "Dispense Record" -
                The 'ClinicalDocument' tag shall appear only once.
                Refer to section 8.1 of the
                Dispense_Record_CDA_Implementation_Guide_v0.4.</report>

        </rule>


    </pattern>

</schema>
