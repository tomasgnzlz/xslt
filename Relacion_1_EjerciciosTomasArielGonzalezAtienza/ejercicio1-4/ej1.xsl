<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
            </head>
            <body>

                <h1>Solo nombres</h1>
                <xsl:apply-templates/>

            </body>
        </html>
    </xsl:template>

        <xsl:template match="ciclo">
            
                <xsl:value-of select="nombre"/>
            
        </xsl:template>
    
</xsl:stylesheet>