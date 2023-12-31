<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/stazioni">
    <html>
      <head>
        <title>Elenco stazioni</title>
      </head>
      <body>
        <h1>Elenco stazioni</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Comune</th>
            <th>Provincia</th>
            <th>Regione</th>
            <th>Nome</th>
          </tr>
          <xsl:for-each select="stazione">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="comune"/></td>
              <td><xsl:value-of select="provincia"/></td>
              <td><xsl:value-of select="regione"/></td>
              <td><xsl:value-of select="nome"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>