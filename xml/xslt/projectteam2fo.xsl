<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" exclude-result-prefixes="fo">
<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
<xsl:param name="versionParam" select="'1.0'"/>
<xsl:template match="projectteam">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master master-name="simpleA4" page-height="29.7cm" page-width="21cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
<fo:region-body/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-reference="simpleA4">
<fo:flow flow-name="xsl-region-body">
<fo:block font-size="10pt"   border-bottom-width="1pt" border-bottom-style="solid" text-align="right">
Project:
<xsl:value-of select="projectname"/>
</fo:block>
<fo:block font-size="12pt"  text-align="right">
Date
<xsl:value-of select="date"/>
</fo:block>
<fo:block font-size="12pt" >
PN:
<xsl:value-of select="prod"/>
</fo:block>
          
<fo:block font-size="6pt">
<fo:table  border="solid 1px black">
<fo:table-column column-width="3cm"/>
<fo:table-column column-width="3cm"/>
<fo:table-column column-width="4cm"/>
<fo:table-column column-width="3cm"/>
<fo:table-column column-width="3cm"/>
<fo:table-header>
<fo:table-cell>
    <fo:block border="solid 1px black"  font-weight="bold" text-align="center">QTY</fo:block>
  </fo:table-cell>
  <fo:table-cell>
    <fo:block border="solid 1px black"  font-weight="bold" text-align="center">BIN</fo:block>
  </fo:table-cell>
  <fo:table-cell>
    <fo:block border="solid 1px black" font-weight="bold" text-align="center">LOCATION</fo:block>
  </fo:table-cell>
  <fo:table-cell>
    <fo:block border="solid 1px black" font-weight="bold" text-align="center">Scan Code</fo:block>
  </fo:table-cell>
  <fo:table-cell>
    <fo:block border="solid 1px black" font-weight="bold" text-align="center">Trace</fo:block>
  </fo:table-cell>
</fo:table-header>
<fo:table-body>
<xsl:apply-templates select="member"/>
</fo:table-body>
</fo:table>
</fo:block>
</fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>
<xsl:template match="member">
<fo:table-row>
<!--xsl:if test="function = 'lead'">
<xsl:attribute name="font-weight">bold</xsl:attribute>
</xsl:if-->
<fo:table-cell border="solid 1px black" text-align="center" padding="2mm">
<fo:block>
<xsl:value-of select="qty"/>
</fo:block>
</fo:table-cell >
<fo:table-cell border="solid 1px black" text-align="center" padding="2mm">
<fo:block>
<xsl:value-of select="bin"/>
</fo:block>
</fo:table-cell>
<fo:table-cell border="solid 1px black" text-align="center" padding="2mm">
<fo:block>
<xsl:value-of select="location"/>
</fo:block>
</fo:table-cell>
<fo:table-cell border="solid 1px black" text-align="center" padding="2mm">
<fo:block>
   <fo:external-graphic src="url('xml/xslt/Capture.PNG')"  content-height="scale-to-fit" height="1.00in"  content-width="1.00in" scaling="non-uniform" />
</fo:block>
</fo:table-cell>
<fo:table-cell border="solid 1px black" text-align="center" padding="2mm">
<fo:block>
<xsl:value-of select="trace"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:template>
</xsl:stylesheet>