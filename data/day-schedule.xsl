<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : day-schedule.xsl
    Created on : April 5, 2016, 2:31 PM
    Author     : Johnathan
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>day-schedule.xsl (day centric)</title>
            </head>
            <body>
                <table>
                    <tr>
                        <td>
                            <xsl:call-template name = "times"/>
                        </td>
                        <td>
                            <xsl:call-template name = "daysData"/>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
    <!--List times during the day -->
    <xsl:template name = "times">
        <table>
            <tr>                
                <td>08:30</td>
                <td>09:30</td>
                <td>10:30</td>
                <td>11:30</td>
                <td>12:30</td>
                <td>13:30</td>
                <td>14:30</td>
                <td>15:30</td>
            </tr>            
        </table>
    </xsl:template>
    <!-- Template for days data -->
    <xsl:template name="daysData">
 	<xsl:for-each select="days/day">
           <tr>
 		<th>
                    <xsl:value-of select="./@which"/>
		</th>
 		<td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='08:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='09:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='10:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='11:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='12:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='13:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='14:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>
                <td>
                    <xsl:for-each select="./booking">
                        <xsl:if test="./period/@start='15:30'">
                            <xsl:apply-templates select="." />
                        </xsl:if>
                    </xsl:for-each>
 		</td>               
             </tr>
        </xsl:for-each>
    </xsl:template>
    <!-- Template for period data -->
    <xsl:template match="period">
 	<xsl:value-of select="./code"/>
 	<xsl:value-of select="./room"/>
 	<xsl:value-of select="./instructor"/>
        <xsl:value-of select="./type"/>
    </xsl:template>

</xsl:stylesheet>
