<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="zh-CN"><head><meta charset="UTF-8"/><meta name="viewport" content="width=device-width, initial-scale=1"/>
<title><xsl:value-of select="/rss/channel/title"/> - RSS 订阅</title>
<style>body{font-family:-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Arial,sans-serif;max-width:760px;margin:0 auto;padding:24px 18px;line-height:1.8;color:#1f2937}h1{font-size:1.5rem}a{color:#0284c7;text-decoration:none}li{margin:14px 0}.date{color:#64748b;font-size:.85rem}</style>
</head><body>
<h1>🌾 <xsl:value-of select="/rss/channel/title"/></h1>
<p><xsl:value-of select="/rss/channel/description"/></p>
<p>这是本站的 RSS 订阅源，请复制 <code>https://cs334.ccwu.cc/rss.xml</code> 到你的 RSS 阅读器（如 NetNewsWire、Feedly）里订阅。</p>
<ul>
<xsl:for-each select="/rss/channel/item">
<li><a href="{link}"><xsl:value-of select="title"/></a><br/><span class="date"><xsl:value-of select="pubDate"/></span><br/><xsl:value-of select="description"/></li>
</xsl:for-each>
</ul>
<p><a href="/">← 回导航站首页</a></p>
</body></html>
</xsl:template>
</xsl:stylesheet>
