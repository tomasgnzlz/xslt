<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio6</title>
            <style>
            </style>
        </head>
        <body>
        <h1>Ejercicio6</h1>

        <table border="1">

            <tr>
                <th>Artículo</th>
                <th>Precio</th>
                <th>Imagen</th>
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
                            <td>
                            <!-- LE PONGO UN ESPACIO XQ SINO ESA CELDA SE QUEDA VACÍA Y LA IMAGEN SE COLOCA AHÍ Y NO EN LA CELDA QUE LE CORRESPONDE -->
                                <p>&#160;</p>
                            </td>
                        </xsl:otherwise>
                    </xsl:choose>
                    <!-- IMAGENES -->
                    <td>
                        <img src="">
                            <xsl:attribute name="src">
                                img/<xsl:value-of select="imagen"/>
                            </xsl:attribute>
                        </img>
                    </td>
                </tr>

            </xsl:for-each>

        </table>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>