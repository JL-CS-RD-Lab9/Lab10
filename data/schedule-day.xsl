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
                <table border="1">
                    <xsl:call-template name="headings"/>                    
                </table>
            </body>
        </html>
    </xsl:template>
    
    <!-- Day Headings -->
    <xsl:template name="headings">
        <tr bgcolor="#d3d3d3">
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
        <tr >
            <td bgcolor="#d3d3d3">830</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0830'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
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
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0830'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0830'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0830'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>            
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">930</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0930'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0930'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0930'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0930'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='0930'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1030</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1030'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1030'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1030'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1030'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1030'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1130</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1130'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1130'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1130'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1130'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1130'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1230</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1230'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1230'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1230'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1230'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1230'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1330</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1330'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1330'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1330'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1330'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1330'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1430</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1430'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1430'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1430'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1430'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1430'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1530</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1530'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1530'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1530'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1530'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1530'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
        </tr>
        <tr>
            <td bgcolor="#d3d3d3">1630</td>
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Monday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1630'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Tuesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1630'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Wednesday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1630'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Thursday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1630'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td> 
            <td>
                <xsl:for-each select="schedule/dayslot">
                    <xsl:if test="./@which='Friday'">
                        <xsl:for-each select="./period">
                            <xsl:if test="./@start='1630'">
                                <xsl:apply-templates select="."/>
                            </xsl:if>
                        </xsl:for-each>
                    </xsl:if>
                </xsl:for-each>
            </td>
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
        <br/>
        <xsl:value-of select="./@start"/>-<xsl:value-of select="./@end"/>
        <br/>
    </xsl:template>
</xsl:stylesheet>
