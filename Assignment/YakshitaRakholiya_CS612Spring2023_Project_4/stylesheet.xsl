<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:value-of select="report/title"/></title>
      </head>
      <body>
        <h1><xsl:value-of select="report/title"/></h1>
        <p>Author: <xsl:value-of select="report/author"/></p>
        <p>ID: <xsl:value-of select="report/id"/></p>
        
        <xsl:apply-templates select="report/chapter"/>
        
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="chapter">
    <h2>Chapter <xsl:value-of select="@number"/>: <xsl:value-of select="title"/></h2>
    <xsl:apply-templates select="section"/>
  </xsl:template>
  
  <xsl:template match="section">
    <h3>Section <xsl:value-of select="@number"/>: <xsl:value-of select="title"/></h3>
    <xsl:apply-templates select="subsection"/>
    <xsl:apply-templates select="item"/>
  </xsl:template>
  
  <xsl:template match="subsection">
    <h4>Subsection <xsl:value-of select="@number"/>: <xsl:value-of select="title"/></h4>
    <xsl:apply-templates select="item"/>
  </xsl:template>
  
  <xsl:template match="item">
    <p><xsl:value-of select="."/></p>
  </xsl:template>
  
</xsl:stylesheet>
