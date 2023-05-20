<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Transformacion 1</title>
            </head>
            <body>
                <h1>Titulos de Todos los libros</h1>
                <ul>
                    <xsl:apply-templates/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <!-- Ejemplo 1
    <xsl:template match="libro">
        <p><xsl:value-of select="titulo"/></p>
    </xsl:template>
    -->

    <!-- Ejemplo 2
    <xsl:template match="libro">
        <p><xsl:value-of select="titulo"/> - <xsl:value-of select="autor"/> </p> 
    </xsl:template>
    --> 

    <!-- Ejemplo 3
    <xsl:template match="libro">
        <p>
        <xsl:value-of select="titulo"/> 
           (
            <xsl:value-of select="fechaPublicacion/@año"/>    
           )
        <xsl:value-of select="autor"/> 
        </p> 
    </xsl:template>
    -->
    <!-- Ejemplo 4 
    <xsl:template match="libro">
        <p>
        <xsl:value-of select="titulo"/> 
           (
            <xsl:value-of select="fechaPublicacion/@año"/>    
           )
        <xsl:value-of select="autor"/> 
            ( Cuando quiero acceder a un atributo he de poner la ruta en la que se encuentra y ademas un @ para saber que quiero saber de ese atributo. 
                <xsl:value-of select="autor/@fechaNacimiento" />
            )
        
        </p> 
    </xsl:template>
    -->

    <xsl:template match="libro">

        <li>
            <xsl:value-of select="titulo"/> 
                (   <xsl:value-of select="fechaPublicacion/@año"/>   )
            <xsl:value-of select="autor"/> 
                (   <xsl:value-of select="autor/@fechaNacimiento" />   )
        </li>

    </xsl:template>
</xsl:stylesheet>