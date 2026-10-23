
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html lang="es">
      <head>
        <title>Sitemap XML - B2B Case Studies</title>
        <style>
          body { font-family: monospace; background-color: #020617; color: #f8fafc; padding: 2rem; }
          h1 { color: #10b981; font-size: 1.25rem; margin-bottom: 1rem; }
          .container { max-width: 900px; margin: 0 auto; background: #0f172a; padding: 1.5rem; border-radius: 8px; border: 1px solid #1e293b; }
          table { width: 100%; border-collapse: collapse; margin-top: 1rem; }
          th, td { text-align: left; padding: 8px 12px; border-bottom: 1px solid #1e293b; font-size: 13px; }
          th { color: #94a3b8; font-weight: 600; }
          a { color: #38bdf8; text-decoration: none; }
          a:hover { text-decoration: underline; }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>Sitemap XML (Indexación Multilingüe)</h1>
          <p style="color: #94a3b8; font-size: 13px;">Este mapa del sitio contiene las URLs activas para los motores de búsqueda.</p>
          <table>
            <thead>
              <tr>
                <th>URL (loc)</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td>
                    <a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
