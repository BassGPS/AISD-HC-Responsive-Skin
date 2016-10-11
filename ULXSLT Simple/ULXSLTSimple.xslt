<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
		<ul>
			<xsl:apply-templates select="node" />
		</ul>
	</xsl:template>
	<xsl:template match="node">
		<li>
			 <xsl:if test="@breadcrumb = 1">
        				<xsl:attribute name="class">current</xsl:attribute>
      			</xsl:if>
			<xsl:choose>
				<xsl:when test="@enabled = 1">
					<a href="{@url}">
						<xsl:value-of select="@text" />
					</a>
				</xsl:when>
				<xsl:otherwise>
					<a href="#">
						<xsl:value-of select="@text" />
					</a>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="node">
				
				<ul class="{@id}">
					<xsl:apply-templates select="node" />
				</ul>
				
			</xsl:if>
		</li>
	</xsl:template>
</xsl:stylesheet>
