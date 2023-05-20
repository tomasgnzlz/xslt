<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio6</title>
            <style>
                .verde{
                    color:green;
                }
                .azul{
                    color:blue;
                }
                .rojo{
                    color:red;
                }
            </style>
        </head>
        <body>
        <h1>Ejercicio6</h1>

        <table border="1">
            <tr>
                <th>Artículo</th>
                <th>Precio</th>
            </tr>

            <xsl:for-each select="tienda/producto">
            <tr>
                <xsl:choose>

                    <xsl:when test="precio &lt;= 100">
                        <td><p class="verde"><xsl:value-of select="articulo"/></p></td>
                    </xsl:when>

                    <xsl:when test="precio &gt; 100">
                        <td><p class="azul"><xsl:value-of select="articulo"/></p></td>
                    </xsl:when>

                    <xsl:otherwise>
                        <td><p class="rojo"><xsl:value-of select="articulo"/></p></td>
                    </xsl:otherwise>

                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="precio &gt; 0">
                        <td>
                            <p><xsl:value-of select="precio"/></p>
                        </td>
                    </xsl:when>
                    <xsl:otherwise>
                        <td>Null</td>
                    </xsl:otherwise>
                </xsl:choose>
            </tr>

            
            
            
            </xsl:for-each>

        </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>