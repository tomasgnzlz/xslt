<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio4</title>
                <style>
                    .rojo{background-color:red}
                </style>
            </head>
            <body>
                <h1>Ejercicio3</h1>
                <ol>
                    <xsl:for-each select="bib/libro">
                    <!--Cada vez que quiera ordenar por algun valor, he de cerrar el sort donde lo declaro.-->
                        <xsl:choose>
                            <xsl:when test="precio &lt; 100">
                                <li>
                                    <xsl:value-of select="autor"/>
                                </li>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>