<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio2</title>
        </head>
        <body>
        <h1>Lista de Articulos</h1>
            <xsl:for-each select="tienda/producto">
            <xsl:sort select="cantidad">
                
            </xsl:sort>
                <ul>
                    <li><xsl:value-of select="articulo"/></li>
                </ul>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>