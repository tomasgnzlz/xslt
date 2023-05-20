<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio3</title>
        </head>
        <body>
            <h1>Ejercicio 3</h1>
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
                    <xsl:for-each select="tarea">
                        <li>
                            <p>
                                <strong><xsl:value-of select="nombre"/></strong>&#160; 
                                    <xsl:choose>
                                        <xsl:when test="@prioridad = 'alta'">
                                        - &#160; 
                                            Prioridad: <xsl:value-of select="@prioridad"/>
                                        </xsl:when>
                                        <xsl:when test="@prioridad = 'media'">
                                        - &#160; 
                                            Prioridad: <xsl:value-of select="@prioridad"/>
                                        </xsl:when>
                                        <xsl:when test="@prioridad = 'baja'">
                                        - &#160; 
                                            Prioridad: <xsl:value-of select="@prioridad"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            
                                        </xsl:otherwise>
                                    </xsl:choose>
                                <br/>
                                De &#160; <xsl:value-of select="hora-ini"/> a &#160; <xsl:value-of select="hora-fin"/>
                            </p>
                        </li>
                    </xsl:for-each>
                </ul>
                
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
