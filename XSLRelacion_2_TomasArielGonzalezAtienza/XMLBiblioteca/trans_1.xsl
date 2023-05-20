<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1</title>
                <style>
                    .rojo{color:red}
                </style>
            </head>
            <body>
                <h1>Ejercicio1. Mostrar una tabla con las siguientes columnas ordenadas por el título del libro:</h1>
                <table border="1 solid black">
                    <tr>
                        <th>Título</th>
                        <th>Autores</th>
                        <th>Editores</th>
                    </tr>
                    <!--Aquí meto el foreach que recorre todos los datos del xml.
                    No hace falta hacer otro template-->
                    <xsl:for-each select="bib/libro">
                        <tr>
                            <!--Este va a corresponder a el apartado de titulos-->
                            <td>
                                <xsl:choose>
                                    <xsl:when test="precio &gt; 100">
                                        <p class="rojo">
                                            <xsl:value-of select="concat(titulo, ' (CARO)')"/>
                                        </p>        
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <p>
                                            <xsl:value-of select="titulo"/>
                                        </p>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <!--Este va a corresponder a el apartado de Autores-->
                            <td>
                                <p>
                                    <xsl:for-each select="autor">
                                        <xsl:value-of select="nombre"/>&#160;<xsl:value-of select="apellido"/>
                                    </xsl:for-each>
                                </p>
                            </td>
                            <!--Este va a corresponder a el apartado de Editores-->
                            <td>
                                <p>
                                    <xsl:for-each select="editor">
                                        <xsl:value-of select="nombre"/>&#160;<xsl:value-of select="apellido"/><br /><xsl:value-of select="afiliacion"/>
                                    </xsl:for-each>
                                </p>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>