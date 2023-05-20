<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio2</title>
        </head>
        <body>
            <h1>Ejercicio 2</h1>
            <xsl:for-each select="horario/dia">
                <xsl:sort select="numdia"/>
                    <xsl:choose>
                        <xsl:when test="numdia = 1">
                            Lunes
                        </xsl:when>
                        <xsl:when test="numdia = 2">
                            Martes
                        </xsl:when>
                        <xsl:when test="numdia = 3">
                            Miercoles
                        </xsl:when>
                        <xsl:when test="numdia = 4">
                            Jueves
                        </xsl:when>
                        <xsl:otherwise>
                            Viernes
                        </xsl:otherwise>
                    </xsl:choose>                        
                
                    <ul>
                        <li>
                        <!-- TENGO QUE HACER DOS FOR-EACH -->
                        <xsl:for-each select="tarea">
                            <p>
                            <strong><xsl:value-of select="nombre"/></strong>- &#160;
                            
                            Prioridad: <xsl:value-of select="@prioridad"/>
                            <br/>
                            De &#160; <xsl:value-of select="hora-ini"/> &#160; a &#160;<xsl:value-of select="hora-fin"/>
                            
                            </p>
                            </xsl:for-each>
                        </li>
                    </ul>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
