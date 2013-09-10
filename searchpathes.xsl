<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>

  <xsl:param name="query"/>

  <xsl:template match="/">
    <xsl:for-each select="//*/text()[contains(.,$query)]">
      <xsl:apply-templates select="parent::*" mode="path"/>
      <xsl:text>&#xA0;&#10;</xsl:text>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="*" mode="path">
    <xsl:text></xsl:text>
  </xsl:template>

  <xsl:template match="*" mode="path">
    <xsl:apply-templates select="parent::*" mode="path"/>
    <xsl:text>/</xsl:text>
    <xsl:value-of select="local-name()"/>    
    <xsl:text>[</xsl:text>
    <xsl:value-of select="1+count(preceding-sibling::*[local-name()=local-name(current())])"/>
    <xsl:text>]</xsl:text>
  </xsl:template>
</xsl:stylesheet>