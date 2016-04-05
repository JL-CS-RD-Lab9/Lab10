<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>ACIT Winter 2016 Schedule</title>
            </head>
            <body>
                <h1>ACIT Winter 2016 Schedule</h1>
                <table>
                    <xsl:call-template name="headings"/>
                    <xsl:apply-templates select="/schedule/dayslot/period"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="headings">
        <tr>
            <th>Period</th>
            <th>Monday</th>
            <th>Tuesday</th>
            <th>Wednesday</th>
            <th>Thursday</th>
            <th>Friday</th>
        </tr>
    </xsl:template>
    
    <xsl:template match="period">
        <xsl:for-each select=".">
            <xsl:sort select="./@start"/>
            <tr>
                <td>
                    <xsl:value-of select="./@start"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
