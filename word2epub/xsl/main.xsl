<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE xsl:stylesheet [
  <!ENTITY nbsp "&#160;">
]>

<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
     xmlns:aml="http://schemas.microsoft.com/aml/2001/core"
     xmlns:m="http://schemas.openxmlformats.org/officeDocument/2006/math"
     xmlns:mml="http://www.w3.org/1998/Math/MathML"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
     xmlns:v="urn:schemas-microsoft-com:vml"
     xmlns:ve="http://schemas.openxmlformats.org/markup-compatibility/2006"
     xmlns:w10="urn:schemas-microsoft-com:office:word"
     xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
     xmlns:wne="http://schemas.microsoft.com/office/word/2006/wordml"
     xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/"
     xmlns:WX="http://schemas.microsoft.com/office/word/2003/auxHint"
     version="1.0">

    <xsl:output method="xml"
                encoding="utf-8"
                omit-xml-declaration="yes"
                indent="yes" />


    <!--
        TODO: Add more description here.
        Controls how styles are declared.
    -->
    <xsl:param name="generate_inline_styles">0</xsl:param>


    <xsl:include href="paragraphs-and-runs.xsl" />


    <xsl:template match="/">
        <xsl:element name="docxroot">
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
