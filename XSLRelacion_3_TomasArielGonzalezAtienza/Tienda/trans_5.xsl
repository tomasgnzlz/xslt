<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio5</title>
        </head>
        <body>
        <h1>Ejercicio 5</h1>
        <table border="1">
            <tr>
                <th>Código</th>
                <th>Artículo</th>
                <th>Cantidad</th>
            </tr>
            <xsl:for-each select="tienda/producto">
                <tr>
                    <td><xsl:value-of select="codigo"/></td>
                    <td><xsl:value-of select="articulo"/></td>
                    <td><xsl:value-of select="cantidad"/></td>
                </tr>
            </xsl:for-each>
        </table>
            
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>