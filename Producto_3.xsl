<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
        <html>
        <head>
        <style>
        h2{ padding-left: 1em }
        h3{ padding-left: 2em }
        h4{ padding-left: 3em }
        </style>
        </head>
  <body>

 <xsl:for-each select="contenido/nivel1">

<h1 >
<xsl:number format=" 1.   " level="multiple"/>
<xsl:value-of select="titulo"/></h1>
<p> <xsl:value-of select="texto"/></p>

 <xsl:for-each select="nivel2">
 <h2>
 <xsl:number format="a.   " level="multiple"/>
 <xsl:value-of select="titulo"/></h2>
 <p> <xsl:value-of select="texto"/></p>

 <xsl:for-each select="nivel3">
 <h3>
  <xsl:number format="i.   " level="multiple"/>
  <xsl:value-of select="titulo"/></h3>
  <p> <xsl:value-of select="texto"/></p>
  
 <xsl:for-each select="nivel4">
 <h4>
 <xsl:number format="1.   " level="multiple"/>
 <xsl:value-of select="titulo"/></h4>
  <p> <xsl:value-of select="texto"/></p>



 
 </xsl:for-each>  
 
 </xsl:for-each>  
 
 </xsl:for-each>  

  </xsl:for-each>  
 
   </body>
  </html>
  </xsl:template>




 
  </xsl:stylesheet>