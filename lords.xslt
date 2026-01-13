<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes"/>
  
  <!-- Copy everything by default -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <!-- Change Lord's name -->
  <xsl:template match="NPCCharacter[@id='lord_1_1']/@name">
    <xsl:attribute name="name">{=!}Test Lord</xsl:attribute>
  </xsl:template>
</xsl:stylesheet>
