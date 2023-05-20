<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">  
    <html>
        <head>
            <title>Ejercicio1</title>
        </head>
        <body>
            <h1>Ejercicio 1</h1>
            <xsl:for-each select="horario/dia/tarea">
                <p>Día <xsl:value-of select="numdia"/>
                </p>
                    <ul>
                        <li>
                            <p>
                            <strong><xsl:value-of select="nombre"/></strong>- &#160;
                            Prioridad: <xsl:value-of select="@prioridad"/>
                            <br/>
                            De &#160; <xsl:value-of select="hora-ini"/> &#160; a &#160;<xsl:value-of select="hora-fin"/>
                            </p>
                        </li>
                    </ul>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>
