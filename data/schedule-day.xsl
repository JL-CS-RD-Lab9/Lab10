<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>ACIT Winter 2016 Schedule</title>
            </head>
            <body>
                <h1>ACIT Winter 2016 Schedule - Day Centric</h1>
                <table>
                    <xsl:call-template name="headings"/>                    
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Day Headings -->
    <xsl:template name="headings">
        <tr>
            <th>Period</th>
            <xsl:for-each select="schedule/dayslot">
                <th>
                    <xsl:value-of select="./@which"/>
                </th>
            </xsl:for-each>
        </tr>
        <tr>
            <xsl:call-template name="periods"/>
        </tr>
    </xsl:template>
    
    <!-- Period Times -->
    <xsl:template name="periods">
        <tr>
            <td>830</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:if test="./period/@start='0830'">
                            <xsl:apply-templates select="."/>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="schedule/dayslot/period">
                            <xsl:if test="./@start='0830'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:if test="./period/@start='0830'">
                            <xsl:apply-templates select="."/>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:if test="./period/@start='0830'">
                            <xsl:apply-templates select="."/>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:if test="./period/@start='0830'">
                            <xsl:apply-templates select="."/>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each>
            </td>            
        </tr>
        <tr>
            <td>930</td>
        </tr>
        <tr>
            <td>1030</td>
        </tr>
        <tr>
            <td>1130</td>
        </tr>
        <tr>
            <td>1230</td>
        </tr>
        <tr>
            <td>1330</td>
        </tr>
        <tr>
            <td>1430</td>
        </tr>
        <tr>
            <td>1530</td>
        </tr>
        <tr>
            <td>1630</td>
        </tr>        
    </xsl:template>
    
    <!-- Period Booking Entry -->
    <xsl:template match="period">
        <xsl:value-of select="./booking/@code"/>
        <br/>
        <xsl:value-of select="./booking/@coursename"/>
        <br/>
        <xsl:value-of select="./booking/@instructor"/>
        <br/>
        <xsl:value-of select="./booking/@room"/>
        <br/>
        <xsl:value-of select="./booking/@type"/>
    </xsl:template>
</xsl:stylesheet>
