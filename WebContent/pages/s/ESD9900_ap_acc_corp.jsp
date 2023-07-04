<html>
	<head>
		<title>Informacion Fatca</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "ESD990402" class= "datapro.eibs.beans.ESD990402Message"  scope="session" />
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

	<h3 align="center">Información Accionista <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_AP_acc_corp, ESD9900"></h3>
	<hr size="4">
	<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/servlet/datapro.eibs.client.JSESD9900" >
	<INPUT TYPE=HIDDEN NAME="SCREEN" VALUE="102">
  
  
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
  	
  
	

    <h4>Datos Accionista </h4>
    	<table class="tableinfo">
  		<tr > 
      		<td nowrap > 
        	<table class=tbhead cellspacing="0" cellpadding="2" width="100%"   align="center">
        		<tr>
             	<td nowrap width="10%" align="right"> Numero de Identificacion: 
               	</td>
          		<td nowrap width="12%" align="left">
      			 <input type="text" readonly name="E02IDN" size="35" maxlength="30" value="<%= ESD990402.getE02IDN().trim() %>">
          		</td>
            	<td nowrap width="6%" align="right">Nombre:  
            	</td>
          		<td nowrap width="14%" align="left">
      			 <input type="text" readonly name="E02NOM" size="35" maxlength="30" value="<%= ESD990402.getE02NOM().trim() %>">
          		</td>
            	<td nowrap width="8%" align="right"> Porcentaje de Acciones: 
               	</td>
          		<td nowrap width="50%"align="left">
      			 <input type="text" readonly name="E02PACC" size="35" maxlength="30" value="<%= ESD990402.getE02PACC().trim() %>">
          		</td>
        		</tr>
      		</table>
    		</td>
  		</tr>
  	</table>
  	</br>
    
 	<table class="tableinfo">
    	<tr > 
        	<td nowrap> 
          		<table cellspacing="0" cellpadding="2" width="100%" border="0" align="left">

   		         	<tr id="trdark"> 
		          		<td nowrap width="30%"> 
  	    		        <div align="right">Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990402.getE02NACY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
  		  	       	   <input disabled="disabled" type="radio" name="E02NAC1" value="S"  <%if (ESD990402.getE02NAC1().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input disabled="disabled" type="radio" name="E02NAC1" value="N"  <%if (ESD990402.getE02NAC1().equals("N")) out.print("checked"); %>>
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
              
      			      	<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990402.getE02CITY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
						<input disabled="disabled" type="radio" name="E02CIT1" value="S"  <%if (ESD990402.getE02CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input disabled="disabled" type="radio" name="E02CIT1" value="N"  <%if (ESD990402.getE02CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF" <% if (ESD990402.getE02RENY().equals("Y")) out.print("id=\"txtchanged\""); %>> 
       			   	    <input disabled="disabled" type="radio" name="E02REN1" value="S"  <%if (ESD990402.getE02REN1().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input disabled="disabled" type="radio" name="E02REN1" value="N"  <%if (ESD990402.getE02REN1().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990402.getE02DIR1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              		<input disabled="disabled" type="radio" name="E02DIR1" value="S"  <%if (ESD990402.getE02DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02DIR1" value="N"  <%if (ESD990402.getE02DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" readonly name="E02DIR2" size="60" maxlength="60" value="<%= ESD990402.getE02DIR2().trim()%>" <% if (ESD990402.getE02DIR2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990402.getE02TLF1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              		<input disabled="disabled" type="radio" name="E02TLF1" value="S"  <%if (ESD990402.getE02TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02TLF1" value="N"  <%if (ESD990402.getE02TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input type="text" readonly name="E02TLF2" size="3" maxlength="3" value="<%= ESD990402.getE02TLF2().trim()%>" <% if (ESD990402.getE02TLF2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
              		Cod. Área: <input type="text" readonly name="E02TLF3" size="4" maxlength="4" value="<%= ESD990402.getE02TLF3().trim()%>" <% if (ESD990402.getE02TLF3Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
              		Teléfono : <input type="text" readonly name="E02TLF4" size="15" maxlength="15" value="<%= ESD990402.getE02TLF4().trim()%>" <% if (ESD990402.getE02TLF4Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%" <% if (ESD990402.getE02INS1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              		<input disabled="disabled" type="radio" name="E02INS1" value="S"  <%if (ESD990402.getE02INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02INS1" value="N"  <%if (ESD990402.getE02INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input type="text" readonly name="E02INS2" size="20" maxlength="20" value="<%= ESD990402.getE02INS2().trim()%>" <% if (ESD990402.getE02INS2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
              		Código  SWIFT: <input type="text" readonly name="E02INS3" size="20" maxlength="20" value="<%= ESD990402.getE02INS3().trim()%>" <% if (ESD990402.getE02INS3Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%" <%= ESD990402.getE02NOT1Y().trim()%>" <% if (ESD990402.getE02NOT1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
              	<input disabled="disabled" type="radio" name="E02NOT1" value="S"  onclick="mostrar();"  <%if (ESD990402.getE02NOT1().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E02NOT1" value="N"  onclick="ocultar();" <%if (ESD990402.getE02NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"  <% if (ESD990402.getE02RET1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
             	 <input disabled="disabled" type="radio" name="E02RET1" value="S"  <%if (ESD990402.getE02RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input disabled="disabled" type="radio" name="E02RET1" value="N"  <%if (ESD990402.getE02RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input type="text" readonly name="E02RET2" size="20" maxlength="20" value="<%= ESD990402.getE02RET2().trim()%>" <% if (ESD990402.getE02RET2Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
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
             	 Dirección : <input type="text" readonly name="E02RET3" size="60" maxlength="60" value="<%= ESD990402.getE02RET3().trim()%>" <% if (ESD990402.getE02RET3Y().equals("Y")) out.print("id=\"txtchanged\""); %>>
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input type="text" readonly readonly name="E02CLAS" size="4" maxlength="4" value="<%= ESD990402.getE02CLAS().trim()%>" <% if (ESD990402.getE02CLASY().equals("Y")) out.print("id=\"txtchanged\""); %>>
                  </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input type="text" readonly readonly name="E02CAR1" size="4" maxlength="4" value="<%= ESD990402.getE02CAR1().trim()%>" <% if (ESD990402.getE02CAR1Y().equals("Y")) out.print("id=\"txtchanged\""); %>>               
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly readonly name="E02TFOR" size="5" maxlength="5" value="<%= ESD990402.getE02TFOR().trim()%>" <% if (ESD990402.getE02TFORY().equals("Y")) out.print("id=\"txtchanged\""); %>>
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
          	    <input disabled="disabled" type="radio" name="E02FIR1" value="S"  <%if (ESD990402.getE02FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E02FIR1" value="N"  <%if (ESD990402.getE02FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%" <% if (ESD990402.getE02FIR1Y().equals("Y")) out.print("id=\"txtchanged\""); %>> 
	       		<input type="text" readonly name="E02FECEM" size="2" maxlength="2" value="<%= ESD990402.getE02FECEM().trim()%>"> 
	       		<input type="text" readonly name="E02FECED" size="2" maxlength="2" value="<%= ESD990402.getE02FECED().trim()%>">
                <input type="text" readonly name="E02FECEA" size="4" maxlength="4" value="<%= ESD990402.getE02FECEA().trim()%>">
             
         
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" readonly name="E02TIN" size="9" maxlength="9" value="<%= ESD990402.getE02TIN().trim()%>"  <% if (ESD990402.getE02TINY().equals("Y")) out.print("id=\"txtchanged\""); %>>
                <a href="javascript:GetCode('E02TIN','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
              
            	<td nowrap width="67%"> 
              	<input type="text" readonly name="E02DIRF" size="60" maxlength="60" value="<%= ESD990402.getE02DIRF().trim()%>" <% if (ESD990402.getE02DIRFY().equals("Y")) out.print("id=\"txtchanged\""); %>>

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
 	                  	<input disabled="disabled" type="radio" name="E02DOC1" value="S"  <%if (ESD990402.getE02DOC1().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC1" value="N"  <%if (ESD990402.getE02DOC1().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Certificado de renuncia a la nacionalidad  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC2" value="S"  <%if (ESD990402.getE02DOC2().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC2" value="N"  <%if (ESD990402.getE02DOC2().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC3" value="S"  <%if (ESD990402.getE02DOC3().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC3" value="N"  <%if (ESD990402.getE02DOC3().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                   Explicación escrita relacionada con la Ciudadanía Americana  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC4" value="S"  <%if (ESD990402.getE02DOC4().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC4" value="N"  <%if (ESD990402.getE02DOC4().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC5" value="S"  <%if (ESD990402.getE02DOC5().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC5" value="N"  <%if (ESD990402.getE02DOC5().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC6" value="S"  <%if (ESD990402.getE02DOC6().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC6" value="N"  <%if (ESD990402.getE02DOC6().equals("N")) out.print("checked"); %>>
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
       		       	<input type="text" readonly name="E02IDN1" size="15" maxlength="15" value="<%= ESD990402.getE02IDN1().trim()%>">
    	            <a href="javascript:GetCode('E02IDN1','STATIC_client_help_qualification_type.jsp')"></a></td>
              
       		     	<td nowrap width="8%"> 
        		   	 <div align="right">Nombre de Apoderado :</div>
    		       	</td>
              
           		 	<td nowrap width="67%"> 
     	        	<input type="text" readonly name="E02NOM1" size="60" maxlength="60" value="<%= ESD990402.getE02NOM1().trim()%>">
             		 <a href="javascript:GetPrevTable('E02NOM1')">
        	 
            	      </a> 
           			 </td>             
              
            		</tr>

   		         	<tr id="trdark"> 
		          		<td nowrap width="30%"> 
  	    		        <div align="right">Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
  		  	       	   <input disabled="disabled" type="radio" name="E02NAC11" value="S"  <%if (ESD990402.getE02NAC11().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input disabled="disabled" type="radio" name="E02NAC11" value="N"  <%if (ESD990402.getE02NAC11().equals("N")) out.print("checked"); %>>
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
						<input disabled="disabled" type="radio" name="E02CIT11" value="S"  <%if (ESD990402.getE02CIT11().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input disabled="disabled" type="radio" name="E02CIT11" value="N"  <%if (ESD990402.getE02CIT11().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
       			   	    <input disabled="disabled" type="radio" name="E02REN11" value="S"  <%if (ESD990402.getE02REN11().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input disabled="disabled" type="radio" name="E02REN11" value="N"  <%if (ESD990402.getE02REN11().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input disabled="disabled" type="radio" name="E02DIR11" value="S"  <%if (ESD990402.getE02DIR11().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02DIR11" value="N"  <%if (ESD990402.getE02DIR11().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" readonly name="E02DIR21" size="60" maxlength="60" value="<%= ESD990402.getE02DIR21().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input disabled="disabled" type="radio" name="E02TLF11" value="S"  <%if (ESD990402.getE02TLF11().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02TLF11" value="N"  <%if (ESD990402.getE02TLF11().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input type="text" readonly name="E02TLF21" size="3" maxlength="3" value="<%= ESD990402.getE02TLF21().trim()%>">
              		Cod. Área: <input type="text" readonly name="E02TLF31" size="4" maxlength="4" value="<%= ESD990402.getE02TLF31().trim()%>">
              		Teléfono : <input type="text" readonly name="E02TLF41" size="15" maxlength="15" value="<%= ESD990402.getE02TLF41().trim()%>">
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input disabled="disabled" type="radio" name="E02INS11" value="S"  <%if (ESD990402.getE02INS11().equals("S")) out.print("checked"); %>>
                	Si
                	<input disabled="disabled" type="radio" name="E02INS11" value="N"  <%if (ESD990402.getE02INS11().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input type="text" readonly name="E02INS21" size="20" maxlength="20" value="<%= ESD990402.getE02INS21().trim()%>">
              		Código  SWIFT: <input type="text" readonly name="E02INS31" size="20" maxlength="20" value="<%= ESD990402.getE02INS31().trim()%>">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input disabled="disabled" type="radio" name="E02NOT11" value="S"  <%if (ESD990402.getE02NOT11().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E02NOT11" value="N"  <%if (ESD990402.getE02NOT11().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input disabled="disabled" type="radio" name="E02RET11" value="S"  <%if (ESD990402.getE02RET11().equals("S")) out.print("checked"); %>>
               	Si
               	 <input disabled="disabled" type="radio" name="E02RET11" value="N"  <%if (ESD990402.getE02RET11().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input type="text" readonly name="E02RET21" size="20" maxlength="20" value="<%= ESD990402.getE02RET21().trim()%>">
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
             	 Dirección : <input type="text" readonly name="E02RET31" size="60" maxlength="60" value="<%= ESD990402.getE02RET31().trim()%>">
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input type="text" readonly readonly name="E02CLAS1" size="4" maxlength="4" value="<%= ESD990402.getE02CLAS1().trim()%>">
                </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input type="text" readonly readonly name="E02CAR11" size="4" maxlength="4" value="<%= ESD990402.getE02CAR11().trim()%>">
                  <a href="javascript:GetCodeCNOFC('E02CAR11','FT')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a>
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly readonly name="E02TFOR1" size="5" maxlength="5" value="<%= ESD990402.getE02TFOR1().trim()%>">
                <a href="javascript:GetCode('E02TFOR1','STATIC_client_help_qualification_type.jsp')"></a></td>
              
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
          	    <input disabled="disabled" type="radio" name="E02FIR11" value="S"  <%if (ESD990402.getE02FIR11().equals("S")) out.print("checked"); %>>
                Si
                <input disabled="disabled" type="radio" name="E02FIR11" value="N"  <%if (ESD990402.getE02FIR11().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input type="text" readonly name="E02FECEM1" size="2" maxlength="2" value="<%= ESD990402.getE02FECEM1().trim()%>"> 
	       		<input type="text" readonly name="E02FECED1" size="2" maxlength="2" value="<%= ESD990402.getE02FECED1().trim()%>"> 
                <input type="text" readonly name="E02FECEA1" size="4" maxlength="4" value="<%= ESD990402.getE02FECEA1().trim()%>">
             
                <a href="javascript:DOBPicker(document.forms[0].E02FECEM1,document.forms[0].E02FECED1,document.forms[0].E02FECEA1)"><img src="<%=request.getContextPath()%>/images/calendar.gif" alt="ayuda" align="middle" border="0"></a> 
                <img src="<%=request.getContextPath()%>/images/Check.gif" alt="mandatory field" align="bottom" border="0" > 
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" readonly name="E02TIN1" size="9" maxlength="9" value="<%= ESD990402.getE02TIN1().trim()%>">
                <a href="javascript:GetCode('E02TIN1','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
        
	           	<td nowrap width="67%"> 
              	<input type="text" readonly name="E02DIRF1" size="60" maxlength="60" value="<%= ESD990402.getE02DIRF1().trim()%>">

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
 	                  	<input disabled="disabled" type="radio" name="E02DOC11" value="S"  <%if (ESD990402.getE02DOC11().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC11" value="N"  <%if (ESD990402.getE02DOC11().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :
 	                  	<input disabled="disabled" type="radio" name="E02DOC21" value="S"  <%if (ESD990402.getE02DOC21().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC21" value="N"  <%if (ESD990402.getE02DOC21().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC31" value="S"  <%if (ESD990402.getE02DOC31().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC31" value="N"  <%if (ESD990402.getE02DOC31().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
						Explicación escrita relacionada con la Ciudadanía Americana :  
 	                  	<input disabled="disabled" type="radio" name="E02DOC41" value="S"  <%if (ESD990402.getE02DOC41().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC41" value="N"  <%if (ESD990402.getE02DOC41().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :
 	                  	<input disabled="disabled" type="radio" name="E02DOC51" value="S"  <%if (ESD990402.getE02DOC51().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC51" value="N"  <%if (ESD990402.getE02DOC51().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  : 
 	                  	<input disabled="disabled" type="radio" name="E02DOC61" value="S"  <%if (ESD990402.getE02DOC61().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input disabled="disabled" type="radio" name="E02DOC61" value="N"  <%if (ESD990402.getE02DOC61().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr>          
            		         		
        		</table>
        	</td>
      	</tr>
    </table>
    </div>
  <%if (ESD990402.getE02NOT1().equals("S")){ %>
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