<html>
	<head>
		<title>Untitled Document</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "fatca" class= "datapro.eibs.beans.ESD990001Message"  scope="session" />
	<jsp:useBean id= "currUser" class= "datapro.eibs.beans.ESS0030DSMessage"  scope="session" />
	<jsp:useBean id= "error" class= "datapro.eibs.beans.ELEERRMessage"  scope="session" />
	<jsp:useBean id= "userPO" class= "datapro.eibs.beans.UserPos"  scope="session" />

	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/eIBS.jsp"> </SCRIPT>
	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/optMenu.jsp"> </SCRIPT>
 
	<SCRIPT Language="Javascript">

    <% 
		if ( userPO.getOption().equals("CLIENT_P") ) {
	%>
		builtNewMenu(client_personal_opt);
	<%      
   	}
   else
   {
   %>
		builtNewMenu(client_corp_opt);
   <%
   }
   %>

	</SCRIPT>

	<body bgcolor="#FFFFFF">
 
 	<% 
	if ( !error.getERRNUM().equals("0")  ) {
     error.setERRNUM("0");
     out.println("<SCRIPT Language=\"Javascript\">");
     out.println("       showErrors()");
     out.println("</SCRIPT>");
 	}
  	if ( !userPO.getPurpose().equals("NEW") ) {
    out.println("<SCRIPT> initMenu(); </SCRIPT>");
 	}
	%>

	<h3 align="center">Información FATCA <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_both_fatca, ESD9900"></h3>
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

    <h4>Datos Formulario</h4>
 	<table class="tableinfo">
    	<tr > 
        	<td nowrap> 
          		<table cellspacing="0" cellpadding="2" width="100%" border="0" align="left">
          		
            		<tr id="trdark"> 
	            		<td nowrap width="30%"> 
    	          		<div align="right">Ciudadano o Residente en EEUU :</div>
      	        		</td>
              
      			      	<td nowrap bordercolor="#FFFFFF" width="20%"> 
						<input type="radio" name="E01CIT1" value="S"  <%if (fatca.getE01CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input type="radio" name="E01CIT1" value="N"  <%if (fatca.getE01CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
            		   <td nowrap width="8%"> 
              			</td>
              
       			        <td nowrap width="67%">
 		                <a href="javascript:GetCode('E02CCL','STATIC_client_help_class.jsp')"></a> 
 			            </td>
       		     </tr>

   		         <tr id="teclear"> 
		            <td nowrap width="30%"> 
      		        <div align="right">Lugar de Nacimiento EEUU :</div>
     	     	    </td>
              
     	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
    	       	   <input type="radio" name="E01NAC1" value="S"  <%if (fatca.getE01NAC1().equals("S")) out.print("checked"); %>>
          	      	Si
     	           <input type="radio" name="E01NAC1" value="N"  <%if (fatca.getE01NAC1().equals("N")) out.print("checked"); %>>
      	          	No 
	                </td>
              
   		         	<td nowrap width="8%"> 
   		           <div align="right">Lugar :</div>
   		           </td>
              
            		<td nowrap width="67%"> 
             		<input type="text" name="E01NAC2" size="60" maxlength="60" value="<%= fatca.getE01NAC2().trim()%>">
                	</td>
            	</tr>


            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Direccion de Residendencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E01DIR1" value="S"  <%if (fatca.getE01DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E01DIR1" value="N"  <%if (fatca.getE01DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Direccion :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E01DIR2" size="60" maxlength="60" value="<%= fatca.getE01DIR2().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
              
            		<td nowrap width="30%"> 
              		<div align="right">Telefono de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E01TLF1" value="S"  <%if (fatca.getE01TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E01TLF1" value="N"  <%if (fatca.getE01TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Telefono :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E01TLF2" size="20" maxlength="20" value="<%= fatca.getE01TLF2().trim()%>">
                	<a href="javascript:GetCode('E01TLF2','STATIC_client_help_qualification_type.jsp')"></a></td>
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E01INS1" value="S"  <%if (fatca.getE01INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E01INS1" value="N"  <%if (fatca.getE01INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E01INS2" size="60" maxlength="60" value="<%= fatca.getE01INS2().trim()%>">
              		<a href="javascript:GetPrevTable('E01INS2')">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder notariado otorgado a residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input type="radio" name="E01NOT1" value="S"  <%if (fatca.getE01NOT1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E01NOT1" value="N"  <%if (fatca.getE01NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Datos de Notariado :</div>
             	 </td>
              
            	<td nowrap width="67%"> 
              	<input type="text" name="E01NOT2" size="60" maxlength="60" value="<%= fatca.getE01NOT2().trim()%>">
             	 <a href="javascript:GetPrevTable('E01NOT2')">
                  </a> 
            	</td>
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input type="radio" name="E01RET1" value="S"  <%if (fatca.getE01RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input type="radio" name="E01RET1" value="N"  <%if (fatca.getE01RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Datos de Instruccion :</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 <input type="text" name="E01RET2" size="60" maxlength="60" value="<%= fatca.getE01RET2().trim()%>">
              	<a href="javascript:GetPrevTable('E01RET2')">
                  </a> 
           		 </td>
            </tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" name="E01TFOR" size="2" maxlength="2" value="<%= fatca.getE01TFOR().trim()%>">
                <a href="javascript:GetCode('E01TFOR','STATIC_client_help_qualification_type.jsp')"></a></td>
              
         	   <td nowrap width="8%"> 
            	  <div align="right">Firma de Formulario :</div>
            	</td>
              
        	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
          	    <input type="radio" name="E01FIR1" value="S"  <%if (fatca.getE01FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E01FIR1" value="N"  <%if (fatca.getE01FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
            </tr>

            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Numero de Indentificaion Impuesto :</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" name="E01TIN" size="20" maxlength="20" value="<%= fatca.getE01TIN().trim()%>">
                <a href="javascript:GetCode('E01TIN','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Direccion Fiscal :</div>
              	</td>
              
            	<td nowrap width="67%"> 
              	<input type="text" name="E01DIRF" size="60" maxlength="60" value="<%= fatca.getE01DIRF().trim()%>">
             	 <a href="javascript:GetPrevTable('E01DIRF')">
        	 
                  </a> 
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
		<DIV align="center"><INPUT type="checkbox" name="H03WK2" value="1">Aceptar
		con Avisos</DIV>
		</TD>
	</TR>
</TABLE>

<div align="center"> 
    <input id="EIBSBTN" type=submit name="Submit" value="Enviar">
  </div>

</center></form>
</body>
</html>

