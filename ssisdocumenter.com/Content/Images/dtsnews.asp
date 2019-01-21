<%@ Language=JavaScript %>
<!-- #INCLUDE file="../include/pagetools.asp" -->

<%

 StartContent("DTS. SQL Server news.");

 URLToRSS = "http://www.sqljunkies.com/WebLog/joesack/rss.aspx?CategoryID=1014";

 MaxNumberOfItems = 7;
 
 MainTemplateHeader = "<table>";
 MainTemplateFooter = "</table>";
 ItemTemplate = "<tr><td><a href='http://www.amazon.com/exec/obidos/ASIN/0672320118/ref%3Dnosim/softrus-20/'><img  src='images/books/dts1.jpg' border='0' align='right' width="200px" style='padding:25;'><a href=" + "\"{LINK}\"" + ">{TITLE}</a><BR>{DESCRIPTION}</td></tr>";
 ErrorMessage = "Error has occured while trying to process " + URLToRSS + "<BR>Please contact web-master";
 
 xmlHttp = Server.CreateObject("MSXML2.XMLHTTP.3.0");
 xmlHttp.Open( "Get", URLToRSS, false);
 xmlHttp.Send();
 RSSXML = xmlHttp.ResponseText;
 
 xmlDOM = new ActiveXObject("MSXML2.DomDocument.3.0");
 xmlDOM.async = false;
 xmlDOM.loadXML(RSSXML);

if (xmlDOM.parseError.errorCode != 0) {
   var myErr = xmlDoc.parseError;
   Response.Write("You have error " + myErr.reason);
} 
/*
else {
   objNodeList = xmlDOM.getElementsByTagName("item");
   for (var i=0; i<objNodeList.length; i++) {
      Response.Write(objNodeList.item(i).xml);
   }
}
*/ 
 
 var RSSItems = xmlDOM.getElementsByTagName("item");
 //xmlDOM = null;
 var RSSItemsCount = RSSItems.length;

Response.Write("<!-- RSS Start-->");
 if( RSSItemsCount > 0 ) 
  Response.Write( MainTemplateHeader);

 
 j = -1;
 
 for(i = 0 ;i<RSSItemsCount;i++)
 {
    RSSItem = RSSItems.item(i);
 
   for (var k=0; k<RSSItem.childNodes.length; k++)
   {
	var child = RSSItem.childNodes[k];
	switch(child.nodeName)
	{
	   case "title":
		RSStitle = child.text;
		break;
	   case "link":
		RSSlink = child.text;
		break;
	   case "description":
		RSSdescription = child.text;
		break;
	
	}
  }
 
  j = j+1;
 
  if(j<MaxNumberOfItems)
  { 
	ItemContent = ItemTemplate.replace("{LINK}",RSSlink);
	ItemContent = ItemContent.replace("{TITLE}",RSStitle);
	Response.Write(ItemContent.replace("{DESCRIPTION}",RSSdescription));
	ItemContent = ""; 
  }
 
 }
 
 if(RSSItemsCount > 0 ) 
  Response.Write(MainTemplateFooter);
 else 
  Response.Write(ErrorMessage)
 

 EndContent(); 
%>
