<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>Camara de Compensacion Saliente</title>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
	<META name="GENERATOR" content="IBM WebSphere Page Designer V3.5.2 for Windows">
	<META http-equiv="Content-Style-Type" content="text/css">
	<link Href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/eIBS.jsp"> </SCRIPT>
	<SCRIPT Language="javascript">
	</SCRIPT>
</head>
<jsp:useBean id= "error" class= "datapro.eibs.beans.ELEERRMessage"  scope="session" />
<jsp:useBean id= "userPO" class= "datapro.eibs.beans.UserPos"  scope="session" />

<body bgcolor="#FFFFFF">
	<H3 align="center">Camara Saliente - Desglose de Cheques Envio<img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="previewParamRT, JSEDE2002"></H3>
	<hr size="4">
	<form method="post" action="<%=request.getContextPath()%>/servlet/datapro.eibs.approval.JSEDE2002">
  	<p> 
    	<INPUT TYPE=HIDDEN NAME="SCREEN" VALUE="1">
	</p>
	
	<p>

		<TABLE class="tbenter" width=100% height=100%>
   		<TR>
      	<TD> 
        <div align="center">
        	<font size="2"><b>
        		Los Registros NO se han Procesado.
        	</b></font>
        	</div>
      	</TD></TR>
   		</TABLE>
	</p> 
  

	<% 
 	if ( !error.getERRNUM().equals("0")  ) {
      	error.setERRNUM("0");
 	%>
    	<SCRIPT Language="Javascript">;
    		showErrors();
    	</SCRIPT>
  	<%
 	}
	%> 
	</form>
</body>
</html>