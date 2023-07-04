<html>
	<head>
		<title>Informacion Fatca</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "ESD990001" class= "datapro.eibs.beans.ESD990001Message"  scope="session" />
	<jsp:useBean id= "currUser" class= "datapro.eibs.beans.ESS0030DSMessage"  scope="session" />
	<jsp:useBean id= "error" class= "datapro.eibs.beans.ELEERRMessage"  scope="session" />
	<jsp:useBean id= "userPO" class= "datapro.eibs.beans.UserPos"  scope="session" />

	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/eIBS.jsp"> </SCRIPT>
	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/optMenu.jsp"> </SCRIPT>
 

 
 
	<SCRIPT Language="Javascript">
	
	function mostrar(){
		apoderado.style.display = "";
		
	}
	function ocultar(){
		apoderado.style.display = "none";
	}
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
    	out.println("<SCRIPT> initMenu();  </SCRIPT>");
	%>

	<h3 align="center">Información FATCA <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_both_fatca, ESD9900"></h3>
	<hr size="4">
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/servlet/datapro.eibs.client.JSESD9900" >
	<INPUT TYPE=HIDDEN NAME="SCREEN" VALUE="2">
  
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
  	    		        <div align="right">Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
  		  	       	   <input type="radio" name="E01NAC1" value="S"  <%if (ESD990001.getE01NAC1().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input type="radio" name="E01NAC1" value="N"  <%if (ESD990001.getE01NAC1().equals("N")) out.print("checked"); %>>
    	  	          	No 
	  		           </td>
            		   <td nowrap width="8%"> 
              			</td>
              
       			        <td nowrap width="67%">
 			            </td>              
              
            	</tr>

          		
            		<tr id="teclear"> 
	            		<td nowrap width="30%"> 
    	          		<div align="right">Ciudadano o Residente en EEUU :</div>
      	        		</td>
              
      			      	<td nowrap bordercolor="#FFFFFF" width="20%"> 
						<input type="radio" name="E01CIT1" value="S"  <%if (ESD990001.getE01CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input type="radio" name="E01CIT1" value="N"  <%if (ESD990001.getE01CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
       			   	    <input type="radio" name="E01REN1" value="S"  <%if (ESD990001.getE01REN1().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input type="radio" name="E01REN1" value="N"  <%if (ESD990001.getE01REN1().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E01DIR1" value="S"  <%if (ESD990001.getE01DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E01DIR1" value="N"  <%if (ESD990001.getE01DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E01DIR2" size="60" maxlength="60" value="<%= ESD990001.getE01DIR2().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E01TLF1" value="S"  <%if (ESD990001.getE01TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E01TLF1" value="N"  <%if (ESD990001.getE01TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input type="text" name="E01TLF2" size="3" maxlength="3" value="<%= ESD990001.getE01TLF2().trim()%>">
              		Cod. Área: <input type="text" name="E01TLF3" size="4" maxlength="4" value="<%= ESD990001.getE01TLF3().trim()%>">
              		Teléfono : <input type="text" name="E01TLF4" size="15" maxlength="15" value="<%= ESD990001.getE01TLF4().trim()%>">
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E01INS1" value="S"  <%if (ESD990001.getE01INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E01INS1" value="N"  <%if (ESD990001.getE01INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input type="text" name="E01INS2" size="20" maxlength="20" value="<%= ESD990001.getE01INS2().trim()%>">
              		Código  SWIFT: <input type="text" name="E01INS3" size="20" maxlength="20" value="<%= ESD990001.getE01INS3().trim()%>">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input type="radio" name="E01NOT1" value="S"  onclick="mostrar();"  <%if (ESD990001.getE01NOT1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E01NOT1" value="N"  onclick="ocultar();" <%if (ESD990001.getE01NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input type="radio" name="E01RET1" value="S"  <%if (ESD990001.getE01RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input type="radio" name="E01RET1" value="N"  <%if (ESD990001.getE01RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input type="text" name="E01RET2" size="20" maxlength="20" value="<%= ESD990001.getE01RET2().trim()%>">
           		 </td>
            </tr>

            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right"></div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 Dirección : <input type="text" name="E01RET3" size="60" maxlength="60" value="<%= ESD990001.getE01RET3().trim()%>">
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input type="text" readonly name="E01CLAS" size="4" maxlength="4" value="<%= ESD990001.getE01CLAS().trim()%>">
                  </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input type="text" readonly name="E01CAR1" size="4" maxlength="4" value="<%= ESD990001.getE01CAR1().trim()%>">
                  <a href="javascript:GetCodeCNOFC('E01CAR1','FT')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a> 
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly name="E01TFOR" size="5" maxlength="5" value="<%= ESD990001.getE01TFOR().trim()%>">
                <a href="javascript:GetCode('E01TFOR','STATIC_client_help_qualification_type.jsp')"></a></td>
              
         	   <td nowrap width="8%"> 
            	  <div align="right"></div>
            	</td>
            	 <td nowrap width="67%"> 
           		 </td>
 
            </tr>


            <tr id="teclear"> 

         	   <td nowrap width="30%"> 
            	  <div align="right">Firma de Formulario :</div>
            	</td>
              
        	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
          	    <input type="radio" name="E01FIR1" value="S"  <%if (ESD990001.getE01FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E01FIR1" value="N"  <%if (ESD990001.getE01FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input type="text" name="E01FECEM" size="2" maxlength="2" value="<%= ESD990001.getE01FECEM().trim()%>"> 
	       		<input type="text" name="E01FECED" size="2" maxlength="2" value="<%= ESD990001.getE01FECED().trim()%>">
                <input type="text" name="E01FECEA" size="4" maxlength="4" value="<%= ESD990001.getE01FECEA().trim()%>">
             
                <a href="javascript:DOBPicker(document.forms[0].E01FECEM,document.forms[0].E01FECED,document.forms[0].E01FECEA)"><img src="<%=request.getContextPath()%>/images/calendar.gif" alt="ayuda" align="middle" border="0"></a> 
                <img src="<%=request.getContextPath()%>/images/Check.gif" alt="mandatory field" align="bottom" border="0" > 
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" name="E01TIN" size="9" maxlength="9" value="<%= ESD990001.getE01TIN().trim()%>">
                <a href="javascript:GetCode('E01TIN','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
              
            	<td nowrap width="67%"> 
              	<input type="text" name="E01DIRF" size="60" maxlength="60" value="<%= ESD990001.getE01DIRF().trim()%>">

           		 </td>
            </tr>

          </table>
        </td>
      </tr>
    </table>

 	<table class="tableinfo">
    	<tr > 
        	<td nowrap> 
          		<table cellspacing="0" cellpadding="2" width="100%" border="0" align="left">
          		
          		    <tr id="trdark">
	            	<td nowrap width="50%"> 
    	          		<DIV align="center"><h4>Recaudos Entregados - Cliente Principal</h4></DIV>
 	             	</td>
 	             	<td nowrap width="50%"> 
    	          		<DIV align="center"></DIV>
 	             	</td>

            		</tr>

         		
          		   	<tr id="teclear">
 	                <td nowrap width="50%"> 
 	                    Documento de identificación extranjero :  
 	                  	<input type="radio" name="E01DOC1" value="S"  <%if (ESD990001.getE01DOC1().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E01DOC1" value="N"  <%if (ESD990001.getE01DOC1().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Certificado de renuncia a la nacionalidad  :  
 	                  	<input type="radio" name="E01DOC2" value="S"  <%if (ESD990001.getE01DOC2().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E01DOC2" value="N"  <%if (ESD990001.getE01DOC2().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input type="radio" name="E01DOC3" value="S"  <%if (ESD990001.getE01DOC3().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E01DOC3" value="N"  <%if (ESD990001.getE01DOC3().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                   Explicación escrita relacionada con la Ciudadanía Americana  :  
 	                  	<input type="radio" name="E01DOC4" value="S"  <%if (ESD990001.getE01DOC4().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E01DOC4" value="N"  <%if (ESD990001.getE01DOC4().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :  
 	                  	<input type="radio" name="E01DOC5" value="S"  <%if (ESD990001.getE01DOC5().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E01DOC5" value="N"  <%if (ESD990001.getE01DOC5().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  :  
 	                  	<input type="radio" name="E01DOC6" value="S"  <%if (ESD990001.getE01DOC6().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E01DOC6" value="N"  <%if (ESD990001.getE01DOC6().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr>          		
            		           		
        		</table>
        	</td>
      	</tr>
    </table>

<div id="apoderado" >
    <h4>Datos del Apoderado</h4>
     	<table class="tableinfo">
    	<tr > 
        	<td nowrap> 
          		<table cellspacing="0" cellpadding="2" width="100%" border="0" align="left">

   		         	<tr id="teclear"> 
	      	          <td nowrap width="30%"> 
   		 	          <div align="right">Id Apoderado :</div>
   		          	 </td>
              
   		         	<td nowrap width="20%"> 
       		       	<input type="text" name="E02IDN" size="15" maxlength="15" value="<%= ESD990001.getE02IDN().trim()%>">
    	            <a href="javascript:GetCode('E02IDN','STATIC_client_help_qualification_type.jsp')"></a></td>
              
       		     	<td nowrap width="8%"> 
        		   	 <div align="right">Nombre de Apoderado :</div>
    		       	</td>
              
           		 	<td nowrap width="67%"> 
     	        	<input type="text" name="E02NOM" size="60" maxlength="60" value="<%= ESD990001.getE02NOM().trim()%>">
             		 <a href="javascript:GetPrevTable('E02NOM')">
        	 
            	      </a> 
           			 </td>             
              
            		</tr>

   		         	<tr id="trdark"> 
		          		<td nowrap width="30%"> 
  	    		        <div align="right">Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
  		  	       	   <input type="radio" name="E02NAC1" value="S"  <%if (ESD990001.getE02NAC1().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input type="radio" name="E02NAC1" value="N"  <%if (ESD990001.getE02NAC1().equals("N")) out.print("checked"); %>>
    	  	          	No 
	  		           </td>
            		   <td nowrap width="8%"> 
              			</td>
              
       			        <td nowrap width="67%">
 			            </td>              
              
            		</tr>

          		
            		<tr id="teclear"> 
	            		<td nowrap width="30%"> 
    	          		<div align="right">Ciudadano o Residente en EEUU :</div>
      	        		</td>
              
      			      	<td nowrap bordercolor="#FFFFFF" width="20%"> 
						<input type="radio" name="E02CIT1" value="S"  <%if (ESD990001.getE02CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input type="radio" name="E02CIT1" value="N"  <%if (ESD990001.getE02CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
       			   	    <input type="radio" name="E02REN1" value="S"  <%if (ESD990001.getE02REN1().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input type="radio" name="E02REN1" value="N"  <%if (ESD990001.getE02REN1().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E02DIR1" value="S"  <%if (ESD990001.getE02DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E02DIR1" value="N"  <%if (ESD990001.getE02DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E02DIR2" size="60" maxlength="60" value="<%= ESD990001.getE02DIR2().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E02TLF1" value="S"  <%if (ESD990001.getE02TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E02TLF1" value="N"  <%if (ESD990001.getE02TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input type="text" name="E02TLF2" size="3" maxlength="3" value="<%= ESD990001.getE02TLF2().trim()%>">
              		Cod. Área: <input type="text" name="E02TLF3" size="4" maxlength="4" value="<%= ESD990001.getE02TLF3().trim()%>">
              		Teléfono : <input type="text" name="E02TLF4" size="15" maxlength="15" value="<%= ESD990001.getE02TLF4().trim()%>">
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E02INS1" value="S"  <%if (ESD990001.getE02INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E02INS1" value="N"  <%if (ESD990001.getE02INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input type="text" name="E02INS2" size="20" maxlength="20" value="<%= ESD990001.getE02INS2().trim()%>">
              		Código  SWIFT: <input type="text" name="E02INS3" size="20" maxlength="20" value="<%= ESD990001.getE02INS3().trim()%>">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input type="radio" name="E02NOT1" value="S"  <%if (ESD990001.getE02NOT1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E02NOT1" value="N"  <%if (ESD990001.getE02NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input type="radio" name="E02RET1" value="S"  <%if (ESD990001.getE02RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input type="radio" name="E02RET1" value="N"  <%if (ESD990001.getE02RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input type="text" name="E02RET2" size="20" maxlength="20" value="<%= ESD990001.getE02RET2().trim()%>">
           		 </td>
            </tr>

            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right"></div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 Dirección : <input type="text" name="E02RET3" size="60" maxlength="60" value="<%= ESD990001.getE02RET3().trim()%>">
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input type="text" readonly name="E02CLAS" size="4" maxlength="4" value="<%= ESD990001.getE02CLAS().trim()%>">
                </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input type="text" readonly name="E02CAR1" size="4" maxlength="4" value="<%= ESD990001.getE02CAR1().trim()%>">
                  <a href="javascript:GetCodeCNOFC('E02CAR1','FT')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a>
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly name="E02TFOR" size="5" maxlength="5" value="<%= ESD990001.getE02TFOR().trim()%>">
                <a href="javascript:GetCode('E02TFOR','STATIC_client_help_qualification_type.jsp')"></a></td>
              
         	   <td nowrap width="8%"> 
            	  <div align="right"></div>
            	</td>
            	 <td nowrap width="67%"> 
           		 </td>
 
            </tr>


            <tr id="teclear"> 

         	   <td nowrap width="30%"> 
            	  <div align="right">Firma de Formulario :</div>
            	</td>
              
        	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
          	    <input type="radio" name="E02FIR1" value="S"  <%if (ESD990001.getE02FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E02FIR1" value="N"  <%if (ESD990001.getE02FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input type="text" name="E02FECEM" size="2" maxlength="2" value="<%= ESD990001.getE02FECEM().trim()%>"> 
	       		<input type="text" name="E02FECED" size="2" maxlength="2" value="<%= ESD990001.getE02FECED().trim()%>"> 
                <input type="text" name="E02FECEA" size="4" maxlength="4" value="<%= ESD990001.getE02FECEA().trim()%>">
             
                <a href="javascript:DOBPicker(document.forms[0].E02FECEM,document.forms[0].E02FECED,document.forms[0].E02FECEA)"><img src="<%=request.getContextPath()%>/images/calendar.gif" alt="ayuda" align="middle" border="0"></a> 
                <img src="<%=request.getContextPath()%>/images/Check.gif" alt="mandatory field" align="bottom" border="0" > 
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" name="E02TIN" size="9" maxlength="9" value="<%= ESD990001.getE02TIN().trim()%>">
                <a href="javascript:GetCode('E02TIN','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
        
	           	<td nowrap width="67%"> 
              	<input type="text" name="E02DIRF" size="60" maxlength="60" value="<%= ESD990001.getE02DIRF().trim()%>">

           		 </td>
            </tr>

          </table>
        </td>
      </tr>
    </table>

 	<table class="tableinfo">
    	<tr > 
        	<td nowrap> 
          		<table cellspacing="0" cellpadding="2" width="100%" border="0" align="left">
          		
          		    <tr id="trdark">
	            	<td nowrap width="50%"> 
    	          		<DIV align="center"><h4>Recaudos Entregados - Cliente Apoderado</h4></DIV>
 	             	</td>
 	             	<td nowrap width="50%"> 
    	          		<DIV align="center"></DIV>
 	             	</td>

            		</tr>

         		
          		   	<tr id="teclear">
 	                <td nowrap width="50%"> 
						Documento de identificación extranjero  :  
 	                  	<input type="radio" name="E02DOC1" value="S"  <%if (ESD990001.getE02DOC1().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E02DOC1" value="N"  <%if (ESD990001.getE02DOC1().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :
 	                  	<input type="radio" name="E02DOC2" value="S"  <%if (ESD990001.getE02DOC2().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E02DOC2" value="N"  <%if (ESD990001.getE02DOC2().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input type="radio" name="E02DOC3" value="S"  <%if (ESD990001.getE02DOC3().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E02DOC3" value="N"  <%if (ESD990001.getE02DOC3().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
						Explicación escrita relacionada con la Ciudadanía Americana :  
 	                  	<input type="radio" name="E02DOC4" value="S"  <%if (ESD990001.getE02DOC4().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E02DOC4" value="N"  <%if (ESD990001.getE02DOC4().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :
 	                  	<input type="radio" name="E02DOC5" value="S"  <%if (ESD990001.getE02DOC5().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E02DOC5" value="N"  <%if (ESD990001.getE02DOC5().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  : 
 	                  	<input type="radio" name="E02DOC6" value="S"  <%if (ESD990001.getE02DOC6().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E02DOC6" value="N"  <%if (ESD990001.getE02DOC6().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr>          
            		         		
        		</table>
        	</td>
      	</tr>
    </table>
    </div>
  <%if (ESD990001.getE01NOT1().equals("S")){ %>
 	<SCRIPT Language="Javascript">
 	apoderado.style.display = "";
 	alery('s');
 	</SCRIPT>
 <%}else{ %>
 	<SCRIPT Language="Javascript">
 	apoderado.style.display = "none";
 	alery('n');
 	</SCRIPT>
 <%} %>


<TABLE width="100%" border="0" cellspacing="0" cellpadding="0"
	bgcolor="#FFFFFF" bordercolor="#FFFFFF">
	<TR bgcolor="#FFFFFF">
		<TD width="33%">
		<div> </div>
		</TD>
	</TR>
</TABLE>

<div align="center"> 
    <input id="EIBSBTN" type=submit name="Submit" value="Enviar">
  </div>

</center></form>
</body>
</html>