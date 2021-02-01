<?xml version = "1.0" encoding = "UTF-8"?>
<!--
_________________________________________________________________________________________________________________________________________________________________________________________
                  Generated File - Do Not Edit File Directly                                                                                                                             
                  __________________________________________

                  Generated          : 14/04/2015 11:56:53 AM

                  Product            : Diagnostic Imaging Report
                  Release            : CDA_Implementation_Guide_v1.0
                  Generator Version  : 
                                                                                                                                                                                         
_________________________________________________________________________________________________________________________________________________________________________________________
-->

<schema xmlns="http://www.ascc.net/xml/schematron">
    <ns prefix = "cda" uri = "urn:hl7-org:v3"/>
    <ns prefix = "ext" uri = "http://ns.electronichealth.net.au/Ci/Cda/Extensions/3.0"/>
    <ns prefix = "xs" uri = "http://www.w3.org/2001/XMLSchema"/>
    <ns prefix = "xsi" uri = "http://www.w3.org/2001/XMLSchema-instance"/>

    <pattern name="p-Diagnostic_Imaging_Report_1B_CDA_Narrative-errors"
        id="p-Diagnostic_Imaging_Report_1B_CDA_Narrative-errors"
        see="#p-Diagnostic_Imaging_Report_1B_CDA_Narrative-errors">

       
        <rule context = "/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section">

            <report test = "cda:title and normalize-space(cda:title) = ''">Error: Diagnostic Imaging Report - 
                The 'title' tag shall contain a value. 
                Refer to "025054 - Requirements for title element" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test = "count(cda:title) > 1">Error: Diagnostic Imaging Report - 
                The 'title' tag shall appear only once. 
                Refer to "025054 - Requirements for title element" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0..</report>       
            
            <report test = "cda:text and (
                (cda:text/child::* and not(
                (name(cda:text/child::*) = 'content')          or (substring-after(name(cda:text/child::*), ':') = 'content')
                or (name(cda:text/child::*) = 'footnote')         or (substring-after(name(cda:text/child::*), ':') = 'footnote')
                or (name(cda:text/child::*) = 'footnoteRef')      or (substring-after(name(cda:text/child::*), ':') = 'footnoteRef')
                or (name(cda:text/child::*) = 'linkHtml')         or (substring-after(name(cda:text/child::*), ':') = 'linkHtml')
                or (name(cda:text/child::*) = 'list')             or (substring-after(name(cda:text/child::*), ':') = 'list')
                or (name(cda:text/child::*) = 'paragraph')        or (substring-after(name(cda:text/child::*), ':') = 'paragraph')
                or (name(cda:text/child::*) = 'renderMultiMedia') or (substring-after(name(cda:text/child::*), ':') = 'renderMultiMedia')
                or (name(cda:text/child::*) = 'sub')              or (substring-after(name(cda:text/child::*), ':') = 'sub')
                or (name(cda:text/child::*) = 'sup')              or (substring-after(name(cda:text/child::*), ':') = 'sup')
                or (name(cda:text/child::*) = 'table')            or (substring-after(name(cda:text/child::*), ':') = 'table')
                )
                ) or (not(cda:text/child::*) and normalize-space(cda:text) = ''))"
                >Error: Diagnostic Imaging Report - 
                The 'text' tag shall contain a value for narrative content. 
                Refer to the "Appendix CDA Narratives" of the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test = "count(cda:text) > 1">Error: Diagnostic Imaging Report - 
                The 'text' tag shall appear only once. 
                Refer to the "Appendix CDA Narratives" of the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
        </rule>
 
 

        <rule context = "/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:component/cda:section">
            
            <report test = "cda:title and normalize-space(cda:title) = ''">Error: Diagnostic Imaging Report - 
                The 'title' tag shall contain a value. 
                Refer to "025054 - Requirements for title element" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test = "count(cda:title) > 1">Error: Diagnostic Imaging Report - 
                The 'title' tag shall appear only once. 
                Refer to "025054 - Requirements for title element" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0..</report>            
                   
            <report test = "cda:text and (
                (cda:text/child::* and not(
                (name(cda:text/child::*) = 'content')          or (substring-after(name(cda:text/child::*), ':') = 'content')
                or (name(cda:text/child::*) = 'footnote')         or (substring-after(name(cda:text/child::*), ':') = 'footnote')
                or (name(cda:text/child::*) = 'footnoteRef')      or (substring-after(name(cda:text/child::*), ':') = 'footnoteRef')
                or (name(cda:text/child::*) = 'linkHtml')         or (substring-after(name(cda:text/child::*), ':') = 'linkHtml')
                or (name(cda:text/child::*) = 'list')             or (substring-after(name(cda:text/child::*), ':') = 'list')
                or (name(cda:text/child::*) = 'paragraph')        or (substring-after(name(cda:text/child::*), ':') = 'paragraph')
                or (name(cda:text/child::*) = 'renderMultiMedia') or (substring-after(name(cda:text/child::*), ':') = 'renderMultiMedia')
                or (name(cda:text/child::*) = 'sub')              or (substring-after(name(cda:text/child::*), ':') = 'sub')
                or (name(cda:text/child::*) = 'sup')              or (substring-after(name(cda:text/child::*), ':') = 'sup')
                or (name(cda:text/child::*) = 'table')            or (substring-after(name(cda:text/child::*), ':') = 'table')
                )
                ) or (not(cda:text/child::*) and normalize-space(cda:text) = ''))"
                >Error: Diagnostic Imaging Report - 
                The 'text' tag shall contain a value for narrative content. 
                Refer to the "Appendix CDA Narratives" of the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test = "count(cda:text) > 1">Error: Diagnostic Imaging Report - 
                The 'text' tag shall appear only once. 
                Refer to the "Appendix CDA Narratives" of the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
        </rule>



        <rule context = "/cda:ClinicalDocument/cda:component/cda:structuredBody/cda:component/cda:section/cda:component/cda:section/cda:component/cda:section">
            
            <report test = "cda:title and normalize-space(cda:title) = ''">Error: Diagnostic Imaging Report - 
                The 'title' tag shall contain a value. 
                Refer to "025054 - Requirements for title element" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test = "count(cda:title) > 1">Error: Diagnostic Imaging Report - 
                The 'title' tag shall appear only once. 
                Refer to "025054 - Requirements for title element" of the
                Clinical_Documents_Common_Conformance_Profile_v1.6 and the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0..</report>            
            
            <report test = "cda:text and (
                (cda:text/child::* and not(
                (name(cda:text/child::*) = 'content')          or (substring-after(name(cda:text/child::*), ':') = 'content')
                or (name(cda:text/child::*) = 'footnote')         or (substring-after(name(cda:text/child::*), ':') = 'footnote')
                or (name(cda:text/child::*) = 'footnoteRef')      or (substring-after(name(cda:text/child::*), ':') = 'footnoteRef')
                or (name(cda:text/child::*) = 'linkHtml')         or (substring-after(name(cda:text/child::*), ':') = 'linkHtml')
                or (name(cda:text/child::*) = 'list')             or (substring-after(name(cda:text/child::*), ':') = 'list')
                or (name(cda:text/child::*) = 'paragraph')        or (substring-after(name(cda:text/child::*), ':') = 'paragraph')
                or (name(cda:text/child::*) = 'renderMultiMedia') or (substring-after(name(cda:text/child::*), ':') = 'renderMultiMedia')
                or (name(cda:text/child::*) = 'sub')              or (substring-after(name(cda:text/child::*), ':') = 'sub')
                or (name(cda:text/child::*) = 'sup')              or (substring-after(name(cda:text/child::*), ':') = 'sup')
                or (name(cda:text/child::*) = 'table')            or (substring-after(name(cda:text/child::*), ':') = 'table')
                )
                ) or (not(cda:text/child::*) and normalize-space(cda:text) = ''))"
                >Error: Diagnostic Imaging Report - 
                The 'text' tag shall contain a value for narrative content. 
                Refer to the "Appendix CDA Narratives" of the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
            <report test = "count(cda:text) > 1">Error: Diagnostic Imaging Report - 
                The 'text' tag shall appear only once. 
                Refer to the "Appendix CDA Narratives" of the Diagnostic_Imaging_Report_CDA_Implementation_Guide_v1.0.</report>
            
        </rule>

    </pattern>

</schema>
