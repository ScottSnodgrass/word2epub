<?xml version="1.0" encoding="utf-8"?>

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


    <xsl:template match="w:p|w:r"
                  mode="add_class">
        <xsl:if test="w:pPr/w:pStyle">
            <xsl:attribute name="class">
                <xsl:value-of select="w:pPr/w:pStyle/@w:val" />
            </xsl:attribute>
        </xsl:if>
    </xsl:template>


    <xsl:template match="w:p">
        <xsl:element name="p">
            <xsl:apply-templates select="."
                                 mode="add_class" />
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>


    <xsl:template match="w:r">
        <xsl:choose>
            <xsl:when test="w:pPr/w:pStyle">
                <xsl:element name="span">
                    <xsl:apply-templates select="."
                                         mode="add_class" />
                    <xsl:apply-templates />
                </xsl:element>
            </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>
