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

	<h3 align="center">Información FATCA <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_corp_fatca, ESD9900"></h3>
	<hr size="4">
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/servlet/datapro.eibs.client.JSESD9900" >
	<INPUT TYPE=HIDDEN NAME="SCREEN" VALUE="101">
	<INPUT TYPE=HIDDEN NAME="FLAG" VALUE="2">
  
  <div id="normal" >
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
		          		<td nowrap width="8%"> 
		          		<div align="right">Cliente :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01CUN" size="10" maxlength="9" value="<%= ESD990301.getE01CUN().trim()%>">
		            	</td>
            		  <td nowrap width="8%"> 
		          		<div align="right">Pais :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01PAIS1" size="3" readonly maxlength="2" value="<%= ESD990301.getE01PAIS1().trim()%>">
		          		<a href="javascript:GetCodeCNOFC('E01PAIS1','03')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a>
		            	</td>            
              
            	</tr>
            	<tr id="teclear"> 
            	  		<td nowrap width="8%"> 
		          		<div align="right">Numero de Registro :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01NREG1" size="20" maxlength="20" value="<%= ESD990301.getE01NREG1().trim()%>">
		            	</td>
            		  <td nowrap width="8%"> 
		          		<div align="right">Direccion de Entidad :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01DIR1" size="60" maxlength="60" value="<%= ESD990301.getE01DIR1().trim()%>">
		            	</td>     
	            </tr>

            	<tr id="trdark"> 
		        			<td nowrap width="8%"> 
		          		<div align="right">Posee de Correo Alterno  :</div>
		          		</td>
		          
		        		<td nowrap bordercolor="#FFFFFF" width="20%"> 
						<input type="radio" name="E01DIR2" value="S"  <%if (ESD990301.getE01DIR2().equals("S")) out.print("checked"); %>>
 		              	Yes
                		<input type="radio" name="E01DIR2" value="N"  <%if (ESD990301.getE01DIR2().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
            		  <td nowrap width="8%"> 
		          		<div align="right">Direccion de Correo Alterno :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01DIR3" size="60" maxlength="60" value="<%= ESD990301.getE01DIR3().trim()%>">
		            	</td>     
		        
		        </tr>



            	<tr id="teclear"> 
           	   		<td nowrap width="8%"> 
		          		<div align="right">Tipo Entidad :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01TENT1" size="4" maxlength="4" readonly value="<%= ESD990301.getE01TENT1().trim()%>">
		          		<a href="javascript:GetCodeCNOFC('E01TENT1','FE')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a>
		            	</td>
            		  <td nowrap width="8%"> 
		          		<div align="right">Categoria Entidad :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01TCAT1" size="4" maxlength="4" readonly value="<%= ESD990301.getE01TCAT1().trim()%>">
		          		<a href="javascript:GetCodeCNOFC('E01TCAT1','FB')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a>
		            	</td>
           	   </tr>
   		        <tr id="trdark"> 
		          		<td nowrap width="8%"> 
		          		<div align="right">Clasificacion Cliente :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
		          		<input type="text" name="E01CLAS1" size="4" maxlength="4" value="<%= ESD990301.getE01CLAS1().trim()%>">
		          		<input type="text" readonly name="E01CLAS1" size=30" maxlength="30" value="<%= ESD990301.getE01CLASD1().trim()%>">
		            	</td>
            		  <td nowrap width="8%"> 
		          		<div align="right">Identificacion Fiscal :</div>
		          		</td>
		          
		        		<td nowrap width="67%"> 
						<input type="text" name="E01TAXID1" size="25" maxlength="25" value="<%= ESD990301.getE01TAXID1().trim()%>">
		            	</td>            
              
            	</tr>           	
            	<tr id="teclear"> 
		          		<td nowrap width="8%"> 
		          		<div align="right">GIIN (Global Intermadiary Identification Number) :</div>
		          		</td>
		          
		        		<td nowrap width="100%"> 
		          		<input type="text" name="E01GIIN1" size="20" maxlength="20" value="<%= ESD990301.getE01GIIN1().trim()%>">
		            	</td>
            		          
              
            	</tr>    
           
          </table>
        </td>
      </tr>
    </table>
	
	
<h4>Datos Accionistas</h4>

 <TABLE class="tbenter">
    <TR>
      <TD class=TDBKG> 
        <div align="center"><a onclick="javascript:goAction(200,0)" id="linkAdd"><b>Agregar</b></a></div>
      </TD>
      <TD class=TDBKG> 
        <div align="center"><a onclick="javascript:goAction(200,1)" id="linkReject"><b>Modificar</b></a></div>
      </TD>     
     
    </TR>
  </TABLE>
	
<TABLE  id="mainTable" class="tableinfo">
 <TR> 
   <TD NOWRAP valign="top" width="100%"> 
    <TABLE id="headTable" width="100%" >
    <TR id="trdark">  
        <TH ALIGN=CENTER NOWRAP></TH>
            <TH ALIGN=  CENTER NOWRAP>N&uacute;mero de Cliente</TH>
            <TH ALIGN=CENTER NOWRAP>Nombre</TH>
            <TH ALIGN=CENTER NOWRAP>Porcentaje</TH>
    </TR>
       </TABLE>
  
   <div id="dataDiv1" class="scbarcolor" >
    <table id="dataTable" width="100%">
    <%
                appList.initRow();
                int k=1;
                while (appList.getNextRow()) {
                    if (appList.getFlag().equals("")) {
                    		out.println(appList.getRecord());
                    k++;
                    }        
                }
      %> 
   </table>
   </div>
   </TD>
     </TR>	
</TABLE>




	<div align="center"> 
    <input id="EIBSBTN" type=submit name="Submit" value="Submit">
  </div>
</div>  
<div id="newacc" >
<table id="TBHELP" align="center" width="100%" height="60%" border="1">

<th id="THHELP">Ingrese Numero de identificacion de Accionista : 

 				 <input type="text" name="IDN" size="35" maxlength="30" value="">

</th>

				  
				  
     
	
</table>

	<div align="center"> 
	   <input id="EIBSBTN" type=button name="Submit" value="Enviar" onClick="javascript:goAction(100,0)">
  </div> 
</p> 
</div>

<SCRIPT Language="Javascript">
normal.style.display = ""; 	
 	newacc.style.display = "none";
function agregar(){
 	normal.style.display = "none"; 	
 	newacc.style.display = "";
 }
 	
 	</SCRIPT>
</center></form>
</body>
</html>