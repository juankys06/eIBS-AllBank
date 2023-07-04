<html>
	<head>
		<title>Informacion Fatca</title>
		<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=ISO-8859-1">
		<link href="<%=request.getContextPath()%>/pages/style.css" rel="stylesheet">
	</head>

	<jsp:useBean id= "ESD990302" class= "datapro.eibs.beans.ESD990302Message"  scope="session" />
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

	<h3 align="center">Información Accionista <img src="<%=request.getContextPath()%>/images/e_ibs.gif" align="left" name="EIBS_GIF" ALT="client_acc_corp, ESD9900"></h3>
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
      			 <input type="text" name="E04IDN" size="35" maxlength="30" value="<%= ESD990302.getE04IDN().trim() %>">
          		</td>
            	<td nowrap width="6%" align="right">Nombre:  
            	</td>
          		<td nowrap width="14%" align="left">
      			 <input type="text" name="E04NOM" size="35" maxlength="30" value="<%= ESD990302.getE04NOM().trim() %>">
          		</td>
            	<td nowrap width="8%" align="right"> Porcentaje de Acciones: 
               	</td>
          		<td nowrap width="50%"align="left">
      			 <input type="text" name="E04PACC" size="35" maxlength="30" value="<%= ESD990302.getE04PACC().trim() %>">
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
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
  		  	       	   <input type="radio" name="E04NAC1" value="S"  <%if (ESD990302.getE04NAC1().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input type="radio" name="E04NAC1" value="N"  <%if (ESD990302.getE04NAC1().equals("N")) out.print("checked"); %>>
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
						<input type="radio" name="E04CIT1" value="S"  <%if (ESD990302.getE04CIT1().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input type="radio" name="E04CIT1" value="N"  <%if (ESD990302.getE04CIT1().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
       			   	    <input type="radio" name="E04REN1" value="S"  <%if (ESD990302.getE04REN1().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input type="radio" name="E04REN1" value="N"  <%if (ESD990302.getE04REN1().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E04DIR1" value="S"  <%if (ESD990302.getE04DIR1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E04DIR1" value="N"  <%if (ESD990302.getE04DIR1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E04DIR2" size="60" maxlength="60" value="<%= ESD990302.getE04DIR2().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E04TLF1" value="S"  <%if (ESD990302.getE04TLF1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E04TLF1" value="N"  <%if (ESD990302.getE04TLF1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input type="text" name="E04TLF2" size="3" maxlength="3" value="<%= ESD990302.getE04TLF2().trim()%>">
              		Cod. Área: <input type="text" name="E04TLF3" size="4" maxlength="4" value="<%= ESD990302.getE04TLF3().trim()%>">
              		Teléfono : <input type="text" name="E04TLF4" size="15" maxlength="15" value="<%= ESD990302.getE04TLF4().trim()%>">
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E04INS1" value="S"  <%if (ESD990302.getE04INS1().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E04INS1" value="N"  <%if (ESD990302.getE04INS1().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input type="text" name="E04INS2" size="20" maxlength="20" value="<%= ESD990302.getE04INS2().trim()%>">
              		Código  SWIFT: <input type="text" name="E04INS3" size="20" maxlength="20" value="<%= ESD990302.getE04INS3().trim()%>">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input type="radio" name="E04NOT1" value="S"  onclick="mostrar();"  <%if (ESD990302.getE04NOT1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E04NOT1" value="N"  onclick="ocultar();" <%if (ESD990302.getE04NOT1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input type="radio" name="E04RET1" value="S"  <%if (ESD990302.getE04RET1().equals("S")) out.print("checked"); %>>
               	Si
               	 <input type="radio" name="E04RET1" value="N"  <%if (ESD990302.getE04RET1().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input type="text" name="E04RET2" size="20" maxlength="20" value="<%= ESD990302.getE04RET2().trim()%>">
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
             	 Dirección : <input type="text" name="E04RET3" size="60" maxlength="60" value="<%= ESD990302.getE04RET3().trim()%>">
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input type="text" readonly name="E04CLAS" size="4" maxlength="4" value="<%= ESD990302.getE04CLAS().trim()%>">
                  </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input type="text" readonly name="E04CAR1" size="4" maxlength="4" value="<%= ESD990302.getE04CAR1().trim()%>">
                  <a href="javascript:GetCodeCNOFC('E04CAR1','FT')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a> 
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly name="E04TFOR" size="5" maxlength="5" value="<%= ESD990302.getE04TFOR().trim()%>">
                <a href="javascript:GetCode('E04TFOR','STATIC_client_help_qualification_type.jsp')"></a></td>
              
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
          	    <input type="radio" name="E04FIR1" value="S"  <%if (ESD990302.getE04FIR1().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E04FIR1" value="N"  <%if (ESD990302.getE04FIR1().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input type="text" name="E04FECEM" size="2" maxlength="2" value="<%= ESD990302.getE04FECEM().trim()%>"> 
	       		<input type="text" name="E04FECED" size="2" maxlength="2" value="<%= ESD990302.getE04FECED().trim()%>">
                <input type="text" name="E04FECEA" size="4" maxlength="4" value="<%= ESD990302.getE04FECEA().trim()%>">
             
                <a href="javascript:DOBPicker(document.forms[0].E04FECEM,document.forms[0].E04FECED,document.forms[0].E04FECEA)"><img src="<%=request.getContextPath()%>/images/calendar.gif" alt="ayuda" align="middle" border="0"></a> 
                <img src="<%=request.getContextPath()%>/images/Check.gif" alt="mandatory field" align="bottom" border="0" > 
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" name="E04TIN" size="9" maxlength="9" value="<%= ESD990302.getE04TIN().trim()%>">
                <a href="javascript:GetCode('E04TIN','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
              
            	<td nowrap width="67%"> 
              	<input type="text" name="E04DIRF" size="60" maxlength="60" value="<%= ESD990302.getE04DIRF().trim()%>">

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
 	                  	<input type="radio" name="E04DOC1" value="S"  <%if (ESD990302.getE04DOC1().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC1" value="N"  <%if (ESD990302.getE04DOC1().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Certificado de renuncia a la nacionalidad  :  
 	                  	<input type="radio" name="E04DOC2" value="S"  <%if (ESD990302.getE04DOC2().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC2" value="N"  <%if (ESD990302.getE04DOC2().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input type="radio" name="E04DOC3" value="S"  <%if (ESD990302.getE04DOC3().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC3" value="N"  <%if (ESD990302.getE04DOC3().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                   Explicación escrita relacionada con la Ciudadanía Americana  :  
 	                  	<input type="radio" name="E04DOC4" value="S"  <%if (ESD990302.getE04DOC4().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC4" value="N"  <%if (ESD990302.getE04DOC4().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :  
 	                  	<input type="radio" name="E04DOC5" value="S"  <%if (ESD990302.getE04DOC5().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC5" value="N"  <%if (ESD990302.getE04DOC5().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  :  
 	                  	<input type="radio" name="E04DOC6" value="S"  <%if (ESD990302.getE04DOC6().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC6" value="N"  <%if (ESD990302.getE04DOC6().equals("N")) out.print("checked"); %>>
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
       		       	<input type="text" name="E04IDN1" size="15" maxlength="15" value="<%= ESD990302.getE04IDN1().trim()%>">
    	            <a href="javascript:GetCode('E04IDN1','STATIC_client_help_qualification_type.jsp')"></a></td>
              
       		     	<td nowrap width="8%"> 
        		   	 <div align="right">Nombre de Apoderado :</div>
    		       	</td>
              
           		 	<td nowrap width="67%"> 
     	        	<input type="text" name="E04NOM1" size="60" maxlength="60" value="<%= ESD990302.getE04NOM1().trim()%>">
             		 <a href="javascript:GetPrevTable('E04NOM1')">
        	 
            	      </a> 
           			 </td>             
              
            		</tr>

   		         	<tr id="trdark"> 
		          		<td nowrap width="30%"> 
  	    		        <div align="right">Lugar de Nacimiento EEUU :</div>
   		  	     	    </td>
              
  		   	    	   <td nowrap bordercolor="#FFFFFF" width="20%"> 
  		  	       	   <input type="radio" name="E04NAC11" value="S"  <%if (ESD990302.getE04NAC11().equals("S")) out.print("checked"); %>>
  	        	      	Si
     		           <input type="radio" name="E04NAC11" value="N"  <%if (ESD990302.getE04NAC11().equals("N")) out.print("checked"); %>>
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
						<input type="radio" name="E04CIT11" value="S"  <%if (ESD990302.getE04CIT11().equals("S")) out.print("checked"); %>>
 		              	Si
                		<input type="radio" name="E04CIT11" value="N"  <%if (ESD990302.getE04CIT11().equals("N")) out.print("checked"); %>>
              	  	 	No 
                		</td>
              
         	 			<td nowrap width="8%"> 
   			         	  <div align="right">Renuncio a la Ciudadanía :</div>
    		        	</td>
              
     			   	   	 <td nowrap width="15%" bordercolor="#FFFFFF"> 
       			   	    <input type="radio" name="E04REN11" value="S"  <%if (ESD990302.getE04REN11().equals("S")) out.print("checked"); %>>
          			      Si
     			         <input type="radio" name="E04REN11" value="N"  <%if (ESD990302.getE04REN11().equals("N")) out.print("checked"); %>>
    			            No 
         			      </td>
       		     </tr>

            	<tr id="trdark"> 
		            <td nowrap width="30%"> 
        		      <div align="right">Dirección  de Residencia EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E04DIR11" value="S"  <%if (ESD990302.getE04DIR11().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E04DIR11" value="N"  <%if (ESD990302.getE04DIR11().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Dirección  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		<input type="text" name="E04DIR21" size="60" maxlength="60" value="<%= ESD990302.getE04DIR21().trim()%>">
                	</td>
           	 	</tr>



            	<tr id="teclear"> 
            		<td nowrap width="30%"> 
              		<div align="right">Teléfono  de Contacto en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E04TLF11" value="S"  <%if (ESD990302.getE04TLF11().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E04TLF11" value="N"  <%if (ESD990302.getE04TLF11().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right">Numero de Teléfono  :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Cod. País:<input type="text" name="E04TLF21" size="3" maxlength="3" value="<%= ESD990302.getE04TLF21().trim()%>">
              		Cod. Área: <input type="text" name="E04TLF31" size="4" maxlength="4" value="<%= ESD990302.getE04TLF31().trim()%>">
              		Teléfono : <input type="text" name="E04TLF41" size="15" maxlength="15" value="<%= ESD990302.getE04TLF41().trim()%>">
                	
            	</tr>
            
            	<tr id="trdark"> 
	            	<td nowrap width="30%"> 
              		<div align="right">Instrucciones Fijas de Transacciones en EEUU :</div>
              		</td>
              
            		<td nowrap bordercolor="#FFFFFF" width="20%"> 
              		<input type="radio" name="E04INS11" value="S"  <%if (ESD990302.getE04INS11().equals("S")) out.print("checked"); %>>
                	Si
                	<input type="radio" name="E04INS11" value="N"  <%if (ESD990302.getE04INS11().equals("N")) out.print("checked"); %>>
                	No 
                	</td>
              
            		<td nowrap width="8%"> 
              		<div align="right"> Instrucciones :</div>
              		</td>
              
            		<td nowrap width="67%"> 
              		Código  ABA: <input type="text" name="E04INS21" size="20" maxlength="20" value="<%= ESD990302.getE04INS21().trim()%>">
              		Código  SWIFT: <input type="text" name="E04INS31" size="20" maxlength="20" value="<%= ESD990302.getE04INS31().trim()%>">
                  	</a> 
            		</td>
            	</tr>


            <tr id="teclear"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Poder Notarial Otorgado a Residente en EEUU :</div>
              	</td>
              
            	<td nowrap bordercolor="#FFFFFF" width="20%"> 
              	<input type="radio" name="E04NOT11" value="S"  <%if (ESD990302.getE04NOT11().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E04NOT11" value="N"  <%if (ESD990302.getE04NOT11().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
      	        <div align="right">Solicitud  Retener Estado de Cuentas :</div>
             	 </td>
              
           		 <td nowrap bordercolor="#FFFFFF" width="20%"> 
             	 <input type="radio" name="E04RET11" value="S"  <%if (ESD990302.getE04RET11().equals("S")) out.print("checked"); %>>
               	Si
               	 <input type="radio" name="E04RET11" value="N"  <%if (ESD990302.getE04RET11().equals("N")) out.print("checked"); %>>
                No 
                </td>
              
            	<td nowrap width="8%"> 
              	<div align="right">Retención  Estado de Cuenta:</div>
             	 </td>
              
           		 <td nowrap width="67%"> 
             	 P.O Box:<input type="text" name="E04RET21" size="20" maxlength="20" value="<%= ESD990302.getE04RET21().trim()%>">
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
             	 Dirección : <input type="text" name="E04RET31" size="60" maxlength="60" value="<%= ESD990302.getE04RET31().trim()%>">
           		 </td>
            </tr>


              <tr id="trclear">
                <td nowrap width="30%" > 
                  <div align="right">Clasificación  del Cliente :</div>
                </td>
                <td nowrap width="23%" > 
                  <input type="text" readonly name="E04CLAS1" size="4" maxlength="4" value="<%= ESD990302.getE04CLAS1().trim()%>">
                </td>
               
                <td nowrap width="25%" > 
                  <div align="right"> Característica  :</div>
                </td>
                <td nowrap  width="31%"> 
                  <input type="text" readonly name="E04CAR11" size="4" maxlength="4" value="<%= ESD990302.getE04CAR11().trim()%>">
                  <a href="javascript:GetCodeCNOFC('E04CAR11','FT')"><img src="<%=request.getContextPath()%>/images/1b.gif" alt="ayuda" align="bottom" border="0" ></a>
                </td>

              </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">Tipo de Formulario :</div>
 	             </td>
              
           		 <td nowrap width="20%"> 
            	 <input type="text" readonly name="E04TFOR1" size="5" maxlength="5" value="<%= ESD990302.getE04TFOR1().trim()%>">
                <a href="javascript:GetCode('E04TFOR1','STATIC_client_help_qualification_type.jsp')"></a></td>
              
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
          	    <input type="radio" name="E04FIR11" value="S"  <%if (ESD990302.getE04FIR11().equals("S")) out.print("checked"); %>>
                Si
                <input type="radio" name="E04FIR11" value="N"  <%if (ESD990302.getE04FIR11().equals("N")) out.print("checked"); %>>
                No 
                </td>
                
                <td nowrap width="8%"> 
    	          <div align="right">Fecha entrega Formulario :</div>
 	             </td>
          
	       		 <td nowrap width="20%">
	       		<input type="text" name="E04FECEM1" size="2" maxlength="2" value="<%= ESD990302.getE04FECEM1().trim()%>"> 
	       		<input type="text" name="E04FECED1" size="2" maxlength="2" value="<%= ESD990302.getE04FECED1().trim()%>"> 
                <input type="text" name="E04FECEA1" size="4" maxlength="4" value="<%= ESD990302.getE04FECEA1().trim()%>">
             
                <a href="javascript:DOBPicker(document.forms[0].E04FECEM1,document.forms[0].E04FECED1,document.forms[0].E04FECEA1)"><img src="<%=request.getContextPath()%>/images/calendar.gif" alt="ayuda" align="middle" border="0"></a> 
                <img src="<%=request.getContextPath()%>/images/Check.gif" alt="mandatory field" align="bottom" border="0" > 
                (MM-DD-AAAA)               
                
   
            </tr>


            <tr id="trdark"> 
	            <td nowrap width="30%"> 
    	          <div align="right">TIN (Tax Identification Number):</div>
             	 </td>
              
            	<td nowrap width="20%"> 
              	<input type="text" name="E04TIN1" size="9" maxlength="9" value="<%= ESD990302.getE04TIN1().trim()%>">
                <a href="javascript:GetCode('E04TIN1','STATIC_client_help_qualification_type.jsp')"></a></td>
              
            	<td nowrap width="8%"> 
             	 <div align="right">Residencia Fiscal :</div>
              	</td>
        
	           	<td nowrap width="67%"> 
              	<input type="text" name="E04DIRF1" size="60" maxlength="60" value="<%= ESD990302.getE04DIRF1().trim()%>">

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
 	                  	<input type="radio" name="E04DOC11" value="S"  <%if (ESD990302.getE04DOC11().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC11" value="N"  <%if (ESD990302.getE04DOC11().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :
 	                  	<input type="radio" name="E04DOC21" value="S"  <%if (ESD990302.getE04DOC21().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC21" value="N"  <%if (ESD990302.getE04DOC21().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
            		</tr>
            		
          		   	<tr id="trdark">
 	                <td nowrap width="50%"> 
 	                    Forma 407: Abandono del permiso de Estatus de Residente.  :  
 	                  	<input type="radio" name="E04DOC31" value="S"  <%if (ESD990302.getE04DOC31().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC31" value="N"  <%if (ESD990302.getE04DOC31().equals("N")) out.print("checked"); %>>
               			No  
              		</td>
 	                <td nowrap width="50%"> 
						Explicación escrita relacionada con la Ciudadanía Americana :  
 	                  	<input type="radio" name="E04DOC41" value="S"  <%if (ESD990302.getE04DOC41().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC41" value="N"  <%if (ESD990302.getE04DOC41().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr> 

          		   	<tr id="teclear">
 	                <td nowrap width="50%">
 	                    Ordenes de Transferencia  :
 	                  	<input type="radio" name="E04DOC51" value="S"  <%if (ESD990302.getE04DOC51().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC51" value="N"  <%if (ESD990302.getE04DOC51().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
 	                <td nowrap width="50%">
 	                    In Care of (c/o) o Hold Mail  : 
 	                  	<input type="radio" name="E04DOC61" value="S"  <%if (ESD990302.getE04DOC61().equals("S")) out.print("checked"); %>>
               			Si
               	 		<input type="radio" name="E04DOC61" value="N"  <%if (ESD990302.getE04DOC61().equals("N")) out.print("checked"); %>>
               			No 
              		</td>
            		</tr>          
            		         		
        		</table>
        	</td>
      	</tr>
    </table>
    </div>
  <%if (ESD990302.getE04NOT1().equals("S")){ %>
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