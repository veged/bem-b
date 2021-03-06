<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:d-xsl="bem-b:xsl:dynamic"
    xmlns:d2-xsl="bem-b:xsl:dynamic-2"
    xmlns:bb="bem-b"
    xmlns:tb="bem-b:template:block"
    xmlns:te="bem-b:template:elem"
    xmlns:tm="bem-b:template:mod"
    xmlns:mode="bem-b:template:mode"
    xmlns:str="http://exslt.org/strings"
    xmlns:exslt="http://exslt.org/common"
    exclude-result-prefixes="tb te tm d2-xsl d-xsl exslt str">

    <xsl:output
        encoding="UTF-8"
        method="xml"
        indent="yes"
    />

    <xsl:strip-space elements="*"/>
    <xsl:preserve-space elements="xsl:text"/>

    <xsl:template match="*">
        <xsl:copy>
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="d2-xsl:*" priority="10">
        <xsl:element name="{concat('xsl:', local-name())}">
            <xsl:copy-of select="@*"/>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
