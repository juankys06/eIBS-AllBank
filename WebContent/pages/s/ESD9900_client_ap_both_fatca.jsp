<html>
	<head>
		<title>Informacion Fatca</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "ESD990201" class= "datapro.eibs.beans.ESD990201Message"  scope="session" />
	<jsp:useBean id= "currUser" class= "datapro.eibs.beans.ESS0030DSMessage"  scope="session" />
	<jsp:useBean id= "error" class= "datapro.eibs.beans.ELEERRMessage"  scope="session" />
	<jsp:useBean id= "userPO" class= "datapro.eibs.beans.UserPos"  scope="session" />

	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/eIBS.jsp"> </SCRIPT>
	<script language="Javascript1.1" src="<%=request.getContextPath()%>/pages/s/javascripts/optMenu.jsp"> </SCRIPT>
 
	<SCRIPT Language="Javascript">

    <% 
		if ( userPO.getOption().equals("CLIENT_P") ) {
	%>
		builtNewMenu(client_ap_personal_opt);
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

	<h3 align="center">Información FATCA <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_ap_both_fatca, ESD9900"></h3>
	<hr size="4">
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/servlet/datapro.eibs.client.JSESD9900" >
	<input readonly type=HIDDEN NAME="SCREEN" VALUE="">
  
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
  	    		        <div align="right" >Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990201.getE01NACY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
  		  	       	   <input disabled="disabled" type="radio" name="E01NAC1" value="S"  <%if (ESD990201.getE01NAC1().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input disabled="disabled" type="radio" name="E01NAC1" value="N"  <%if (ESD990201.getE01NAC1().equals("N")) out.print("checked"); %>>
    	  	          	No 
	  		           </td>
            		   <td nowrap width="8%"> 
              			</td>
              
       			        <td nowrap width="67%">
 			            </td>              
              
            	</tr>

          		
            		<tr id="teclear"> 
	            		<td nowrap width="30%"> 
    	          		<div align="right" >Ciudadano o Residente en EEUU :</div>
      	        		</td>
              
      			      	<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990201.getE01CITY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
						<input disabled="disabled" type="radio" name="E01CIT1" value="S"  <%if (ESD990201.getE01CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input disabled="disabled" type="radio" name="E01CIT1" value="N"  <%if (ESD990201.getE01CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right" >Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF" <% if (ESD990201.getE01RENY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
       			   	    <input disabled="disabled" type="radio" name="E01REN1" value="S"  <%if (ESD990201.getE01REN1().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input disabled="disabled" type="radio" name="E01REN1" value="N"  <%if (ESD990201.getE01REN1().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right" >Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990201.getE01DIR1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              		<input disabled="disabled" type="radio" name="E01DIR1" value="S"  <%if (ESD990201.getE01DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E01DIR1" value="N"  <%if (ESD990201.getE01DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right" >Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input readonly type="text" name="E01DIR2" size="60" maxlength="60" value="<%= ESD990201.getE01DIR2().trim()%>" <% if (ESD990201.getE01DIR2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right" >Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990201.getE01TLF1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              		<input disabled="disabled" type="radio" name="E01TLF1" value="S"  <%if (ESD990201.getE01TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E01TLF1" value="N"  <%if (ESD990201.getE01TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right" >Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input readonly type="text" name="E01TLF2" size="3" maxlength="3" value="<%= ESD990201.getE01TLF2().trim()%>" <% if (ESD990201.getE01TLF2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
              		Cod. Área: <input readonly type="text" name="E01TLF3" size="4" maxlength="4" value="<%= ESD990201.getE01TLF3().trim()%>" <% if (ESD990201.getE01TLF3Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
              		Teléfono : <input readonly type="text" name="E01TLF4" size="15" maxlength="15" value="<%= ESD990201.getE01TLF4().trim()%>" <% if (ESD990201.getE01TLF4Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right" >Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990201.getE01INS1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              		<input disabled="disabled" type="radio" name="E01INS1" value="S"  <%if (ESD990201.getE01INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E01INS1" value="N"  <%if (ESD990201.getE01INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right" > Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input readonly type="text" name="E01INS2" size="20" maxlength="20" value="<%= ESD990201.getE01INS2().trim()%>" <% if (ESD990201.getE01INS2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
              		Código  SWIFT: <input readonly type="text" name="E01INS3" size="20" maxlength="20" value="<%= ESD990201.getE01INS3().trim()%>" <% if (ESD990201.getE01INS3Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%" <%= ESD990201.getE01NOT1Y().trim()%>" <% if (ESD990201.getE01NOT1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              	<input disabled="disabled" type="radio" name="E01NOT1" value="S"  <%if (ESD990201.getE01NOT1().equals("S")) out.print("checked"); %> >
                Si
                <input disabled="disabled" type="radio" name="E01NOT1" value="N"  <%if (ESD990201.getE01NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990201.getE01RET1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
             	 <input disabled="disabled" type="radio" name="E01RET1" value="S"  <%if (ESD990201.getE01RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input disabled="disabled" type="radio" name="E01RET1" value="N"  <%if (ESD990201.getE01RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input readonly type="text" name="E01RET2" size="20" maxlength="20" value="<%= ESD990201.getE01RET2().trim()%>" <% if (ESD990201.getE01RET2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
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
             	 Dirección : <input readonly type="text" name="E01RET3" size="60" maxlength="60" value="<%= ESD990201.getE01RET3().trim()%>" <% if (ESD990201.getE01RET3Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input readonly type="text" readonly name="E01CLAS" size="4" maxlength="4" value="<%= ESD990201.getE01CLAS().trim()%>" <% if (ESD990201.getE01CLASY().equals("Y")) out.print("id=\"txtchanged\""); %>>
                  </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input readonly type="text" readonly name="E01CAR1" size="4" maxlength="4" value="<%= ESD990201.getE01CAR1().trim()%>" <% if (ESD990201.getE01CAR1Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                 
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input readonly type="text" readonly name="E01TFOR" size="5" maxlength="5" value="<%= ESD990201.getE01TFOR().trim()%>" <% if (ESD990201.getE01TFORY().equals("Y")) out.print("id=\"txtchanged\""); %>>
              
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
              
        	   	 <td nowrap width="15%" bordercolor="#FFFFFF" <% if (ESD990201.getE01FIR1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
          	    <input disabled="disabled" type="radio" name="E01FIR1" value="S"  <%if (ESD990201.getE01FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E01FIR1" value="N"  <%if (ESD990201.getE01FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input readonly type="text" name="E01FECEM" size="2" maxlength="2" value="<%= ESD990201.getE01FECEM().trim()%>" <% if (ESD990201.getE01FECEMY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
	       		<input readonly type="text" name="E01FECED" size="2" maxlength="2" value="<%= ESD990201.getE01FECED().trim()%>" <% if (ESD990201.getE01FECEDY().equals("Y")) out.print("id=\"txtchanged\""); %>>
                <input readonly type="text" name="E01FECEA" size="4" maxlength="4" value="<%= ESD990201.getE01FECEA().trim()%>" <% if (ESD990201.getE01FECEAY().equals("Y")) out.print("id=\"txtchanged\""); %>>
             
                
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input readonly type="text" name="E01TIN" size="9" maxlength="9" value="<%= ESD990201.getE01TIN().trim()%>" <% if (ESD990201.getE01TINY().equals("Y")) out.print("id=\"txtchanged\""); %>>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
              
            	<td nowrap width="67%"> 
              	<input readonly type="text" name="E01DIRF" size="60" maxlength="60" value="<%= ESD990201.getE01DIRF().trim()%>" <% if (ESD990201.getE01DIRFY().equals("Y")) out.print("id=\"txtchanged\""); %>>

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
 	                  	<input disabled="disabled" type="radio" name="E01DOC1" value="S"  <%if (ESD990201.getE01DOC1().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E01DOC1" value="N"  <%if (ESD990201.getE01DOC1().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Certificado de renuncia a la nacionalidad  :  
 	                  	<input disabled="disabled" type="radio" name="E01DOC2" value="S"  <%if (ESD990201.getE01DOC2().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E01DOC2" value="N"  <%if (ESD990201.getE01DOC2().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input disabled="disabled" type="radio" name="E01DOC3" value="S"  <%if (ESD990201.getE01DOC3().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E01DOC3" value="N"  <%if (ESD990201.getE01DOC3().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                   Explicación escrita relacionada con la Ciudadanía Americana  :  
 	                  	<input disabled="disabled" type="radio" name="E01DOC4" value="S"  <%if (ESD990201.getE01DOC4().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E01DOC4" value="N"  <%if (ESD990201.getE01DOC4().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :  
 	                  	<input disabled="disabled" type="radio" name="E01DOC5" value="S"  <%if (ESD990201.getE01DOC5().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E01DOC5" value="N"  <%if (ESD990201.getE01DOC5().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  :  
 	                  	<input disabled="disabled" type="radio" name="E01DOC6" value="S"  <%if (ESD990201.getE01DOC6().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E01DOC6" value="N"  <%if (ESD990201.getE01DOC6().equals("N")) out.print("checked"); %>>
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
       		       	<input readonly type="text" name="E02IDN" size="15" maxlength="15" value="<%= ESD990201.getE02IDN().trim()%>">
       		     	<td nowrap width="8%"> 
        		   	 <div align="right">Nombre de Apoderado :</div>
    		       	</td>
              
           		 	<td nowrap width="67%"> 
     	        	<input readonly type="text" name="E02NOM" size="60" maxlength="60" value="<%= ESD990201.getE02NOM().trim()%>">
             		 <a href="javascript:GetPrevTable('E02NOM')">
        	 
            	      </a> 
           			 </td>             
              
            		</tr>

   		         	<tr id="trdark"> 
		          		<td nowrap width="30%"> 
  	    		        <div align="right">Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
  		  	       	   <input disabled="disabled" type="radio" name="E02NAC1" value="S"  <%if (ESD990201.getE02NAC1().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input disabled="disabled" type="radio" name="E02NAC1" value="N"  <%if (ESD990201.getE02NAC1().equals("N")) out.print("checked"); %>>
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
						<input disabled="disabled" type="radio" name="E02CIT1" value="S"  <%if (ESD990201.getE02CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input disabled="disabled" type="radio" name="E02CIT1" value="N"  <%if (ESD990201.getE02CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
       			   	    <input disabled="disabled" type="radio" name="E02REN1" value="S"  <%if (ESD990201.getE02REN1().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input disabled="disabled" type="radio" name="E02REN1" value="N"  <%if (ESD990201.getE02REN1().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input disabled="disabled" type="radio" name="E02DIR1" value="S"  <%if (ESD990201.getE02DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02DIR1" value="N"  <%if (ESD990201.getE02DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input readonly type="text" name="E02DIR2" size="60" maxlength="60" value="<%= ESD990201.getE02DIR2().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input disabled="disabled" type="radio" name="E02TLF1" value="S"  <%if (ESD990201.getE02TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02TLF1" value="N"  <%if (ESD990201.getE02TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input readonly type="text" name="E02TLF2" size="3" maxlength="3" value="<%= ESD990201.getE02TLF2().trim()%>">
              		Cod. Área: <input readonly type="text" name="E02TLF3" size="4" maxlength="4" value="<%= ESD990201.getE02TLF3().trim()%>">
              		Teléfono : <input readonly type="text" name="E02TLF4" size="15" maxlength="15" value="<%= ESD990201.getE02TLF4().trim()%>">
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input disabled="disabled" type="radio" name="E02INS1" value="S"  <%if (ESD990201.getE02INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02INS1" value="N"  <%if (ESD990201.getE02INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input readonly type="text" name="E02INS2" size="20" maxlength="20" value="<%= ESD990201.getE02INS2().trim()%>">
              		Código  SWIFT: <input readonly type="text" name="E02INS3" size="20" maxlength="20" value="<%= ESD990201.getE02INS3().trim()%>">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input disabled="disabled" type="radio" name="E02NOT1" value="S"  <%if (ESD990201.getE02NOT1().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E02NOT1" value="N"  <%if (ESD990201.getE02NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input disabled="disabled" type="radio" name="E02RET1" value="S"  <%if (ESD990201.getE02RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input disabled="disabled" type="radio" name="E02RET1" value="N"  <%if (ESD990201.getE02RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input readonly type="text" name="E02RET2" size="20" maxlength="20" value="<%= ESD990201.getE02RET2().trim()%>">
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
             	 Dirección : <input readonly type="text" name="E02RET3" size="60" maxlength="60" value="<%= ESD990201.getE02RET3().trim()%>">
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input readonly type="text" readonly name="E02CLAS" size="4" maxlength="4" value="<%= ESD990201.getE02CLAS().trim()%>">
                </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input readonly type="text" readonly name="E02CAR1" size="4" maxlength="4" value="<%= ESD990201.getE02CAR1().trim()%>">
                 
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input readonly type="text" readonly name="E02TFOR" size="5" maxlength="5" value="<%= ESD990201.getE02TFOR().trim()%>">
                
              
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
          	    <input disabled="disabled" type="radio" name="E02FIR1" value="S"  <%if (ESD990201.getE02FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E02FIR1" value="N"  <%if (ESD990201.getE02FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input readonly type="text" name="E02FECEM" size="2" maxlength="2" value="<%= ESD990201.getE02FECEM().trim()%>"> 
	       		<input readonly type="text" name="E02FECED" size="2" maxlength="2" value="<%= ESD990201.getE02FECED().trim()%>"> 
                <input readonly type="text" name="E02FECEA" size="4" maxlength="4" value="<%= ESD990201.getE02FECEA().trim()%>">
             
                          (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input readonly type="text" name="E02TIN" size="9" maxlength="9" value="<%= ESD990201.getE02TIN().trim()%>">
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
        
	           	<td nowrap width="67%"> 
              	<input readonly type="text" name="E02DIRF" size="60" maxlength="60" value="<%= ESD990201.getE02DIRF().trim()%>">

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
 	                  	<input disabled="disabled" type="radio" name="E02DOC1" value="S"  <%if (ESD990201.getE02DOC1().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC1" value="N"  <%if (ESD990201.getE02DOC1().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :
 	                  	<input disabled="disabled" type="radio" name="E02DOC2" value="S"  <%if (ESD990201.getE02DOC2().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC2" value="N"  <%if (ESD990201.getE02DOC2().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC3" value="S"  <%if (ESD990201.getE02DOC3().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC3" value="N"  <%if (ESD990201.getE02DOC3().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
						Explicación escrita relacionada con la Ciudadanía Americana :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC4" value="S"  <%if (ESD990201.getE02DOC4().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC4" value="N"  <%if (ESD990201.getE02DOC4().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :
 	                  	<input disabled="disabled" type="radio" name="E02DOC5" value="S"  <%if (ESD990201.getE02DOC5().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC5" value="N"  <%if (ESD990201.getE02DOC5().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  : 
 	                  	<input disabled="disabled" type="radio" name="E02DOC6" value="S"  <%if (ESD990201.getE02DOC6().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC6" value="N"  <%if (ESD990201.getE02DOC6().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr>          
            		         		
        		</table>
        	</td>
      	</tr>
    </table>

  </div>
  <%if (ESD990201.getE01NOT1().equals("S")){ %>
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

  <%if (ESD990201.getE01NOT1().equals("S")){ %>
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


</center></form>
</body>
</html>