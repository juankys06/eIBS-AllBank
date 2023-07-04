<html>
	<head>
		<title>FATCA Information</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "ESD990301" class= "datapro.eibs.beans.ESD990301Message"  scope="session" />
	<jsp:useBean id= "currUser" class= "datapro.eibs.beans.ESS0030DSMessage"  scope="session" />
	<jsp:useBean id= "error" class= "datapro.eibs.beans.ELEERRMessage"  scope="session" />
	<jsp:useBean id= "userPO" class= "datapro.eibs.beans.UserPos"  scope="session" />
<jsp:useBean id= "appList" class= "datapro.eibs.beans.JBList"  scope="session" />

	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/eIBS.jsp"> </SCRIPT>
	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/optMenu.jsp"> </SCRIPT>
	
	<SCRIPT Language="Javascript">

  function goAction(op,ne) {

    // document.forms[0].opt.value = op;
     document.forms[0].SCREEN.value = op;
      document.forms[0].FLAG.value = ne;  
    
     var formLength= document.forms[0].elements.length;
     var ok = false;
     for(n=0;n<formLength;n++)
     {
      	var elementName= document.forms[0].elements[n].name;
      	if(elementName == "REF") 
      	{
        		ok = true;
        		break;
      	}
      }
      if(ne==0)
      {
      	ok=true;
      }
	  if ( ok ) {
          document.forms[0].submit();
     }
     else {
			alert("No posee accionistas asociados a este cliente");	   
     }

  }
  


	 

</SCRIPT>
 
	<SCRIPT Language="Javascript">

		builtNewMenu(client_corp_opt);
 

	</SCRIPT>

	<body bgcolor="#FFFFFF">
 
	<% 
 	if ( !error.getERRNUM().equals("0")  ) {
 		error.setERRNUM("0");
    	out.println("<SCRIPT Language=\"Javascript\">");
    	out.println("       showErrors()");
     	out.println("</SCRIPT>");
	}
    	out.println("<SCRIPT> initMenu();  </SCRIPT>");
	%>

	<h3 align="center">Información FATCA <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_corp_new_acc, ESD9900"></h3>
	<hr size="4">
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/servlet/datapro.eibs.client.JSESD9900" >
	<INPUT TYPE=HIDDEN NAME="SCREEN" VALUE="100">
	<INPUT TYPE=HIDDEN NAME="FLAG" VALUE="1">
	<INPUT TYPE=HIDDEN NAME="REF" VALUE="<%= userPO.getHeader20()%>">
  

<div id="newacc" >
<table id="TBHELP" align="center" width="100%" height="60%" border="1">

<th id="THHELP"> Numero de identificacion de Accionista : 

 				 <input type="text" readonly name="IDN" size="35" maxlength="30" value="<%= userPO.getHeader20()%>">

</th>

				  
				  
     
	
</table>

	<div align="center"> 
	   <input id="EIBSBTN" type=button name="Submit" value="Continuar" onClick="javascript:goAction(100,1)">
  </div> 
</p> 
</div>


</center></form>
</body>
</html>