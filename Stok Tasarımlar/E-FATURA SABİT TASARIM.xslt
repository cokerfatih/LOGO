<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
  <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
  <xsl:output version="4.0" omit-xml-declaration="yes" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
  <xsl:param name="SV_OutputFormat" select="'HTML'"/>
  <xsl:variable name="XML" select="/"/>
  <xsl:template match="/">
    <html>
      <head>
        <title/>
        <style type="text/css"> body{background-color:#FFFFFF;font-family:'Tahoma', "Times New Roman", Times, serif;font-size:11px;color:#666666;}h1, h2{padding-bottom:3px;padding-top:3px;margin-bottom:5px;text-transform:uppercase;font-family:Arial, Helvetica, sans-serif;}h1{font-size:1.4em;text-transform:none;}h2{font-size:1em;color:brown;}h3{font-size:1em;color:#333333;text-align:justify;margin:0;padding:0;}h4{font-size:1.1em;font-style:bold;font-family: Arial, Helvetica, sans-serif;color:#000000;margin:0;padding:0;}hr{height:2px;color:#000000;background-color:#000000;border-bottom:1px solid #000000;}p, ul, ol{margin-top:1.5em;}ul, ol{margin-left:3em;}blockquote{margin-left:3em;margin-right:3em;font-style:italic; }a{text-decoration:none;color:#70A300;}a:hover{border:none;color:#70A300;}#despatchTable{border-collapse:collapse;font-size:11px;float:right;border-color:gray;}#ettnTable{border-collapse:collapse;font-size:11px;border-color:gray;}#customerPartyTable{border-width:0px;border-style:inset;border-color:gray;border-collapse:collapse;}#customerIDTable{border-width:2px;border-style:inset;border-color:gray;border-collapse:collapse; }#customerIDTableTd{border-width:2px;border-style:inset;border-color:gray;border-collapse:collapse;}#lineTable{border-width:2px;border-style:inset;border-color:black;border-collapse:collapse;}#lineTableTd{font-size:10px;border-width:1px;padding:1px;border-style:inset;border-color:black;background-color:white;}#lineTableTr{border-width:1px;padding:0px;border-style:inset;border-color:black;background-color:white;}#lineTableDummyTd{border-width:1px;border-color:white;padding:1px;border-style:inset;border-color:black;background-color:white;}#lineTableBudgetTd{border-width:2px;border-spacing:0px;padding:1px;border-style:inset;border-color:black;background-color:white;}#notesTable{border-width:2px;border-style:inset;border-color:black;border-collapse:collapse;}#notesTableTd{border-width:0px;border-style:inset;border-color:black;border-collapse:collapse;}table{border-spacing:0px;}#budgetContainerTable{border-width:0px;border-spacing:0px;border-style:inset;border-color:black;border-collapse:collapse;}td{border-color:gray;}#iptal{font-size: 150pt;opacity: 0.5;color: red;position: absolute;top: 550px;left: 220px;}</style>
        <title>e-Arşiv</title>
      </head>
      <body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
        <xsl:for-each select="$XML">
          <table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
            <tbody>
              <tr valign="top">
                <td width="40%">
                  <br/>
                  <table align="center" border="0" width="100%">
                    <tbody>
                      <hr/>
                      <tr align="left">
                        <xsl:for-each select="//n1:Invoice">
                          <xsl:for-each select="cac:AccountingSupplierParty">
                            <xsl:for-each select="cac:Party">
                              <td align="left">
                                <xsl:if test="cac:PartyName">
                                  <xsl:value-of select="cac:PartyName/cbc:Name"/>
                                  <br/>
                                </xsl:if>
                                <xsl:for-each select="cac:Person">
                                  <xsl:for-each select="cbc:Title">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cbc:FirstName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cbc:MiddleName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cbc:FamilyName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cbc:NameSuffix">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </td>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </tr>
                      <tr align="left">
                        <b>Merkez</b>
                        <xsl:for-each select="//n1:Invoice">
                          <xsl:for-each select="cac:AccountingSupplierParty">
                            <xsl:for-each select="cac:Party">
                              <td align="left">
                                <xsl:for-each select="cac:PostalAddress">
                                  <xsl:for-each select="cbc:StreetName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cbc:BuildingName">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                  <xsl:if test="cbc:BuildingNumber">
                                    <span>
                                      <xsl:text> No:</xsl:text>
                                    </span>
                                    <xsl:for-each select="cbc:BuildingNumber">
                                      <xsl:apply-templates/>
                                    </xsl:for-each>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:if>
                                  <br/>
                                  <xsl:for-each select="cbc:PostalZone">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                  <xsl:for-each select="cbc:CitySubdivisionName">
                                    <xsl:apply-templates/>
                                  </xsl:for-each>
                                  <span>
                                    <xsl:text>/ </xsl:text>
                                  </span>
                                  <xsl:for-each select="cbc:CityName">
                                    <xsl:apply-templates/>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </td>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </tr>
                      <xsl:if test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
                        <tr align="left">
                          <xsl:for-each select="//n1:Invoice">
                            <xsl:for-each select="cac:AccountingSupplierParty">
                              <xsl:for-each select="cac:Party">
                                <td align="left">
                                  <xsl:for-each select="cac:Contact">
                                    <xsl:if test="cbc:Telephone">
                                      <span>
                                        <xsl:text>Tel: </xsl:text>
                                      </span>
                                      <xsl:for-each select="cbc:Telephone">
                                        <xsl:apply-templates/>
                                      </xsl:for-each>
                                    </xsl:if>
                                    <xsl:if test="cbc:Telefax">
                                      <span>
                                        <xsl:text> Fax: </xsl:text>
                                      </span>
                                      <xsl:for-each select="cbc:Telefax">
                                        <xsl:apply-templates/>
                                      </xsl:for-each>
                                    </xsl:if>
                                    <span>
                                      <xsl:text>&#160;</xsl:text>
                                    </span>
                                  </xsl:for-each>
                                </td>
                              </xsl:for-each>
                            </xsl:for-each>
                          </xsl:for-each>
                        </tr>
                      </xsl:if>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
                        <tr align="left">
                          <td>
                            <xsl:text>Web Sitesi: </xsl:text>
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                        <tr align="left">
                          <td>
                            <xsl:text>E-Posta: </xsl:text>
                            <xsl:value-of select="."/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <tr align="left">
                        <xsl:for-each select="//n1:Invoice">
                          <xsl:for-each select="cac:AccountingSupplierParty">
                            <xsl:for-each select="cac:Party">
                              <td align="left">
                                <span>
                                  <xsl:text>Vergi Dairesi: </xsl:text>
                                </span>
                                <xsl:for-each select="cac:PartyTaxScheme">
                                  <xsl:for-each select="cac:TaxScheme">
                                    <xsl:for-each select="cbc:Name">
                                      <xsl:apply-templates/>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                  <span>
                                    <xsl:text>&#160; </xsl:text>
                                  </span>
                                </xsl:for-each>
                              </td>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </tr>
                      <xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
                        <tr align="left">
                          <td>
                            <xsl:value-of select="cbc:ID/@schemeID"/>
                            <xsl:text>: </xsl:text>
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                  <hr/>
                </td>
                <td width="20%" align="center" valign="middle">
                  <br/>
                  <br/>
                  <img style="width:91px;" align="middle" alt="E-Fatura Logo" src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"/>
                  <h1 align="center">
                    <span style="font-weight:bold;">
                      <xsl:text>e-Arşiv Fatura</xsl:text>
                    </span>
                  </h1>
                </td>

				  <td width="360%" align="right" valign="right">
  <br/>
					  <br/>
					  <img style="width:170px;float:right" align="right" alt="firma Logo" src="data:image/png;base64,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"/>

					  <span style="font-weight:bold; ">
						  <xsl:text></xsl:text>
					  </span>

				  </td>
                <td width="40%"/>
              </tr>
              <tr style="height:118px; " valign="top">
                <td width="40%" align="right" valign="bottom">
                  <table id="customerPartyTable" align="left" border="0" height="50%">
                    <tbody>
                      <tr style="height:71px; ">
                        <td>
                          <hr/>
                          <table align="center" border="0">
                            <tbody>
                              <tr>
                                <xsl:for-each select="//n1:Invoice">
                                  <xsl:for-each select="cac:AccountingCustomerParty">
                                    <xsl:for-each select="cac:Party">
                                      <td style="width:469px; " align="left">
                                        <span style="font-weight:bold;">
                                          <xsl:text>SAYIN</xsl:text>
                                        </span>
                                      </td>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </tr>
                              <tr>
                                <xsl:for-each select="//n1:Invoice">
                                  <xsl:for-each select="cac:AccountingCustomerParty">
                                    <xsl:for-each select="cac:Party">
                                      <td style="width:469px; " align="left">
                                        <xsl:if test="cac:PartyName">
                                          <xsl:value-of select="cac:PartyName/cbc:Name"/>
                                          <br/>
                                        </xsl:if>
                                        <xsl:for-each select="cac:Person">
                                          <xsl:for-each select="cbc:Title">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:FirstName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:MiddleName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:FamilyName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:NameSuffix">
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                        </xsl:for-each>
                                      </td>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </tr>
                              <tr>
                                <xsl:for-each select="n1:Invoice">
                                  <xsl:for-each select="cac:AccountingCustomerParty">
                                    <xsl:for-each select="cac:Party">
                                      <td style="width:469px; " align="left">
                                        <xsl:for-each select="cac:PostalAddress">
                                          <xsl:for-each select="cbc:StreetName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:BuildingName">
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:BuildingNumber">
                                            <span>
                                              <xsl:text> No:</xsl:text>
                                            </span>
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <br/>
                                          <xsl:for-each select="cbc:Room">
                                            <span>
                                              <xsl:text>Kapı No:</xsl:text>
                                            </span>
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <br/>
                                          <xsl:for-each select="cbc:PostalZone">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:CitySubdivisionName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>/ </xsl:text>
                                            </span>
                                          </xsl:for-each>
                                          <xsl:for-each select="cbc:CityName">
                                            <xsl:apply-templates/>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </xsl:for-each>
                                        </xsl:for-each>
                                      </td>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </tr>
                              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cbc:WebsiteURI">
                                <tr align="left">
                                  <td>
                                    <xsl:text>Web Sitesi: </xsl:text>
                                    <xsl:value-of select="."/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:Contact/cbc:ElectronicMail">
                                <tr align="left">
                                  <td>
                                    <xsl:text>E-Posta: </xsl:text>
                                    <xsl:value-of select="."/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                              <xsl:for-each select="//n1:Invoice">
                                <xsl:for-each select="cac:AccountingCustomerParty">
                                  <xsl:for-each select="cac:Party">
                                    <xsl:for-each select="cac:Contact">
                                      <xsl:if test="cbc:Telephone or cbc:Telefax">
                                        <tr align="left">
                                          <td style="width:469px; " align="left">
                                            <xsl:for-each select="cbc:Telephone">
                                              <span>
                                                <xsl:text>Tel: </xsl:text>
                                              </span>
                                              <xsl:apply-templates/>
                                            </xsl:for-each>
                                            <xsl:for-each select="cbc:Telefax">
                                              <span>
                                                <xsl:text> Fax: </xsl:text>
                                              </span>
                                              <xsl:apply-templates/>
                                            </xsl:for-each>
                                            <span>
                                              <xsl:text>&#160;</xsl:text>
                                            </span>
                                          </td>
                                        </tr>
                                      </xsl:if>
                                      <xsl:if test="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
                                        <tr align="left">
                                          <td>
                                            <span>
                                              <xsl:text>Vergi Dairesi: </xsl:text>
                                              <xsl:value-of select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyTaxScheme/cac:TaxScheme/cbc:Name"/>
                                            </span>
                                          </td>
                                        </tr>
                                      </xsl:if>
                                    </xsl:for-each>
                                  </xsl:for-each>
                                </xsl:for-each>
                              </xsl:for-each>
                              <xsl:for-each select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification">
                                <tr align="left">
                                  <td>
                                    <xsl:value-of select="cbc:ID/@schemeID"/>
                                    <xsl:text>: </xsl:text>
                                    <xsl:value-of select="cbc:ID"/>
                                  </td>
                                </tr>
                              </xsl:for-each>
                            </tbody>
                          </table>
                          <hr/>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <br/>
                </td>
				  <td width="80%" align="center" valign="middle">

					  <img style="width:200px;" align="middle" alt="Arsiv Logo" src="data:image/png;base64,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"/>
					  <h1 align="center">

					  </h1>
				  </td>
				



  <td width="60%" align="center" valign="bottom" colspan="2">
                  <table border="1" height="13" id="despatchTable">
                    <tbody>
                      <xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode">
                        <tr style="height:13px;">
                          <td align="left">
                            <span style="font-weight:bold;">
                              <xsl:text>Fatura Tipi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="//n1:Invoice">
                              <xsl:for-each select="cbc:InvoiceTypeCode">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <tr>
                        <td align="left">
                          <span style="font-weight:bold;">
                            <xsl:text>Belge No:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="//n1:Invoice">
                            <xsl:for-each select="cbc:ID">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr>
                        <td align="left">
                          <span style="font-weight:bold;">
                            <xsl:text>Fatura Tarihi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="//n1:Invoice">
                            <xsl:for-each select="cbc:IssueDate">
                              <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                            </xsl:for-each>
                            <xsl:text> </xsl:text>
                            <xsl:for-each select="cbc:IssueTime">
                              <xsl:value-of select="substring(.,1,5)"/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr>
                        <td align="left">
                          <span style="font-weight:bold;">
                            <xsl:text>Düzenlenme Tarihi:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="//n1:Invoice">
                            <xsl:for-each select="cac:AdditionalDocumentReference">
                              <xsl:if test="cbc:ID = 'duzenlemeTarihi'">
                                <xsl:for-each select="cbc:IssueDate">
                                  <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                                </xsl:for-each>
                              </xsl:if>
                            </xsl:for-each>
                            <xsl:text> </xsl:text>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <tr>
                        <td align="left">
                          <span style="font-weight:bold;">
                            <xsl:text>Düzenlenme Zamanı:</xsl:text>
                          </span>
                        </td>
                        <td align="left">
                          <xsl:for-each select="//n1:Invoice">
                            <xsl:for-each select="cac:AdditionalDocumentReference">
                              <xsl:if test="cbc:ID = 'duzenlemeTarihi'">
                                <xsl:value-of select="cbc:DocumentType"/>
                              </xsl:if>
                            </xsl:for-each>
                            <xsl:text> </xsl:text>
                          </xsl:for-each>
                        </td>
                      </tr>
                      <xsl:for-each select="//n1:Invoice/cac:DespatchDocumentReference">
                        <tr>
                          <td align="left">
                            <span style="font-weight:bold;">
                              <xsl:text>İrsaliye No:</xsl:text>
                            </span>
                            <span>
                              <xsl:text>&#160;</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:value-of select="cbc:ID"/>
                          </td>
                        </tr>
                        <tr>
                          <td align="left">
                            <span style="font-weight:bold;">
                              <xsl:text>İrsaliye Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="cbc:IssueDate">
                              <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:for-each>
                      <xsl:if test="//n1:Invoice/cac:OrderReference">
                        <tr>
                          <td align="left">
                            <span style="font-weight:bold;">
                              <xsl:text>Sipariş No:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="//n1:Invoice/cac:OrderReference">
                              <xsl:for-each select="cbc:ID">
                                <xsl:apply-templates/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
                        <tr>
                          <td align="left">
                            <span style="font-weight:bold;">
                              <xsl:text>Sipariş Tarihi:</xsl:text>
                            </span>
                          </td>
                          <td align="left">
                            <xsl:for-each select="//n1:Invoice/cac:OrderReference">
                              <xsl:for-each select="cbc:IssueDate">
                                <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                              </xsl:for-each>
                            </xsl:for-each>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:for-each select ="//n1:Invoice/cac:AdditionalDocumentReference">
                        <xsl:if test ="cbc:ID = 'faturaIptal' and cbc:DocumentType = '1'">
                          <tr condition="//n1:Invoice/cac:OrderReference">
                            <td align="left" id="lineTableTd">
                              <strong style="color: rgb(105, 105, 105); font-family: verdana, geneva, sans-serif; font-size: 10px;">İptal Tarihi:</strong>
                            </td>
                            <td id="lineTableTd">
                              <span style="color: rgb(105, 105, 105);">
                                <span style="font-size: 10px;">
                                  <span style="font-family: verdana,geneva,sans-serif;">
                                    <xsl:for-each select="cbc:IssueDate">
                                      <xsl:value-of select="substring(.,9,2)"	/>-<xsl:value-of select="substring(.,6,2)" />-<xsl:value-of select="substring(.,1,4)" />
                                    </xsl:for-each>
                                    <div id="iptal">İptal</div>
                                  </span>
                                </span>
                              </span>
                            </td>
                          </tr>
                        </xsl:if>
                      </xsl:for-each>
                    </tbody>
                  </table>
                </td>	
              </tr>
              <tr align="left">
                <table id="ettnTable">
                  <tr style="height:13px;">
                    <td align="left" valign="top">
                      <span style="font-weight:bold;">
                        <xsl:text>ETTN: </xsl:text>
                      </span>
                    </td>
                    <td align="left" width="240px">
                      <xsl:for-each select="//n1:Invoice">
                        <xsl:for-each select="cbc:UUID">
                          <xsl:apply-templates/>
                        </xsl:for-each>
                      </xsl:for-each>
                    </td>
                  </tr>
                </table>
              </tr>
            </tbody>
          </table>
          <div id="lineTableAligner">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </div>
          <table border="1" id="lineTable" width="800">
            <tbody>
              <tr id="lineTableTr">
                <td id="lineTableTd" style="width:2%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Sıra No</xsl:text>
                  </span>
                </td>
                <!--td id="lineTableTd" style="width:5%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Malzeme/Hizmet Kodu</xsl:text>
                  </span>
                </td-->
                <td id="lineTableTd" style="width:16%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Malzeme/Hizmet Açıklaması</xsl:text>
                  </span>
                </td>
                <!--td id="lineTableTd" style="width:7%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Satır Açıklaması</xsl:text>
                  </span>
                </td-->
                <td id="lineTableTd" style="width:8%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Miktar</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:12%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Birim Fiyat</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:9%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>İskonto Oranı</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:11%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>İskonto Tutarı</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:9%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>KDV Oranı</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:9%"  align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>KDV Tutarı</xsl:text>
                  </span>
                </td>
                <!--td id="lineTableTd" style="width:7%;" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Diğer Vergiler</xsl:text>
                  </span>
                </td-->
                <td id="lineTableTd" style="width:6%;" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Vergi Muafiyet Sebebi</xsl:text>
                  </span>
                </td>
                <td id="lineTableTd" style="width:11%" align="center">
                  <span style="font-weight:bold;">
                    <xsl:text>Malzeme/Hizmet Tutarı</xsl:text>
                  </span>
                </td>
              </tr>
              <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &gt;= 20">
                <xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
                  <xsl:apply-templates select="."/>
                </xsl:for-each>
              </xsl:if>
              <xsl:if test="count(//n1:Invoice/cac:InvoiceLine) &lt; 20">
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[1]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[1]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:apply-templates select="//n1:Invoice"/>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[2]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[2]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[1]/cbc:ID = 1">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[3]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[3]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[2]/cbc:ID = 2">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[4]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[4]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[3]/cbc:ID = 3">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[5]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[5]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[4]/cbc:ID = 4">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[6]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[6]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[5]/cbc:ID = 5">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[7]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[7]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[6]/cbc:ID = 6">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[8]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[8]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[7]/cbc:ID = 7">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[9]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[9]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[8]/cbc:ID = 8">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[10]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[10]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[9]/cbc:ID = 9">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[11]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[11]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[10]/cbc:ID = 10">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[12]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[12]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[11]/cbc:ID = 11">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[13]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[13]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[12]/cbc:ID = 12">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[14]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[14]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[13]/cbc:ID = 13">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[15]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[15]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[14]/cbc:ID = 14">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[16]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[16]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[15]/cbc:ID = 15">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[17]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[17]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[16]/cbc:ID = 16">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[18]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[18]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[17]/cbc:ID = 17">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[19]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[19]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[18]/cbc:ID = 18">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[20]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[20]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:choose>
                      <xsl:when test="//n1:Invoice/cac:InvoiceLine[19]/cbc:ID = 19">
                        <xsl:call-template name="geneliskonto" />
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:apply-templates select="//n1:Invoice"/>
                      </xsl:otherwise>
                    </xsl:choose>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[21]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[21]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:apply-templates select="//n1:Invoice"/>
                  </xsl:otherwise>
                </xsl:choose>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:InvoiceLine[22]">
                    <xsl:apply-templates select="//n1:Invoice/cac:InvoiceLine[22]"/>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:apply-templates select="//n1:Invoice"/>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:if>
            </tbody>
          </table>
        </xsl:for-each>
		  
		  <br/>
        <table id="budgetContainerTable" width="800px">
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="270px">
              <span style="font-weight:bold;">
                <xsl:text>Malzeme/Hizmet Toplam Tutarı</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:81px; " align="right">
              <span>
                <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID = 'TRY'">
                    <xsl:text> TL</xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID"/>
                  </xsl:otherwise>
                </xsl:choose>
                  
              </span>
            </td>
          </tr>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" align="right" width="270px">
              <span style="font-weight:bold;">
                <xsl:text>Toplam İskonto</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" width="81px" align="right">
              <span>
                <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount, '###.##0,00', 'european')"/>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID = 'TRY'">
                    <xsl:text> TL</xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount/@currencyID"/>
                  </xsl:otherwise>
                </xsl:choose>
              </span>
            </td>
          </tr>
          <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
            <xsl:choose>
              <xsl:when test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
                <tr id="budgetContainerTr" align="right">
                  <td id="budgetContainerDummyTd"/>
                  <td id="lineTableBudgetTd" width="270px" align="right">
                    <span style="font-weight:bold; ">
                      <xsl:choose>
                        <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                          <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>Hesaplanan </xsl:text>
                          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                        </xsl:otherwise>
                      </xsl:choose>
                      <xsl:if test ="cbc:Percent">
                        <xsl:text>(%</xsl:text>
                        <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
                        <xsl:text>)</xsl:text>
                      </xsl:if>
                    </span>
                  </td>
                  <td id="lineTableBudgetTd" style="width:82px; " align="right">
                    <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                      <xsl:text> </xsl:text>
                      <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                      <xsl:choose>
                        <xsl:when test="../../cbc:TaxAmount/@currencyID='TRY'">
                          <xsl:text> TL</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text> </xsl:text>
                          <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </xsl:for-each>
                  </td>
                </tr>
              </xsl:when>
              <xsl:when test="cbc:Percent = 0.0000 or cbc:TaxAmount = 0">
                <tr id="budgetContainerTr" align="right">
                  <td id="budgetContainerDummyTd"/>
                  <td id="lineTableBudgetTd" width="270px" align="right">
                    <span style="font-weight:bold;">
                      <xsl:choose>
                        <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                          <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>Hesaplanan </xsl:text>
                          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                        </xsl:otherwise>
                      </xsl:choose>
                      <xsl:if test ="cbc:Percent">
                        <xsl:text>(%</xsl:text>
                        <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
                        <xsl:text>)</xsl:text>
                      </xsl:if>
                    </span>
                  </td>
                  <td id="lineTableBudgetTd" style="width:82px; " align="right">
                    <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                      <xsl:text> </xsl:text>
                      <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                      <xsl:choose>
                        <xsl:when test="../../cbc:TaxAmount/@currencyID='TRY'">
                          <xsl:text> TL</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text> </xsl:text>
                          <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                        </xsl:otherwise>
                      </xsl:choose>
                    </xsl:for-each>
                  </td>
                </tr>
              </xsl:when>
            </xsl:choose>
          </xsl:for-each>
          <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
            <xsl:if test="not(cbc:Percent = 0.0000) or not(cbc:TaxAmount = 0)">
              <tr id="budgetContainerTr" align="right">
                <td id="budgetContainerDummyTd"/>
                <td id="lineTableBudgetTd" width="270px" align="right">
                  <span style="font-weight:bold; ">
                    <xsl:choose>
                      <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                        <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:text>Tevkifat (</xsl:text>
                        <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                        <xsl:text>)</xsl:text>
                      </xsl:otherwise>
                    </xsl:choose>
                    <xsl:if test ="cbc:Percent">
                      <xsl:text>(%</xsl:text>
                      <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
                      <xsl:text>)</xsl:text>
                    </xsl:if>
                  </span>
                </td>
                <td id="lineTableBudgetTd" style="width:82px; " align="right">
                  <xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                    <xsl:choose>
                      <xsl:when test="../../cbc:TaxAmount/@currencyID='TRY'">
                        <xsl:text> TL</xsl:text>
                      </xsl:when>
                      <xsl:otherwise>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                      </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:if test="../../cbc:TaxAmount/@currencyID">
                      <xsl:text> </xsl:text>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                        <xsl:text>TL</xsl:text>
                      </xsl:if>
                      <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                        <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                      </xsl:if>
                    </xsl:if>
                  </xsl:for-each>
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
          <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:82px; " align="right">
                <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                  <xsl:value-of
										select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
                  <xsl:value-of
										select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
                </xsl:if>

                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                    <xsl:text> TL</xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold; ">
                  <xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" style="width:82px; " align="right">
                <xsl:if test = "n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
                  <xsl:value-of
										select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:if test = "//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
                  <xsl:value-of
										select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
                </xsl:if>
                <xsl:choose>
                  <xsl:when test="//n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
                    <xsl:text> TL</xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:if>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" width="270px" align="right">
              <span style="font-weight:bold;">
                <xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:82px; " align="right">
              <xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount, '###.##0,00', 'european')"/>
              <xsl:choose>
                <xsl:when test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID = 'TRY'">
                  <xsl:text>&#160;TL</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount/@currencyID"/>
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
          <tr id="budgetContainerTr" align="right">
            <td id="budgetContainerDummyTd"/>
            <td id="lineTableBudgetTd" width="270px" align="right">
              <span style="font-weight:bold;">
                <xsl:text>Ödenecek Tutar</xsl:text>
              </span>
            </td>
            <td id="lineTableBudgetTd" style="width:82px; " align="right">
              <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"/>
              <xsl:choose>
                <xsl:when test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID = 'TRY'">
                  <xsl:text>&#160;TL</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount/@currencyID"/>
                </xsl:otherwise>
              </xsl:choose>
            </td>
          </tr>
        </table>
        <!--<xsl:if test="normalize-space(//n1:Invoice/cac:PricingExchangeRate) and //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate &gt; 0">
          <table id="budgetContainerTable" width="800px">
            <tr id="budgetContainerTr2" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold;">
                  <xsl:text>Döviz Kuru</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" width="082px" align="right">
                <xsl:value-of select="format-number(//n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,0000', 'european')"/>
                <xsl:text>&#160;</xsl:text>
                <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
              </td>
            </tr>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold;">
                  <xsl:text>Malzeme/Hizmet Toplam Tutarı</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" width="082px" align="right">
                <span>
                  <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                    <xsl:if test="cbc:DocumentType = 'LINEEXTENSIONAMOUNT'">
                      <xsl:value-of select="cbc:ID"/>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:text>&#160;</xsl:text>
                  <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
                </span>
              </td>
            </tr>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold;">
                  <xsl:text>Toplam İskonto</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" width="082px" align="right">
                <span>
                  <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                    <xsl:if test="cbc:DocumentType = 'ALLOWANCETOTALAMOUNT'">
                      <xsl:value-of select="cbc:ID"/>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:text>&#160;</xsl:text>
                  <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
                </span>
              </td>
            </tr>
            <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
              <xsl:if test="not(cbc:TaxAmount=0)">
                <tr id="budgetContainerTr" align="right">
                  <td id="budgetContainerDummyTd"/>
                  <td id="lineTableBudgetTd" width="270px" align="right">
                    <span style="font-weight:bold; ">
                      <xsl:choose>
                        <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                          <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>Hesaplanan </xsl:text>
                          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                        </xsl:otherwise>
                      </xsl:choose>
                      <xsl:if test="(cbc:Percent='')">
                        <xsl:text> </xsl:text>
                      </xsl:if>
                      <xsl:if test="cbc:Percent !=''">
                        <xsl:text>(%</xsl:text>
                        <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
                        <xsl:text>)</xsl:text>
                      </xsl:if>
                    </span>
                  </td>
                  <td id="lineTableBudgetTd" style="width:82px; " align="right">
                    <xsl:text> </xsl:text>
                    <xsl:variable name="var_Percent" select="cbc:Percent"/>
                    <xsl:variable name="var_TaxTypeCode" select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                    <xsl:variable name="var_Name" select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>


                    <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                      <xsl:if test="(cbc:DocumentTypeCode = $var_TaxTypeCode) and (not(cbc:ID=0))" >
                        <xsl:choose>
                          <xsl:when test="(cbc:DocumentType = $var_Percent) and (cbc:DocumentDescription = $var_Name)">
                            <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')"/>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:if test="not($var_Percent) and not(cbc:DocumentType) and (cbc:DocumentDescription = $var_Name)">
                              <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')"/>
                            </xsl:if>
                          </xsl:otherwise>
                        </xsl:choose>
                      </xsl:if>
                    </xsl:for-each>

                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
                  </td>
                </tr>
              </xsl:if>
            </xsl:for-each>
            <xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
              <xsl:if test="not(cbc:TaxAmount = 0)">
                <tr id="budgetContainerTr" align="right">
                  <td id="budgetContainerDummyTd"/>
                  <td id="lineTableBudgetTd" width="270px" align="right">
                    <span style="font-weight:bold; ">
                      <xsl:choose>
                        <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                          <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>Tevkifat (</xsl:text>
                          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                          <xsl:text>-</xsl:text>
                          <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                          <xsl:text>)</xsl:text>
                        </xsl:otherwise>
                      </xsl:choose>
                      <xsl:if test="(cbc:Percent='')">
                        <xsl:text> </xsl:text>
                      </xsl:if>
                      <xsl:if test="cbc:Percent !=''">
                        <xsl:text>(%</xsl:text>
                        <xsl:value-of select="format-number(cbc:Percent, '###.##0,00', 'european')"/>
                        <xsl:text>)</xsl:text>
                      </xsl:if>
                    </span>
                  </td>
                  <td id="lineTableBudgetTd" style="width:82px; " align="right">
                    <xsl:text> </xsl:text>
                    <xsl:variable name="var_Percent" select="cbc:Percent"/>
                    <xsl:variable name="var_TaxTypeCode" select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                    <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                      <xsl:if test="cbc:DocumentTypeCode = $var_TaxTypeCode">
                        <xsl:value-of select="format-number(cbc:ID, '###.##0,00', 'european')"/>
                      </xsl:if>
                    </xsl:for-each>
                    <xsl:text>&#160;</xsl:text>
                    <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
                  </td>
                </tr>
              </xsl:if>
            </xsl:for-each>
            <tr id="budgetContainerTr" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold;">
                  <xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" width="082px" align="right">
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                  <xsl:if test="cbc:DocumentType = 'TAXINCLUSIVEAMOUNT'">
                    <xsl:value-of select="cbc:ID"/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:text>&#160;</xsl:text>
                <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
              </td>
            </tr>
            <tr id="budgetContainerTr2" align="right">
              <td id="budgetContainerDummyTd"/>
              <td id="lineTableBudgetTd" width="270px" align="right">
                <span style="font-weight:bold;">
                  <xsl:text>Ödenecek Tutar</xsl:text>
                </span>
              </td>
              <td id="lineTableBudgetTd" width="082px" align="right">
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                  <xsl:if test="cbc:DocumentType = 'PAYABLEAMOUNT'">
                    <xsl:value-of select="cbc:ID"/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:text>&#160;</xsl:text>
                <xsl:value-of select="//n1:Invoice/cac:PricingExchangeRate/cbc:TargetCurrencyCode"/>
              </td>
            </tr>
          </table>
        </xsl:if>-->
        <br/>
        <table id="notesTable" width="800" align="left" height="120">
          <tbody>
            <tr align="left">
              <td id="notesTableTd">
                <xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote">
                  <b>&#160;&#160;&#160;&#160;&#160; Ödeme Notu:&#160;&#160;</b>
                  <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cbc:InstructionNote"/>
                  <br/>
                </xsl:if>
                <xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
                  <xsl:if test="normalize-space(cac:TaxCategory/cbc:TaxExemptionReason)">
                    <b>&#160;&#160;&#160;&#160;&#160; Vergi muafiyet sebebi:&#160;&#160;</b>
                    <xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
                    <br/>
                  </xsl:if>
                </xsl:for-each>
                <xsl:if test="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote">
                  <b>&#160;&#160;&#160;&#160;&#160; Hesap Açıklaması:&#160;&#160;</b>
                  <xsl:value-of select="//n1:Invoice/cac:PaymentMeans/cac:PayeeFinancialAccount/cbc:PaymentNote"/>
                  <br/>
                </xsl:if>
                <xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
                  <b>&#160;&#160;&#160;&#160;&#160; Ödeme Koşulu:&#160;&#160;</b>
                  <xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
                  <br/>
                </xsl:if>
                <br/>
                <br/>
                <xsl:if test="//n1:Invoice/cbc:Note">
                  <b>&#160;&#160;&#160;&#160;&#160; Genel Açıklamalar</b>
                  <br/>
                  <xsl:for-each select="//n1:Invoice/cbc:Note">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;</b>
                    <xsl:value-of select="."/>
                    <br/>
					  
					  
					  
                  </xsl:for-each>
                </xsl:if>
                <br/>
				 


				  <table border="0" cellpadding="0" cellspacing="0" style="width: 789px;" width="700">
					  <colgroup>
						  <col />
						  <col />
						  <col span="3" />
					  </colgroup>
					  <tbody>
						  <tr height="16">
							  <th style="height: 16px; width: 103px; text-align: center; border-color: rgb(153, 0, 0);">
								  <span style="font-family:verdana,geneva,sans-serif;">
									  <strong>
										  <span style="color:#800000;">
											  <span style="font-size:10px;">BANKA ADI</span>
										  </span>
									  </strong>
								  </span>
							  </th>
							  <td style="width: 109px; text-align: center; border-color: rgb(204, 0, 0);">
								  <span style="font-family:verdana,geneva,sans-serif;">
									  <strong>
										  <span style="color:#800000;">
											  <span style="font-size:10px;">&#x15e;UBE KODU/ADI</span>
										  </span>
									  </strong>
								  </span>
								  			  
						  	  <br/>
			
				  
							  </td>
							  			  
						
				  <br/>
				  
							  <td style="width: 193px; text-align: center; border-color: rgb(204, 0, 0);">
								  <span style="font-family:verdana,geneva,sans-serif;">
									  <strong>
										  <span style="color:#800000;">
											  <span style="font-size:10px;">IBAN NO TL</span>
										  </span>
									  </strong>
								  </span>
							  </td>
							  <td style="width: 186px; text-align: center; border-color: rgb(204, 0, 0);">
								  <span style="font-family:verdana,geneva,sans-serif;">
									  <strong>
										  <span style="color:#800000;">
											  <span style="font-size:10px;">IBAN NO USD</span>
										  </span>
									  </strong>
								  </span>
							  </td>
							  <td style="width: 186px; text-align: center; border-color: rgb(204, 0, 0);">
								  <span style="font-family:verdana,geneva,sans-serif;">
									  <strong>
										  <span style="color:#800000;">
											  <span style="font-size:10px;">IBAN NO EURO</span>
										  </span>
									  </strong>
								  </span>
							  </td>
						  </tr>
						  <tr height="15">
							  <td height="15" style="height: 15px; width: 103px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">GARANTİ BANKASI</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 109px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TELSİZ MAHALLESİ ŞUBESİ (1453)</span>
									  </span>
								  </strong>
								  			  
						  	  <br/>
				  <br/>
				  
							  </td>
							      <br/>
							  <td style="width: 193px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TR68 0006 2001 4530 0006 2983 96</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 186px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TR24 0006 2001 4530 0009 0966 68</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 186px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TR51 0006 2001 4530 0009 0966 67</span>
									  </span>
								  </strong>
							  </td>
							      <br/>
						  </tr>
						  
						  
						  
						  	  <br/>
				  <br/>
				  
						  <tr height="15">
						  			  
						  	  <br/>
				  <br/>
				  
							  <td height="15" style="height: 15px; width: 103px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">VAKIFBANK</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 109px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">BAHÇELİEVLER ŞUBESİ (315)</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 193px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TR47 0001 5001 5800 7313 3902 41</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 186px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TR67 0001 5001 5804 8019 6923 72</span>
									  </span>
								  </strong>
							  </td>
							  <td style="width: 186px; text-align: center;">
								  <strong>
									  <span style="font-size:8px;">
										  <span style="font-family:verdana,geneva,sans-serif;">TR57 0001 5001 5804 8019 6923 58</span>
									  </span>
								  </strong>
							  </td>
						  </tr>
						 
					
					  </tbody>
				  </table>
				  <br/>
				  <br/>
				  
                <xsl:if test="//n1:Invoice/cac:BillingReference/cac:AdditionalDocumentReference/cbc:DocumentTypeCode = 'OKCBF'">
                  <b>&#160;&#160;&#160;&#160;&#160; Okc Bilgi Fişi Detayları</b>
                  <br/>
                  <xsl:for-each select="//n1:Invoice/cac:BillingReference">
                    <b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b>
                    <b>
                      <xsl:text>Fiş No:</xsl:text>
                    </b>
                    <xsl:value-of select="//n1:Invoice/cbc:ID"/>
                    <xsl:text>, </xsl:text>
                    <b>
                      <xsl:text>Fiş Tarihi:</xsl:text>
                    </b>
                    <xsl:for-each select="cac:AdditionalDocumentReference/cac:ValidityPeriod/cbc:StartDate">
                      <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
                    </xsl:for-each>
                    <xsl:text>, </xsl:text>
                    <b>
                      <xsl:text>Fiş Saati:</xsl:text>
                    </b>
                    <xsl:value-of select="cac:AdditionalDocumentReference/cac:ValidityPeriod/cbc:StartTime"/>
                    <xsl:text>, </xsl:text>
                    <b>
                      <xsl:text>Fiş Tipi:</xsl:text>
                    </b>
                    <xsl:value-of select="cac:AdditionalDocumentReference/cbc:DocumentDescription"/>
                    <xsl:text>, </xsl:text>
                    <b>
                      <xsl:text>Z Rapor No:</xsl:text>
                    </b>
                    <xsl:value-of select="cac:AdditionalDocumentReference/cac:Attachment/cac:ExternalReference/cbc:URI"/>
                    <xsl:text>, </xsl:text>
                    <b>
                      <xsl:text>Seri No:</xsl:text>
                    </b>
                    <xsl:value-of select="cac:AdditionalDocumentReference/cac:IssuerParty/cbc:EndpointID"/>
                    <br/>
                  </xsl:for-each>
                </xsl:if>
                <br/>
                <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                  <xsl:if test="cbc:ID = 'EINVOICE'">
                    <xsl:if test="cbc:DocumentType=3">
                      &#160;&#160;&#160;&#160;&#160; Bu satış internet üzerinden yapılmıştır.<br/>
                      <br/>
                      <b>&#160;&#160;&#160;&#160;&#160; İnternet Satış Bilgileri:</b>
                      <br/>
                      <br/>
                      <xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/webAdresi'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Satış İşleminin Yapıldığı Web Adresi: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/odemeAracisiAdi'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ödeme Aracısı: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/odemeSekli'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ödeme Şekli: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/odemeTarihi'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Ödeme Tarihi: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderimTarihi'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderim Tarihi: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/gercekKisi/tckn'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan TCKN: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/tuzelKisi/vkn'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan VKN: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/gercekKisi/adiSoyadi'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan Adı Soyadı: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                        <xsl:if test="cbc:ID = 'internetSatisBilgi/gonderiBilgileri/gonderiTasiyan/tuzelKisi/unvan'">
                          &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>Gönderi Taşıyan Unvanı: </b>
                          <xsl:value-of select="cbc:DocumentType"/>
                          <br/>
                        </xsl:if>
                      </xsl:for-each>
                      <br/>
                      <b>&#160;&#160;&#160;&#160;&#160; İade  Bölümü:</b>
                      <table style="margin-left:40px">
                        <tr id="lineTableTr">
                          <td id="lineTableTd" style="width:300px">
                            <b>Malın Cinsi</b>
                          </td>
                          <td id="lineTableTd" style="width:100px">
                            <b>Malın Miktarı</b>
                          </td>
                          <td id="lineTableTd" style="width:150px">
                            <b>Birim Fiyat</b>
                          </td>
                          <td id="lineTableTd" style="width:150px">
                            <b>Tutar</b>
                          </td>
                        </tr>
                        <tr id="lineTableTr">
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                        </tr>
                        <tr id="lineTableTr">
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                        </tr>
                        <tr id="lineTableTr">
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                        </tr>
                        <tr id="lineTableTr">
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                          <td id="lineTableTd">&#160;</td>
                        </tr>
                      </table>
                      <br/>
                      <br/>
                      <b>&#160;&#160;&#160;&#160;&#160;Malı İade Edenin</b>
                      <br/>
                      <b>&#160;&#160;&#160;&#160;&#160;&#160;Adı Soyadı</b>
                      <br/>
                      <b>&#160;&#160;&#160;&#160;&#160;&#160;Adresi</b>
                      <br/>
                      <br/>
                      <br/>
                      <b>&#160;&#160;&#160;&#160;&#160;&#160;İmzası</b>
                      <br/>
                      <br/>
                      <br/>
                      <br/>
                    </xsl:if>
                  </xsl:if>
                </xsl:for-each>


                <div style="color:red; font-weight:bold;margin-left:20px;">
                  <xsl:text>e-Arşiv faturalarınızı elektronik ortamda görüntülemek ve indirilebilmek için "</xsl:text>
                  <a style="color:blue;" target="_blank" href="https://faturasorgulama.elogo.com.tr">
                    <xsl:text>https://faturasorgulama.elogo.com.tr</xsl:text>
                  </a>
                  <xsl:text>" platformunu kullanabilirsiniz.</xsl:text>
                </div>

                <xsl:if test="not(//n1:Invoice/cac:DespatchDocumentReference)">
                  <div style="text-align:center">İrsaliye yerine geçer.</div>
                </xsl:if>

                <xsl:if test="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentType='ELEKTRONIK'">
                  <div style="text-align:center">e-Arşiv izni kapsamında elektronik ortamda iletilmiştir.</div>
                </xsl:if>
                <br/>
                <br/>
              </td>
            </tr>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="dateFormatter">
    <xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
  </xsl:template>
  <xsl:template match="//n1:Invoice/cac:InvoiceLine">
    <tr id="lineTableTr" valign="top">
      <xsl:choose>
        <xsl:when test="./cac:AllowanceCharge">
          <!--Sıra No-->
          <td id="lineTableTd">
            <table border="0">
              <tbody>
                <tr>
                  <td>
                    <xsl:value-of select="./cbc:ID"/>
                  </td>
                </tr>
                <xsl:for-each select="cac:AllowanceCharge">
                  <tr>
                    <td>
                      <xsl:text>&#160;</xsl:text>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </td>
          <!--Malzeme/Hizmet Kodu-->
          <!--td id="lineTableTd">
            <table border="0">
              <tbody>
                <tr>
                  <td>
                    <span>
                      <xsl:value-of select="./cac:Item/cbc:Name"/>
                    </span>
                  </td>
                </tr>
                <xsl:for-each select="cac:AllowanceCharge">
                  <tr>
                    <td>
                      <xsl:text>&#160;</xsl:text>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </td-->
          <!--Malzeme/Hizmet Açıklaması-->
          <td id="lineTableTd">
            <table border="0">
              <tbody>
                <tr>
                  <td>
                    <span>
                      <xsl:choose>
                        <xsl:when test="./cac:Item/cbc:Description">
                          <xsl:value-of select="./cac:Item/cbc:Description"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>&#160;</xsl:text>
                        </xsl:otherwise>
                      </xsl:choose>
                    </span>
                  </td>
                </tr>
                <xsl:for-each select="cac:AllowanceCharge">
                  <tr>
                    <td>
                      <b>
                        <xsl:text>&#160;&#160;&#160;&#160;&#160;</xsl:text>
                        <xsl:value-of select="cbc:AllowanceChargeReason"/>

                      </b>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </td>
          <!--Satır Açıklaması-->
          <!--td id="lineTableTd">
            <table border="0">
              <tbody>
                <tr>
                  <td>
                    <xsl:for-each select="./cbc:Note">
                      <span>
                        <xsl:value-of select="."/>
                      </span>
                      <br/>
                    </xsl:for-each>
                  </td>
                </tr>
              </tbody>
            </table>
          </td-->
          <!--Miktar-->
          <td id="lineTableTd" align="right">
            <table border="0" width="100%">
              <tbody>
                <tr>
                  <td>
                    <span>
                      <xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,##', 'european')"/>
                      <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
                        <xsl:for-each select="./cbc:InvoicedQuantity">
                          <xsl:text> </xsl:text>
                          <xsl:choose>
                            <xsl:when test="@unitCode='C62'">
                              <span>
                                <xsl:text>Adet</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='26'">
                              <span>
                                <xsl:text>Ton</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BX'">
                              <span>
                                <xsl:text>Kutu</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='LTR'">
                              <span>
                                <xsl:text>LT</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='EA'">
                              <span>
                                <xsl:text>Adet</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='NIU'">
                              <span>
                                <xsl:text>Adet</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='KGM'">
                              <span>
                                <xsl:text>KG</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='KJO'">
                              <span>
                                <xsl:text>kJ</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='GRM'">
                              <span>
                                <xsl:text>GR</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MGM'">
                              <span>
                                <xsl:text>MG</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='NT'">
                              <span>
                                <xsl:text>Net Ton</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='GT'">
                              <span>
                                <xsl:text>GT</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MTR'">
                              <span>
                                <xsl:text>M</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MMT'">
                              <span>
                                <xsl:text>MM</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='KTM'">
                              <span>
                                <xsl:text>KM</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MLT'">
                              <span>
                                <xsl:text>ML</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MMQ'">
                              <span>
                                <xsl:text>MM³</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CLT'">
                              <span>
                                <xsl:text>CL</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CMK'">
                              <span>
                                <xsl:text>CM²</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CMQ'">
                              <span>
                                <xsl:text>CM³</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CMT'">
                              <span>
                                <xsl:text>CM</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MTK'">
                              <span>
                                <xsl:text>M²</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MTQ'">
                              <span>
                                <xsl:text>M³</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='DAY'">
                              <span>
                                <xsl:text> Gün</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MON'">
                              <span>
                                <xsl:text> Ay</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='PA'">
                              <span>
                                <xsl:text> Paket</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='KWH'">
                              <span>
                                <xsl:text> KWH</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='INH'">
                              <span>
                                <xsl:text>IN</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='FOT'">
                              <span>
                                <xsl:text>FT</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='MMK'">
                              <span>
                                <xsl:text>MM²</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='INK'">
                              <span>
                                <xsl:text>IN²</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='FTK'">
                              <span>
                                <xsl:text>FT²</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='INQ'">
                              <span>
                                <xsl:text>IN³</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='FTQ'">
                              <span>
                                <xsl:text>FT³</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='ONZ'">
                              <span>
                                <xsl:text>OZ</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='LBR'">
                              <span>
                                <xsl:text>LB</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='B4'">
                              <span>
                                <xsl:text>Varil</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='28'">
                              <span>
                                <xsl:text>KG</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BG'">
                              <span>
                                <xsl:text>Çuval</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BE'">
                              <span>
                                <xsl:text>Deste</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BJ'">
                              <span>
                                <xsl:text>Kova</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BK'">
                              <span>
                                <xsl:text>Sepet</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BL'">
                              <span>
                                <xsl:text>Balya</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='BO'">
                              <span>
                                <xsl:text>Şişe</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CO'">
                              <span>
                                <xsl:text>Damacana</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CQ'">
                              <span>
                                <xsl:text>Kartuş</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CS'">
                              <span>
                                <xsl:text>Kasa</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='CT'">
                              <span>
                                <xsl:text>Karton</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='RO'">
                              <span>
                                <xsl:text>Rulo</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='11'">
                              <span>
                                <xsl:text>Takım</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:when test="@unitCode='2W'">
                              <span>
                                <xsl:text>Sepet</xsl:text>
                              </span>
                            </xsl:when>
                            <xsl:otherwise>
                              <span>
                                <xsl:value-of select="@unitCode"/>
                              </span>
                            </xsl:otherwise>
                          </xsl:choose>
                        </xsl:for-each>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
          <!--Birim Fiyatı-->
          <td id="lineTableTd" align="right">
            <table border="0">
              <tbody>
                <tr>
                  <td align="right">
                    <span>
                      <xsl:text>&#160;</xsl:text>
                      <xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,0000####', 'european')"/>
                      <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
                        <xsl:text> </xsl:text>
                        <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
                          <xsl:text>TL</xsl:text>
                        </xsl:if>
                        <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
                          <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
                        </xsl:if>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
          <!--İskonto Oranı-->
          <td id="lineTableTd" align="right">
            <table border="0" width="100%">
              <tbody>
                <tr>
                  <td>
                    <xsl:text>&#160;</xsl:text>
                  </td>
                </tr>
                <xsl:for-each select="cac:AllowanceCharge">
                  <tr>
                    <td align="right">
                      <span style="font-size:9px;">
                        <b>
                          <xsl:text>%</xsl:text>
                          <xsl:value-of select="format-number(./cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')"/>
                        </b>
                      </span>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </td>
          <!--İskonto Tutarı-->
          <td id="lineTableTd" align="right">
            <table width="100%">
              <tbody>
                <tr>
                  <td>
                    <xsl:text>&#160;</xsl:text>
                  </td>
                </tr>
                <xsl:for-each select="cac:AllowanceCharge">
                  <tr>
                    <td align="right">
                      <span style="font-size:9px;">
                        <b>
                          <xsl:value-of select="format-number(./cbc:Amount, '###.##0,00', 'european')"/>
                          <xsl:if test="./cbc:Amount/@currencyID">
                            <xsl:text> </xsl:text>
                            <xsl:if test="./cbc:Amount/@currencyID = 'TRY'">
                              <xsl:text>TL</xsl:text>
                            </xsl:if>
                            <xsl:if test="./cbc:Amount/@currencyID != 'TRY'">
                              <xsl:value-of select="./cbc:Amount/@currencyID"/>
                            </xsl:if>
                          </xsl:if>
                        </b>
                      </span>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </td>
          <!--KDV Oranı-->
          <td id="lineTableTd" align="right">
            <table border="0" width="100%">
              <tbody>
                <tr>
                  <td align="right">
                    <span>
                      <xsl:text>&#160;</xsl:text>
                      <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                        <xsl:if test="cbc:TaxTypeCode='0015' ">
                          <xsl:text> </xsl:text>
                          <xsl:if test="../../cbc:Percent">
                            <xsl:text> %</xsl:text>
                            <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')" />
                          </xsl:if>
                        </xsl:if>
                      </xsl:for-each>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
          <!--KDV Tutarı-->
          <td id="lineTableTd" align="right">
            <table border="0" width="100%">
              <tbody>
                <tr>
                  <td align="right">
                    <span>
                      <xsl:text>&#160;</xsl:text>
                      <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                        <xsl:if test="cbc:TaxTypeCode='0015' ">
                          <xsl:text> </xsl:text>
                          <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                          <xsl:if test="../../cbc:TaxAmount/@currencyID">
                            <xsl:text> </xsl:text>
                            <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                              <xsl:text>TL</xsl:text>
                            </xsl:if>
                            <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                              <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                            </xsl:if>
                          </xsl:if>
                        </xsl:if>
                      </xsl:for-each>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
          <!--Diğer Vergiler-->
          <!--td id="lineTableTd" align="left">
            <table border="0" width="100%">
              <tbody>
                <xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme and ./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode!='0015'">
                  <tr>
                    <td>
                      <span>
                        <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                          <xsl:if test="cbc:TaxTypeCode!='0015' ">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="cbc:Name"/>
                            <xsl:text>)</xsl:text>
                            <xsl:if test="../../cbc:Percent">
                              <xsl:text> (%</xsl:text>
                              <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                              <xsl:text>)=</xsl:text>
                            </xsl:if>
                            <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                            <xsl:if test="../../cbc:TaxAmount/@currencyID">
                              <xsl:text> </xsl:text>
                              <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                                <xsl:text>TL</xsl:text>
                              </xsl:if>
                              <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                                <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                              </xsl:if>
                            </xsl:if>
                          </xsl:if>
                        </xsl:for-each>
                      </span>
                    </td>
                  </tr>
                </xsl:if>
                <xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal">
                  <xsl:if test="not(cbc:TaxAmount = 0)">
                    <tr>
                      <td>
                        <xsl:choose>
                          <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                            <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>Tevkifat (</xsl:text>
                            <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                            <xsl:text>)</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>
                        <xsl:if test="cbc:Percent !=''">
                          <xsl:text>(%</xsl:text>
                          <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
                          <xsl:text>)= </xsl:text>
                        </xsl:if>
                        <xsl:value-of select="format-number(../cbc:TaxAmount, '###.##0,00', 'european')"/>
                        <xsl:if test="../cbc:TaxAmount/@currencyID">
                          <xsl:if test="../cbc:TaxAmount/@currencyID = 'TRY'">
                            <xsl:text>TL</xsl:text>
                          </xsl:if>
                          <xsl:if test="../cbc:TaxAmount/@currencyID != 'TRY'">
                            <xsl:value-of select="../cbc:TaxAmount/@currencyID"/>
                          </xsl:if>
                        </xsl:if>
                      </td>
                    </tr>
                  </xsl:if>
                </xsl:for-each>
              </tbody>
            </table>
          </td-->
          <!--Vergi Muafiyet Sebebi-->
          <td id="lineTableTd">
            <table border="0" width="100%">
              <tbody>
                <tr>
                  <td>
                    <span>
                      <xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason">
                        <xsl:value-of select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"/>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
          <!--Malzeme/Hizmet Tutarı-->
          <td id="lineTableTd" align="right">
            <table border="0" width="100%">
              <tbody>
                <tr>
                  <td align="right">
                    <span>
                      <xsl:text>&#160;</xsl:text>
                      <xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
                      <xsl:if test="./cbc:LineExtensionAmount/@currencyID">
                        <xsl:text> </xsl:text>
                        <xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRY'">
                          <xsl:text>TL</xsl:text>
                        </xsl:if>
                        <xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRY'">
                          <xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
                        </xsl:if>
                      </xsl:if>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </td>
        </xsl:when>
        <xsl:otherwise>
          <!--Sıra No-->
          <td id="lineTableTd">
            <span>
              <xsl:text>&#160;</xsl:text>
              <xsl:value-of select="./cbc:ID"/>
            </span>
          </td>
          <!--Malzeme/Hizmet Kodu-->
          <!--td id="lineTableTd">
            <span>
              <xsl:text>&#160;</xsl:text>
              <xsl:value-of select="./cac:Item/cbc:Name"/>
            </span>
          </td-->
          <!--Malzeme/Hizmet Açıklaması-->
          <td id="lineTableTd">
            <span>
              <xsl:text>&#160;</xsl:text>
              <xsl:value-of select="./cac:Item/cbc:Description"/>
            </span>
          </td>
          <!--Satır Açıklaması -->
          <!--td id="lineTableTd">
            <xsl:for-each select="./cbc:Note">
              <span>
                <xsl:text>&#160;</xsl:text>
                <xsl:value-of select="."/>
              </span>
              <br/>
            </xsl:for-each>
          </td-->
          <!--Miktar-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,##', 'european')"/>
              <xsl:if test="./cbc:InvoicedQuantity/@unitCode">
                <xsl:for-each select="./cbc:InvoicedQuantity">
                  <xsl:text> </xsl:text>
                  <xsl:choose>
                    <xsl:when test="@unitCode='C62'">
                      <span>
                        <xsl:text>Adet</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='26'">
                      <span>
                        <xsl:text>Ton</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BX'">
                      <span>
                        <xsl:text>Kutu</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='LTR'">
                      <span>
                        <xsl:text>LT</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='EA'">
                      <span>
                        <xsl:text>Adet</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='NIU'">
                      <span>
                        <xsl:text>Adet</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='KGM'">
                      <span>
                        <xsl:text>KG</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='KJO'">
                      <span>
                        <xsl:text>kJ</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='GRM'">
                      <span>
                        <xsl:text>GR</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MGM'">
                      <span>
                        <xsl:text>MG</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='NT'">
                      <span>
                        <xsl:text>Net Ton</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='GT'">
                      <span>
                        <xsl:text>GT</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MTR'">
                      <span>
                        <xsl:text>M</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MMT'">
                      <span>
                        <xsl:text>MM</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='KTM'">
                      <span>
                        <xsl:text>KM</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MLT'">
                      <span>
                        <xsl:text>ML</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MMQ'">
                      <span>
                        <xsl:text>MM³</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CLT'">
                      <span>
                        <xsl:text>CL</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CMK'">
                      <span>
                        <xsl:text>CM²</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CMQ'">
                      <span>
                        <xsl:text>CM³</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CMT'">
                      <span>
                        <xsl:text>CM</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MTK'">
                      <span>
                        <xsl:text>M²</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MTQ'">
                      <span>
                        <xsl:text>M³</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='DAY'">
                      <span>
                        <xsl:text> Gün</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MON'">
                      <span>
                        <xsl:text> Ay</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='PA'">
                      <span>
                        <xsl:text> Paket</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='KWH'">
                      <span>
                        <xsl:text> KWH</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='INH'">
                      <span>
                        <xsl:text>IN</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='FOT'">
                      <span>
                        <xsl:text>FT</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='MMK'">
                      <span>
                        <xsl:text>MM²</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='INK'">
                      <span>
                        <xsl:text>IN²</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='FTK'">
                      <span>
                        <xsl:text>FT²</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='INQ'">
                      <span>
                        <xsl:text>IN³</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='FTQ'">
                      <span>
                        <xsl:text>FT³</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='ONZ'">
                      <span>
                        <xsl:text>OZ</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='LBR'">
                      <span>
                        <xsl:text>LB</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='B4'">
                      <span>
                        <xsl:text>Varil</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='28'">
                      <span>
                        <xsl:text>KG</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BG'">
                      <span>
                        <xsl:text>Çuval</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BE'">
                      <span>
                        <xsl:text>Deste</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BJ'">
                      <span>
                        <xsl:text>Kova</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BK'">
                      <span>
                        <xsl:text>Sepet</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BL'">
                      <span>
                        <xsl:text>Balya</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='BO'">
                      <span>
                        <xsl:text>Şişe</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CO'">
                      <span>
                        <xsl:text>Damacana</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CQ'">
                      <span>
                        <xsl:text>Kartuş</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CS'">
                      <span>
                        <xsl:text>Kasa</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='CT'">
                      <span>
                        <xsl:text>Karton</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='RO'">
                      <span>
                        <xsl:text>Rulo</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='11'">
                      <span>
                        <xsl:text>Takım</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:when test="@unitCode='2W'">
                      <span>
                        <xsl:text>Sepet</xsl:text>
                      </span>
                    </xsl:when>
                    <xsl:otherwise>
                      <span>
                        <xsl:value-of select="@unitCode"/>
                      </span>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
              </xsl:if>
            </span>
          </td>
          <!--Birim Fiyatı-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
              <xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,0000####', 'european')"/>
              <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
                <xsl:text> </xsl:text>
                <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
                  <xsl:text>TL</xsl:text>
                </xsl:if>
                <xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
                  <xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
                </xsl:if>
              </xsl:if>
            </span>
          </td>
          <!--İskonto Oranı-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <!--İskonto Tutarı-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <!--KDV Oranı-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                <xsl:if test="cbc:TaxTypeCode='0015' ">
                  <xsl:text> </xsl:text>
                  <xsl:if test="../../cbc:Percent">
                    <xsl:text> %</xsl:text>
                    <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                    <xsl:text>&#160;</xsl:text>
                  </xsl:if>
                </xsl:if>
              </xsl:for-each>
            </span>
          </td>
          <!--KDV Tutarı-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                <xsl:if test="cbc:TaxTypeCode='0015' ">
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                  <xsl:if test="../../cbc:TaxAmount/@currencyID">
                    <xsl:text> </xsl:text>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                      <xsl:text>TL</xsl:text>
                      <xsl:text>&#160;</xsl:text>
                    </xsl:if>
                    <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                      <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                      <xsl:text>&#160;</xsl:text>
                    </xsl:if>
                  </xsl:if>
                </xsl:if>
              </xsl:for-each>
            </span>
          </td>
          <!--Diğer Vergiler-->
          <!--td id="lineTableTd" align="left">
            <table border="0" width="100%">
              <tbody>
                <xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme and ./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode!='0015'">
                  <tr>
                    <td>
                      <span>
                        <xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
                          <xsl:if test="cbc:TaxTypeCode!='0015' ">
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="cbc:Name"/>
                            <xsl:text>)</xsl:text>
                            <xsl:if test="../../cbc:Percent">
                              <xsl:text> (%</xsl:text>
                              <xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
                              <xsl:text>)=</xsl:text>
                            </xsl:if>
                            <xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
                            <xsl:if test="../../cbc:TaxAmount/@currencyID">
                              <xsl:text> </xsl:text>
                              <xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRY'">
                                <xsl:text>TL</xsl:text>
                              </xsl:if>
                              <xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRY'">
                                <xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
                              </xsl:if>
                            </xsl:if>
                          </xsl:if>
                        </xsl:for-each>
                      </span>
                    </td>
                  </tr>
                </xsl:if>
                <xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal">
                  <xsl:if test="not(cbc:TaxAmount = 0)">
                    <tr>
                      <td>
                        <xsl:choose>
                          <xsl:when test="cac:TaxCategory/cac:TaxScheme/cbc:Name=''">
                            <xsl:text>Diğer Vergiler Toplamı </xsl:text>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>Tevkifat (</xsl:text>
                            <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
                            <xsl:text>)</xsl:text>
                          </xsl:otherwise>
                        </xsl:choose>
                        <xsl:if test="cbc:Percent !=''">
                          <xsl:text>(%</xsl:text>
                          <xsl:value-of select=" format-number(cbc:Percent, '###.##0,00', 'european')"/>
                          <xsl:text>)= </xsl:text>
                        </xsl:if>
                        <xsl:value-of select="format-number(../cbc:TaxAmount, '###.##0,00', 'european')"/>
                        <xsl:if test="../cbc:TaxAmount/@currencyID">
                          <xsl:if test="../cbc:TaxAmount/@currencyID = 'TRY'">
                            <xsl:text>TL</xsl:text>
                          </xsl:if>
                          <xsl:if test="../cbc:TaxAmount/@currencyID != 'TRY'">
                            <xsl:value-of select="../cbc:TaxAmount/@currencyID"/>
                          </xsl:if>
                        </xsl:if>
                      </td>
                    </tr>
                  </xsl:if>
                </xsl:for-each>
              </tbody>
            </table>
          </td-->
          <!--Vergi Muafiyet Sebebi-->
          <td id="lineTableTd">
            <span>
              <xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason">
                <xsl:value-of select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReason"/>
              </xsl:if>
            </span>
          </td>
          <!--Malzeme/Hizmet Tutarı-->
          <td id="lineTableTd" align="right">
            <span>
              <xsl:value-of select="format-number(./cbc:LineExtensionAmount, '###.##0,00', 'european')"/>
              <xsl:if test="./cbc:LineExtensionAmount/@currencyID">
                <xsl:text> </xsl:text>
                <xsl:if test="./cbc:LineExtensionAmount/@currencyID = 'TRY' ">
                  <xsl:text>TL</xsl:text>
                  <xsl:text>&#160;</xsl:text>
                </xsl:if>
                <xsl:if test="./cbc:LineExtensionAmount/@currencyID != 'TRY'">
                  <xsl:value-of select="./cbc:LineExtensionAmount/@currencyID"/>
                  <xsl:text>&#160;</xsl:text>
                </xsl:if>
              </xsl:if>
            </span>
          </td>
        </xsl:otherwise>
      </xsl:choose>
    </tr>
  </xsl:template>
  <xsl:template name="geneliskonto">
    <xsl:choose>
      <xsl:when test="//n1:Invoice/cac:AllowanceCharge">
        <tr id="lineTableTr" >
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="left">
            <span>
              <table border="0">
                <tbody>
                  <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
                    <tr>
                      <td>
                        <xsl:text>&#160;&#160;&#160;&#160;&#160;</xsl:text>
                        <span style="font-size:9px;">
                          <b>
                            <xsl:value-of select="cbc:AllowanceChargeReason"/>
                          </b>
                        </span>
                      </td>
                    </tr>
                  </xsl:for-each>
                </tbody>
              </table>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <table border="0">
                <tbody>
                  <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
                    <tr>
                      <td align="right">
                        <span style="font-size:9px;">
                          <b>
                            <xsl:text>%</xsl:text>
                            <xsl:value-of select="format-number(./cbc:MultiplierFactorNumeric*100, '###.##0,00', 'european')"/>
                          </b>
                        </span>
                      </td>
                    </tr>
                  </xsl:for-each>
                </tbody>
              </table>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <table border="0">
                <tbody>
                  <xsl:for-each select="//n1:Invoice/cac:AllowanceCharge">
                    <tr>
                      <td align="right">
                        <span style="font-size:9px;">
                          <b>
                            <xsl:value-of select="format-number(cbc:Amount, '###.##0,00', 'european')"/>
                            <xsl:if test="cbc:Amount/@currencyID">
                              <xsl:text> </xsl:text>
                              <xsl:if test="cbc:Amount/@currencyID = 'TRY'">
                                <xsl:text>TL</xsl:text>
                              </xsl:if>
                              <xsl:if test="cbc:Amount/@currencyID != 'TRY'">
                                <xsl:value-of select="cbc:Amount/@currencyID"/>
                              </xsl:if>
                            </xsl:if>
                          </b>
                        </span>
                      </td>
                    </tr>
                  </xsl:for-each>
                </tbody>
              </table>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
          <td id="lineTableTd" style="border-top:thick double black; border-top-width:3px;" align="right">
            <span>
              <xsl:text>&#160;</xsl:text>
            </span>
          </td>
        </tr>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="//n1:Invoice"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
  <xsl:template match="//n1:Invoice">
   
  </xsl:template>
</xsl:stylesheet>