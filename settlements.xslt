<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes"/>
  
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <!-- Change castle name -->
  <xsl:template match="Settlement[@id='castle_EN1']/@name">
    <xsl:attribute name="name">{=!}Test Castle</xsl:attribute>
  </xsl:template>
  
  <!-- Change castle owner -->
  <xsl:template match="Settlement[@id='castle_EN1']/@owner">
    <xsl:attribute name="owner">Faction.clan_battania_4</xsl:attribute>
  </xsl:template>
  
  <!-- Change castle culture -->
  <xsl:template match="Settlement[@id='castle_EN1']/@culture">
    <xsl:attribute name="culture">Culture.battania</xsl:attribute>
  </xsl:template>
  
  <!-- Change castle text -->
  <xsl:template match="Settlement[@id='castle_EN1']/@text">
    <xsl:attribute name="text">{=!}This is a test.</xsl:attribute>
  </xsl:template>
</xsl:stylesheet>