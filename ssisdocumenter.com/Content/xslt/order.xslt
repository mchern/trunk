<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
    <div align="center"> <h3>Preview Order</h3>
      <xsl:apply-templates select="TransactionRequest" />
    </div>
    </xsl:template>

  <xsl:template match="TransactionRequest">

	 
    <div class="infoSection">Submitted: <xsl:value-of select="OrderDate"/></div>
	 
    <div style="width:650px">
    <div class="halfL" style="width:300px; float:left;">
      <fieldset class="alignHeight ship clean">
        <legend>Ship To</legend>
        <xsl:value-of select="ShippingFirstName"/>&#160;<xsl:value-of select="ShippingLastName"/>
          <br/>
            <xsl:value-of select="ShippingCompany"/><br/>
          <br/>
            <xsl:value-of select="ShippingAddress"/><br/>
              <xsl:value-of select="ShippingCity"/>, &#160;<xsl:value-of select="ShippingState"/> &#160;<xsl:value-of select="ShippingZip"/><br/>
				<xsl:value-of select="ShippingCountry"/>
			<br/>
                  <xsl:value-of select="ShippingPhone"/><br/>
		</fieldset>
    </div>

    <div class="halfR" style="width:300px; float:right;">
      <fieldset class="alignHeight bill clean">
        <legend>Bill To</legend>
        <xsl:value-of select="FirstName"/>&#160;<xsl:value-of select="LastName"/>
          <br/>
            <xsl:value-of select="Company"/><br/>
          <br/>
            <xsl:value-of select="Address"/><br/>
              <xsl:value-of select="City"/>, &#160;<xsl:value-of select="State"/>&#160; <xsl:value-of select="Zip"/><br/>
				<xsl:value-of select="Country"/>
		<br/>
              <!--<xsl:value-of select="Phone"/><br/>-->
	</fieldset>
    </div>
    </div>
     <br style="clear: both;" />
    <fieldset class="full clean">
      <legend>Order Summary</legend>
      <table cellpadding="0" cellspacing="0" class="cartSum" border="1" width="100%">
        <thead>
          <tr>
            <td width="5%">Qty</td>
            <td width="83%">Product Description</td>

            <td width="12%">Price</td>
          </tr>
        </thead>

        <tr class="subHead">
          <td colspan="3">Order #: <xsl:value-of select="OrderNumber"/></td>
        </tr>


        <tr>
          <td class="qty"><xsl:value-of select="NumberOflicenses"/></td>

          <td>
            <dl class="prodDesc">

              <dd>
                <a target="_blank" href="http://www.ssisdocumenter.com" NAME="CART_ITEM">
                  <xsl:value-of select="ProductName"/> 
                </a>
              </dd>
            </dl>
          </td>
          <td>
            <dl>
              <dd>$<xsl:value-of select="ChargeAmount"/></dd>
            </dl>
          </td>
        </tr>



        <tr class="subtotal">
          <td colspan="2">Subtotal:</td>
          <td>$<xsl:value-of select="ChargeAmount"/></td>
        </tr>


        <tr class="noTop">
          <td colspan="2">Tax:</td>

          <td>$0.00</td>
        </tr>
        <tr class="noTop">
          <td colspan="2">Order Total:</td>

          <td ID="ORDER_TOTAL">$<xsl:value-of select="ChargeAmount"/></td>
        </tr>

      </table>
    </fieldset>

  </xsl:template>
</xsl:stylesheet>
