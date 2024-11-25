<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
        <head>
            <title>Resultados de theHarvester</title>
        </head>
        <body>
            <h1>Correos Electrónicos</h1>
            <table border="1">
                <tr>
                    <th>Correo Electrónico</th>
                </tr>
                <xsl:for-each select="theHarvester/email">
                    <tr>
                        <td><xsl:value-of select="."/></td>
                    </tr>
                </xsl:for-each>
            </table>
                <h1>Hosts</h1>
                <table border="1">
                    <tr>
                        <th>Host</th>
                    </tr>
                    <xsl:for-each select="theHarvester/host">
                    <tr>
                    <td><xsl:value-of select="."/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>