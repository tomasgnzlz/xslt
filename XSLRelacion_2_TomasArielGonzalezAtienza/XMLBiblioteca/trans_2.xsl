<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio2</title>
                <style>
                    .rojo{background-color:red}
                </style>
            </head>
            <body>
                <h1>Ejercicio2</h1>
                <table border="1 solid black">
                    <tr>
                        <th>Precio</th>
                        <th>Titulo</th>
                        <th>Año publicación</th>
                    </tr>
                    <xsl:for-each select="bib/libro">
                        <tr>
                            <td>
                                <p><xsl:value-of select="precio"/></p>    
                            </td>

                            <td>
                                <xsl:choose>
                                    <xsl:when test="precio &gt; 100">
                                        <p class="rojo"><xsl:value-of select="titulo"/></p>        
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <p><xsl:value-of select="titulo"/></p>
                                    </xsl:otherwise>
                                </xsl:choose>
                                
                            </td>
                            <td>
                                <p><em><xsl:value-of select="@año"/></em></p>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>