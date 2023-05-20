<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio4</title>
        </head>
        <body>
        
        <table border="1">
            <tr>
                <th colspan="2">Artículos</th>
            </tr>
            <xsl:for-each select="tienda/producto">
                <tr>
                    <td>ARTÍCULOS DE MI TIENDA:&#160;&#160;&#160;</td>
                    <td><xsl:value-of select="articulo"/></td>
                </tr>
            </xsl:for-each>
        </table>
            
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>