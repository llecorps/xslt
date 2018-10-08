<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output 
        method="html"
    	encoding="UTF-8"
    	doctype-public="-//W3C//DTD HTML 4.01//EN"
   	
    	indent="yes" ></xsl:output>

    <xsl:template match="/">
        <html>
            <head>
                <title>TP repertoire</title>
                <link type="text/css" rel="stylesheet" href="style.css"/>
            </head>
            <body>
                <xsl:call-template name="body" ></xsl:call-template>
            </body>
        </html>
    </xsl:template>

    <xsl:template name="body">
        <xsl:for-each select="repertoire/personne">
            <xsl:variable name="sexe" select="@sexe" ></xsl:variable>
            <xsl:variable name="nom" select="nom" ></xsl:variable>
            <xsl:variable name="prenom" select="prenom" ></xsl:variable>
            <xsl:variable name="num" select="adresse/numero" ></xsl:variable>
            <xsl:variable name="voie" select="adresse/voie" ></xsl:variable>
            <!--xsl:variable name="adresse" select="adresse" ></xsl:variable-->
            
            <xsl:if test="@sexe = 'masculin'">
            <p class="homme">
                <xsl:value-of select="$nom"></xsl:value-of>&#160;
                <xsl:value-of select="$prenom"></xsl:value-of>
                <!--xsl:value-of select="$adresse"></xsl:value-of-->
                <tr class="adresse">
                    <td>
                        <xsl:value-of select="$num"></xsl:value-of>&#160;<xsl:value-of select="$voie"></xsl:value-of>
                    </td>
                </tr>

            </p>
            </xsl:if>

            <xsl:if test="@sexe = 'feminin'">
            <p class="femme">
                    <xsl:value-of select="$nom"></xsl:value-of>&#160;
                    <xsl:value-of select="$prenom"></xsl:value-of>
                    <!--xsl:value-of select="$adresse"></xsl:value-of-->
                <tr class="adresse">
                    <td>
                        <xsl:value-of select="$num"></xsl:value-of>&#160;<xsl:value-of select="$voie"></xsl:value-of>
                        </td>
                </tr>
           </p>
            </xsl:if>
            
        </xsl:for-each>
    </xsl:template>






</xsl:stylesheet>