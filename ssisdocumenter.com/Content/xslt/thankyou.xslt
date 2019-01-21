<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
      <xsl:apply-templates select="Order" />
    </xsl:template>

    <xsl:template match="Order">
      Dear <b><xsl:value-of select="Name"/></b>,
     
      <p>
      Thank you for choosing <xsl:value-of select="ProductName"/>.
      </p>
      <p>
      Please download a license file from the following location.
      </p>
      <xsl:if test="ProductName='SSIS Documenter'">
        <a href="http://www.ssisdocumenter.com/reg/wn748k93/DTSDocumenter.lic">
          <xsl:value-of select="ProductName"/> License
        </a>  
      </xsl:if>

      <xsl:if test="ProductName!='DTS Documenter 2000'">
        <a href="http://www.ssisdocumenter.com/reg/M6dRt8k7/SSISDocumenter.lic">
          <xsl:value-of select="ProductName"/> License
        </a>
      </xsl:if>
      <p>Right click this link and select "Save Target As...". This file has to be placed to the to the [<xsl:value-of select="ProductName"/> Installation] folder.
      </p>
      <p>
        We hope you will enjoy using <xsl:value-of select="ProductName"/>.
      </p>
      <p>
      We value your opinion, feel free to contact us, if you will have any questions
      or ideas on how to make <xsl:value-of select="ProductName"/> a better product.
      </p>
      <p>
      SSIS Documenter support: <a href="mailto:support@ssisdocumenter.com">support@ssisdocumenter.com</a>
      </p>

    </xsl:template>
</xsl:stylesheet>
