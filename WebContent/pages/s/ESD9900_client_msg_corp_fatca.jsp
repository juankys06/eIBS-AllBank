<html>
	<head>
		<title>Informacion Fatca</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "ESD990301" class= "datapro.eibs.beans.ESD990301Message"  scope="session" />
	<jsp:useBean id= "currUser" class= "datapro.eibs.beans.ESS0030DSMessage"  scope="session" />
	<jsp:useBean id= "error" class= "datapro.eibs.beans.ELEERRMessage"  scope="session" />
	<jsp:useBean id= "userPO" class= "datapro.eibs.beans.UserPos"  scope="session" />

	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/eIBS.jsp"> </SCRIPT>
	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/optMenu.jsp"> </SCRIPT>
 
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

	<h3 align="center">Información FATCA <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_msg_corp_fatca, ESD9900"></h3>
	<hr size="4">
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/servlet/datapro.eibs.client.JSESD9900" >
	<INPUT TYPE=HIDDEN NAME="SCREEN" VALUE="3">
  
	<table class="tableinfo">
  		<tr > 
      		<td nowrap > 
        	<table class=tbhead cellspacing="0" cellpadding="2" width="100%"   align="center">
        		<tr>
             	<td nowrap width="10%" align="right"> Cliente: 
               	</td>
          		<td nowrap width="12%" align="left">
      			<%= userPO.getHeader1()%>
          		</td>
            	<td nowrap width="6%" align="right">ID:  
            	</td>
          		<td nowrap width="14%" align="left">
      			<%= userPO.getHeader2()%>
          		</td>
            	<td nowrap width="8%" align="right"> Nombre: 
               	</td>
          		<td nowrap width="50%"align="left">
      			<%= userPO.getHeader3()%>
          		</td>
        		</tr>
      		</table>
    		</td>
  		</tr>
  	</table>

    <h4>Datos Cliente Principal</h4>
 	<table class="tableinfo">
    	<tr > 
        	<td nowrap> 
          		<table cellspacing="0" cellpadding="2" width="100%" border="0" align="left">

          <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Para este Cliente el Formulario a imprimir es el :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly name="E01TFOR1" size="6" maxlength="5" value="<%= ESD990301.getE01TFOR1().trim()%>">
                <a href="javascript:GetCode('E01TFOR','STATIC_client_help_qualification_type.jsp')"></a></td>
              
         	   <td nowrap width="8%"> 
            	  <div align="right"> Ver Instructivo para entrega de formas PDF. </div>
            	</td>
            	 <td nowrap width="67%"> 
           		 </td>
 
            </tr>

          </table>
        </td>
      </tr>
    </table>

 
  

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0"
	bgcolor="#FFFFFF" bordercolor="#FFFFFF">
	<TR bgcolor="#FFFFFF">
		<TD width="33%">
		<DIV> </DIV>
		</TD>
	</TR>
</TABLE>

<div align="center"> 
    <input id="EIBSBTN" type=submit name="Submit" value="Enviar">
  </div>

</center></form>
</body>
</html>