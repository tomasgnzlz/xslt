<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
            </head>
            <body>

                <h1>Solo nombres</h1>
               <table border="1px solid red">
                    <xsl:apply-templates/>
               </table>

            </body>
        </html>
    </xsl:template>

        <xsl:template match="ciclo">
        
              <tr>
                <td>
                    <xsl:value-of select="nombre"/>
                </td>
              </tr>  
              
        </xsl:template>
    
</xsl:stylesheet>