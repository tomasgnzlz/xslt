<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html >
            <head>
                <title>Ejercico6</title>
                <style>
                    .verde{
                        color:green;
                    }

                    .rojo{
                        color:red;
                    }
                </style>
            </head>
            <body>
                <h1>Ejercicio6</h1>
                <ul>
                    <xsl:for-each select="catalogo/cds/cd">
                        <xsl:choose>
                            <xsl:when test="año &gt; 2000">
                                <li>
                                    <p class="verde"><xsl:value-of select="titulo"/></p>
                                </li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li>
                                    <p class="rojo"><xsl:value-of select="titulo"/></p>
                                </li>
                            </xsl:otherwise>
                        </xsl:choose>                        
                    </xsl:for-each>
                </ul>
            
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
