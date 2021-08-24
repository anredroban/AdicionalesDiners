<meta name="layout" content="main" />
<title>Adicionales - Gestionar Cliente</title>

<asset:stylesheet src="gestion/gestionCliente.css" />
<asset:stylesheet src="usogeneral/bootstrap-datepicker.min.css"></asset:stylesheet>

<script type="text/javascript">
    $(function () {
        $('#datetimepicker4').datetimepicker({
            format: 'YYYY/MM/DD hh:mm A'
        });
    });
</script>

<script type="text/javascript">
    $(function () {
        $('#horaEntrega').datetimepicker({
            datepicker: false,
            format: 'H:i'
        });
    });
</script>

<g:form action="guardarCliente">

<div class="container-fluid">

	<g:if test="${cliente.registroExitoso == 'SI'}">
		<div class="col-lg-12 col-md-12 col-xs-12">
			<label id="blink" style="font-size: 28px; font-weight: bold; color: red" >¡AVISO! </label><span id="priodidadTc" style="font-size: 28px; font-weight: bold; color: red">CLIENTE EXITOSO NO GESTIONAR</span>
		</div>
	</g:if>
	<div class="panel panel-default col-lg-12 col-md-12 col-xs-12">
		<div class="col-lg-12 col-md-12 col-xs-12 group-title">Datos del cliente</div>
		<div class="col-lg-12 col-md-12 col-xs-12 line"></div>

		<g:if test="${cliente.nombres != null && cliente.nombres != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 col-xs-12 form-group">
				<label>Nombres:</label>
				${cliente.nombres}
			</div>
		</g:if>

		<g:if test="${cliente.apellidos != null && cliente.apellidos != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Apellidos:</label>
				${cliente.apellidos}
			</div>
		</g:if>

		<g:if test="${cliente.identificacion != null && cliente.identificacion != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<g:hiddenField name="identificacion" id="identificacion" value="${cliente.identificacion}"></g:hiddenField>
				<label>Identificación:</label>
				${cliente.identificacion}
			</div>
		</g:if>

		<g:if test="${cliente.cuenta != null && cliente.cuenta != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Cuenta:</label>
				${utilitarios.Util.hideCardNumber(cliente.cuenta)}
			</div>
		</g:if>

		<g:if test="${cliente.direccion != null && cliente.direccion != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Dirección:</label>
				${cliente.direccion}
			</div>
		</g:if>

		<g:if test="${cliente.ciudadDomic != null && cliente.ciudadDomic != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Ciudad:</label>
				${cliente.ciudadDomic}
			</div>
		</g:if>

		<g:if test="${cliente.genero != null && cliente.genero != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Género:</label>
				${cliente.genero}
			</div>
		</g:if>

		<g:if test="${cliente.estadoCivil != null && cliente.estadoCivil != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Estado Civil:</label>
				${cliente.estadoCivil}
			</div>
		</g:if>

		<!-- ini 04/04/2021 -->
		<g:if test="${cliente.tieneEncuestaGp != null && cliente.tieneEncuestaGp != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<g:hiddenField name="tieneEncuestaGp" id="tieneEncuestaGp" value="${cliente.productoVigente}"></g:hiddenField>
				<label>Encuesta GP:</label>
				${cliente.tieneEncuestaGp}
			</div>
		</g:if>
		<g:if test="${cliente.productoVigente != null && cliente.productoVigente != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<g:hiddenField name="productoVigente" id="productoVigente" value="${cliente.productoVigente}"></g:hiddenField>
				<label>Producto Vigente:</label>
				${cliente.productoVigente}
			</div>
		</g:if>
	<!-- fin 04/04/2021 -->

		<g:if test="${cliente.productoDiners != null && cliente.productoDiners != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Producto Diners:</label>
				${cliente.productoDiners}
			</div>
		</g:if>

		<g:if test="${cliente.productoVisa != null && cliente.productoVisa != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Producto Visa:</label>
				${cliente.productoVisa}
			</div>
		</g:if>

		<g:if test="${cliente.productoDiscover != null && cliente.productoDiscover != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Producto Discover:</label>
				${cliente.productoDiscover}
			</div>
		</g:if>
		<g:if test="${cliente.productoMastercard != null && cliente.productoMastercard != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Producto Mastercard:</label>
				${cliente.productoMastercard}
			</div>
		</g:if>

		<g:if test="${cliente.productoVender != null && cliente.productoVender != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Producto Vender:</label>
				${cliente.productoVender}
			</div>
		</g:if>

		<g:if test="${cliente.numeroCuenta != null && cliente.numeroCuenta != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Número Cuenta:</label>
				${cliente.numeroCuenta}
			</div>
		</g:if>


		<g:if test="${cliente.codigoAsignacion != null && cliente.codigoAsignacion != ''}">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Easy Code:</label>
				${cliente.codigoAsignacion}
			</div>
		</g:if>

		<g:if test="${cliente.definicion != null && cliente.definicion != ''}">
			<div class="col-lg-6 col-md-6 col-xs-12 form-group">
				<label>Definición Oferta Opcional:</label>
				${cliente.definicion}
			</div>
		</g:if>
		<g:if test="${cliente.cedula_adicional != null && cliente.cedula_adicional != ''}">
			<div class="col-lg-6 col-md-6 col-xs-12 form-group">
				<label>Cedula Adicional:</label>
				${cliente.cedula_adicional}
			</div>
		</g:if>
		<g:if test="${cliente.nombre_adicional != null && cliente.nombre_adicional != ''}">
			<div class="col-lg-6 col-md-6 col-xs-12 form-group">
				<label>Nombre Adicional:</label>
				${cliente.nombre_adicional}
			</div>
		</g:if>
		<g:if test="${cliente.segmentacionAd4 != null && cliente.segmentacionAd4 != ''}">
			<div class="col-lg-6 col-md-6 col-xs-12 form-group">
				<label>Producto Adicional:</label>
				${cliente.segmentacionAd4}
			</div>
		</g:if>

	</div>

	<div class="panel panel-default col-lg-12 col-md-12 col-xs-12">
		<div class="col-lg-12 col-md-12 col-xs-12 group-title">Datos de contacto</div>
		<div class="col-lg-12 col-md-12 col-xs-12 line"></div>

		<g:if test="${cliente.telefono1}">
			<div id="number1" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-mobile-phone"></span> Teléfono 1: </label>
				 ${cliente.telefono1}
				<g:select class="form-control" id="estadoTel1" name="estadoTel1" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}" noSelection="${['': '-- Seleccione --']}" optionValue="value" optionKey="value" />

			</div>
		</g:if>
		<g:if test="${cliente.telefono2 && cliente.telefono2.trim() != ''}">
			<div id="number2" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 2: </label>
				 ${cliente.telefono2}
				<g:select  class="form-control" id="estadoTel2" name="estadoTel2" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono3 && cliente.telefono3.trim() != ''}">
			<div id="number3" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 3: </label>
				 ${cliente.telefono3}
				<g:select  class="form-control" id="estadoTel3" name="estadoTel3" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono4 && cliente.telefono4.trim() != ''}">
			<div id="number4" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 4: </label>
				${cliente.telefono4}
				<g:select  class="form-control" id="estadoTel4" name="estadoTel4" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono5 && cliente.telefono5.trim() != ''}">
			<div id="number5" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 5: </label>
				${cliente.telefono5}
				<g:select  class="form-control" id="estadoTel5" name="estadoTel5" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono6 && cliente.telefono6.trim() != ''}">
			<div id="number6" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 6: </label>
				${cliente.telefono6}
				<g:select  class="form-control" id="estadoTel6" name="estadoTel6" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono7 && cliente.telefono7.trim() != ''}">
			<div id="number7" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 7: </label>
				${cliente.telefono7}
				<g:select  class="form-control" id="estadoTel7" name="estadoTel7" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono8 && cliente.telefono8.trim() != ''}">
			<div id="number8" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 8: </label>
				${cliente.telefono8}
				<g:select  class="form-control" id="estadoTel8" name="estadoTel8" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono9 && cliente.telefono9.trim() != ''}">
			<div id="number9" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 9: </label>
				${cliente.telefono9}
				<g:select  class="form-control" id="estadoTel9" name="estadoTel9" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<g:if test="${cliente.telefono10 && cliente.telefono10.trim() != ''}">
			<div id="number10" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-phone"></span> Teléfono 10: </label>
				${cliente.telefono10}
				<g:select  class="form-control" id="estadoTel10" name="estadoTel10" noSelection="${['': '-- Seleccione --']}" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}"/>
			</div>
		</g:if>
		<div class="col-lg-12 group-title">Datos Complementarios</div>
		<div class="col-lg-12 line"></div>
		<g:if test="${cliente.email && cliente.email.trim() != ''}">
			<div class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-archive"></span> Email: </label>
				${cliente.email}
			</div>
		</g:if>
		<g:if test="${cliente.codigoAsignacion && cliente.codigoAsignacion.trim() != ''}">
			<div class="form-group col-lg-4 col-md-6 col-xs-12">
				<label><span class="fa fa-archive"></span> Easy Code: </label>
				${cliente.codigoAsignacion}
			</div>
		</g:if>

	</div>


		<input type="hidden" value="${cliente.id}" id="idCliente" name="idCliente">
		<input type="hidden" value="${cliente.identificacion}" id="identificacionTitular" name="identificacionTitular">
		<div class="panel panel-default col-lg-12 col-md-12 col-xs-12">
			<div class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Estado Gestion</label>
				<span class="required-indicator">*</span>
				<g:select class="form-control" name="status" id="status"
						  from="${callcenter.Estado.list()}" optionKey="id"
						  optionValue="${{it.nombre	}}"
						  noSelection="${['': '-- Seleccione --']}" />
			</div>

			<div id="subStatusDiv" class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Subestado Gestion</label>
				<span class="required-indicator">*</span>
				<g:select class="form-control" name="substatus" id="substatus" from="" noSelection="${['': '-- Seleccione --']}" />
			</div>

			<div id="subSubStatusDiv" class="form-group col-lg-4 col-md-6 col-xs-12">
				<label>Sub subestado</label>
				<span class="required-indicator">*</span>
				<g:select id="subSubStatus" class="form-control" name="subSubStatus" from="" optionKey="id"></g:select>
			</div>

			<div id="divMotivo" class="col-lg-4 col-md-6 col-xs-12 form-group">
				<label>Motivos No Acepta Seguro</label>
				<span class="required-indicator">*</span>
				<g:select class="form-control" name="motivoNoAceptaSeguro" id="motivoNoAceptaSeguro"
						  from="${callcenter.MotivosnoAceptaSeguro.list()}" optionKey="nombre"
						  optionValue="${{it.nombre	}}"
						  noSelection="${['': '-- Seleccione --']}" />
			</div>
            <div id="recallDiv">
				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Agendamiento</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="agendamiento" id="agendamiento" from="${['AGENDAR PARA MI':'AGENDAR PARA MI', 'AGENDAR PARA CUALQUIERA':'AGENDAR PARA CUALQUIERA']}" optionKey="key"
							  optionValue="value"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>
			<div class="col-lg-4 col-md-6 form-group">
				<label>Fecha Rellamada</label>
				<span class="required-indicator">*</span>
				<g:textField id="recall" name="recall" class="recall form-control"/>
			</div>
			</div>

			<div id="telefonoContactadoDiv" >
				<div class="col-lg-4 col-md-6 form-group">
					<label style="color: red">Teléfono Contactado</label>
					<span class="required-indicator">*</span>
					<g:textField maxlength="10" minlength="9" id="telefonoContactado" name="telefonoContactado" class="form-control"/>
				</div>
				<div class="form-group col-lg-4 col-md-6 col-xs-12">
					<label >Estado Teléfono Contactado</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" id="estadoTelefonoContactado" name="estadoTelefonoContactado" from="${['MANEJADA','NO_CONTESTA','LLAMADA_RECHAZADA','CONTESTADORA']}" noSelection="${['': '-- Seleccione --']}"/>

				</div>
			</div>

		</div>
	<g:if test="${cliente.tipoProducto == 'APLICA CREDITO VEHICULAR'}">
		<div id="encuestaVehicular"  class="panel panel-default col-lg-12 col-md-12 col-xs-12">
			<div class="col-lg-12 col-md-12 col-xs-12 group-title">Encuesta Vehicular</div>
			<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
			<div class="col-lg-12 col-md-12 col-xs-12">
				<div class="col-lg-12 col-md-12 col-xs-12">
					<p>
						Sr (a) (ita) <strong>${cliente.nombres} ${cliente.apellidos}</strong>, el motivo de mi llamada es informarle que por el excelente manejo de su tarjeta tiene pre aprobado un
					monto de USD XX.XXX para adquirir un vehículo nuevo<br>
						cam_fin_vehicular_con_prenda: <strong>${cliente.cam_fin_vehicular_con_prenda}</strong><br>
						cam_fin_vehicular_monto_con_prenda: <strong>${cliente.cam_fin_vehicular_monto_con_prenda}</strong>
					</p>
					<p>
						¿Le gustaría contar con este beneficio?
					</p>
					<div class="col-lg-4 col-md-4 form-group">
						<label>Aceptacion Vehicular</label>
						<span class="required-indicator">*</span>
						<g:select class="form-control" name="aceptacionCreditoVehicular" id="aceptacionCreditoVehicular" from="${['SI':'Si', 'NO':'No']}" optionKey="key"
								  optionValue="value"
								  noSelection="${['': '-- Seleccione --']}" />
					</div>
					<div id="aceptacionVehicular">
						<div class="col-lg-12 col-md-12 form-group">
							<p>
								Usted podrá acceder a su crédito vehicular directamente en el concesionario de su preferencia sin cargos adicionales por desembolso o gastos administrativos, ni firmas de garantes, financiamiento máximo a 60 meses y hasta el 100% del valor del vehículo.<br>
								Para hacer efectivo su financiamiento vehicular usted debe acercarse al concesionario de su preferencia únicamente con su cédula de identidad y tarjeta de crédito.<br>
								Aplica restricciones propias de los concesionarios.
							</p>
						</div>
					</div>
					<div id="noAceptacionVehicular">
						<div class="col-lg-12 col-md-12 form-group">
							<div class="col-lg-6 col-md-6 form-group">
								<label>¿Por qué no desea en este momento el monto pre aprobado?</label>
								<span class="required-indicator">*</span>
								<g:select class="form-control" name="motivoNoAceptaVehicular" id="motivoNoAceptaVehicular" from="${['No lo necesita / No dispone efectivo':'No lo necesita / No dispone efectivo'
																																	, 'No le interesa endeudarse':'No le interesa endeudarse'
																																	, 'Necesita un valor mayor… ¿qué valor necesita?':'Necesita un valor mayor… ¿qué valor necesita?'
																																	, 'No participa el concesionario con el que quiere comprar':'No participa el concesionario con el que quiere comprar'
																																	, 'Necesita el crédito para otra cosa':'Necesita el crédito para otra cosa'
																																	, 'No necesita adquirir un vehículo':'No necesita adquirir un vehículo'
																																	, 'Tiene vehículo nuevo':'Tiene vehículo nuevo'
																																	, 'No le interesa cambiar de vehículo':'No le interesa cambiar de vehículo'
																																	, 'Lo va a utilizar más adelante… ¿Por favor cuénteme un tiempo aproximado en el cual espera comprar un vehículo?':'Lo va a utilizar más adelante… ¿Por favor cuénteme un tiempo aproximado en el cual espera comprar un vehículo?'
																																	, 'Otros':'Otros']}" optionKey="key"
										  optionValue="value"
										  noSelection="${['': '-- Seleccione --']}" />
							</div>
							<div id="divObservacionesNoAcepta">
								<div class="col-lg-12 col-md-12 form-group">
									<label>Observaciones No Acepta</label>
									<span class="required-indicator">*</span>
									<g:textArea class="form-control" id="observacionesNoAcepta" name="observacionesNoAcepta" value=""/>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</g:if>



		<div id="productoPrincipalDiv">
			<div id="datosClientePanel" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
	        <g:if test="${cliente.tipoProducto == 'NO APLICA CREDITO VEHICULAR'}">
				<div id="scriptNormal">
					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Script</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<p>
									Mucho gusto, mi nombre es <strong>${session.user.nombre}</strong> asesor(a) Financiero de Diners Club del Ecuador
								</p>
								<p>
									Tengo el gusto de conversar con <strong>${cliente.nombres} ${cliente.apellidos}</strong>?
								</p>
								<p>
									¿Este es un buen momento para conversar?
								</p>

								<p>
									Gracias por su tiempo, nos comunicamos para presentarle una solución financiera que le permitirá respaldar a sus personas más cercanas ante alguna emergencia, incluso como la que hoy enfrentamos,
									le realizaremos la entrega de una tarjeta adicional categoría <strong><g:if test="${cliente.productoVender == 'DINERS'}">${cliente.productoDiners}</g:if> <g:elseif test="${cliente.productoVender == 'MASTERCARD'}">${cliente.productoMastercard} </g:elseif> <g:elseif test="${cliente.productoVender == 'DISCOVER'}">${cliente.productoDiscover} </g:elseif><g:else test="${cliente.productoVender == 'VISA'}">${cliente.productoVisa}</g:else></strong>
									sin ningún costo de mantenimiento, el único valor es el del chip de seguridad de $4.89 con IMPUESTO INCLUIDO; una vez cada 3 años. De la misma forma por aceptar esta tarjeta adicional usted como titular recibe <strong>${cliente.propuestaValor}</strong> - <strong>${cliente.propuestaValor2}</strong>
								</p>
								<%--INICIO ACTUALIZACION--%>
								<p>
									<strong>ADICIONALES FREEDOM O KIDS (cuando el socio tiene hijos)</strong>
								</p>
								<p>Adicionalmente, al aceptar una tarjeta FREEDOM / KIDS (FREEDOM, hijos de 12-18 años y KIDS, menores de 12 años) sin costo de fee para su hijo (s) el día de hoy usted recibe: (Indicar ODV de adicionales de acuerdo a base).</p>
								<p><strong>ADICIONALES EMPLEADA DOMESTICA (si el socio tiene empleada doméstica)</strong></p>
								<p>
									También, ahora puede extender una tarjeta adicional sin costo de fee a su trabajadora del hogar. Puede asignar un cupo pre-establecido cerrado de forma mensual para gastos del hogar como supermercados, farmacias y almacenes por departamento, entre otros. Al extender una tarjeta adicional a su trabajadora del hogar usted recibe: (Indicar ODV de adicionales de acuerdo a base).
								</p>
								<%--FIN ACTUALIZACION--%>

								<p>
									Conforme la Resolución de la Junta de Política y Regulación Monetaria y Financiera cada tarjeta tiene un cargo de USD xx incluido IVA correspondiente al costo del chip de seguridad, el cual es cargado cada tres años.
								</p>
								<p>
									<blockquote style="font-size: 16px">
								<p><i>Usted recibirá:</i></p>
								<p><i>Una(s) tarjeta(s) adicional(es)  (Detallar todas las tarjetas adicionales) para la persona de su elección (parentesco/relación y nombres completos del/los adicional(es)) con costo únicamente del chip por USD 4.89 incluido IVA.</i></p>
								<p><i>De 8 a 10 días laborables le llegará su(s) tarjeta(s) adicional(es) para lo cual deberá tener listo los siguientes documentos</i></p>
								<p>
								<blockquote style="font-size: 16px">
									<ul>
										<li><i>Copia de cédula personal</i></li>
										<li><i>Copia de cédula del adicional</i></li>
										<li><i>Copia de servicio básico actualizado</i></li>
									</ul>
								</blockquote>
							</p>
							</blockquote>
							</p>
							</div>
						</div>

						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<div class="panel panel-default">
									<a class="accordion-titulo" href="#collapseOne"><strong>LEVANTAMIENTO DE INFORMACIÓN</strong><span class="toggle-icon"></span></a>
									<div class="accordion-content">
										<p>
											<strong> <h4 style="color: #11265b">INSTRUCCIONES</h4></strong>
										<blockquote style="font-size: 16px">
											<ol>
												<li><i>Su nombre completo es…….</i></li>
												<li><i>¿Su número de cédula es? <strong>(cliente debe confirmar el NÚMERO DE LA CÉDULA COMPLETA o en su defecto el cliente debe CONFIRMAR AL MENOS LOS 4 ÚLTIMOS DIGITOS).</strong></i></li>
												<li><i>Solicitar los Nombre completos del tarjetahabiente Adicional</i></li>
												<li><i>Dirección de correo electrónico del tarjetahabiente adicional</i></li>
												<li><i>Celular del tarjetahabiente adicional</i></li>
												<li><i>Edad de tarjetahabiente adicional</i></li>
												<li><i>Cupo Compartido del adicional</i></li>
												<li><i>Dirección de entrega de la Tarjeta Adicional</i></li>
												<li><i>Hora de entrega de la tarjeta</i></li>
												<li><i>Preguntar al socio cómo le gustaría los Nombre Tarjeta Adicional fuera impreso en la TCA <strong>(primer nombre, primer apellido e Inicial del segundo apellido).</strong></i></li>
											</ol>
										</blockquote>
									</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Seguros</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<p>
									Pensando en su seguridad y la de su familia es necesario la activación de un plan deuda asegurada que cubra toda la deuda que mantenga
									con el Banco Diners Club en caso de Muerte por cualquier causa, Incapacidad Total o Permanente y/o Enfermedades Catastróficas cubriendo
									su deuda total hasta por USD $60.000.
								</p>
								<p>
									El valor de su deuda se multiplicará por una tasa que corresponde al 0.099%, por concepto del plan deuda asegurada sin superar en ningún
									caso los USD $6.93. Manteniendo una base MINIMA DE: $ 0.99 centavos por consumos hasta $1000.
								</p>
								<p>
									<strong>EJEMPLO: SI UDTED REALIZA UN CONSUMO DE $ 1200 SE MULTIPLICA POR EL 0.099% QUE PAGARIA SOLAMENTE EN EL MES $1.12 CENTAVOS</strong>
								</p>
								<p>
									¿Le gustaría contar con este exclusivo beneficio para su TCP?
								</p>
								<div class="col-lg-4 col-md-4 form-group">
									<label>Seguro Desgravamen</label>
									<span class="required-indicator">*</span>
									<g:select class="form-control" name="seguroDesgravamen" id="seguroDesgravamen" from="${['SI':'Si', 'NO':'No']}" optionKey="key"
											  optionValue="value"
											  noSelection="${['': '-- Seleccione --']}" />
								</div><br><br><br><br>
								<p>
									Perfecto Sr. /Sra. <strong>${cliente.nombres} ${cliente.apellidos}</strong>, con su aceptación autoriza a Diners Club a compartir sus datos a Seguros del Pichincha para fines de emisión
								de sus seguros y además para que efectúe el cargo de la prima de sus seguros a su(s) tarjeta(s) de crédito Diners/Visa y Discover según corresponda,
								recuerde que en el caso de Plan deuda asegurada el cobro de la prima será de forma proporcional de acuerdo al saldo adeudado en las mismas.
								</p>
								<p>
									Junto con los documentos de entrega de su nueva tarjeta Diners recibirá el certificado de plan deuda asegurada requerimos de su firma esta
									habilitará su cobertura. Seguros del Pichincha al contar con su certificado firmado procederá con la activación del Seguro sobre saldos.
									Adicional, el cargo se reflejará en el estado de cuenta de su próxima facturación de la TCP.
								</p>
								<p>
									Si usted necesita mayor información, puede contactarse con la aseguradora al 1800-400-400.
								</p>
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Arcotel</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<p>
									Sr. (a) <strong>${cliente.nombres} ${cliente.apellidos}</strong>, Queremos poderle hacer llegar promociones acordes a sus preferencias por lo que necesitamos que de manera expresa
								autorice a que Diners Club del Ecuador S.A., pueda almacenar, utilizar y entregar su información personal y de contacto para fines
								comerciales, publicitarios o comunicacionales de productos o servicios propios o de sus aliados a través de los diferentes canales de
								comunicación
								</p>
								<div class="col-lg-4 col-md-4 form-group">
									<label>Aceptacion</label>
									<span class="required-indicator">*</span>
									<g:select class="form-control" name="aceptacionArcotel" id="aceptacionArcotel" from="${['SI':'SI', 'NO':'NO', 'MAS ADELANTE':'MAS ADELANTE']}" optionKey="key"
											  optionValue="value"
											  noSelection="${['': '-- Seleccione --']}" />
								</div>
								<div id="divArcotel">
									<div class="col-lg-4 col-md-4 form-group">
										<label>En que utiliza sus tarjetas de crédito?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="utilizacionTarjetaCredito" id="utilizacionTarjetaCredito" from="${['DIVERSION', 'EDUCACION', 'EMERGENCIAS', 'HOGAR', 'AVANCES EN EFECTIVO']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Utiliza mas sus tarjetas o efectivo?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="tarjetasEfectivo" id="tarjetasEfectivo" from="${['TARJETA', 'EFECTIVO']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Le gustaría recibir información de ?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="recibeInformacion" id="recibeInformacion" from="${['RESTAURANTES', 'HOGAR', 'EDUCACION', 'MODA', 'SALUD', 'ENTRETENIMIENTO', 'NO DESEA RECIBIR INFORMACION']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Por qué canal o canales prefiere ser comunicado?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="canalPrefiere" id="canalPrefiere" from="${['TELEFONO', 'CORREO ELECTRONICO', 'SMS', 'REDES SOCIALES']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</g:if>

			<g:if test="${cliente.tipoProducto == 'APLICA CREDITO VEHICULAR'}">
				<div id="scriptVehicular">
					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Script</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<p>
									Buenos días/Tardes<br>
									¿Me puede comunicar con el Sr (a) (ita) <strong>${cliente.nombres} ${cliente.apellidos}</strong>?<br>
				Hablo con el Sr (a)(ita). <strong>${cliente.nombres} ${cliente.apellidos}</strong>?

										</p>
				<p>
					¿Este es un buen momento para conversar?
				</p>
				<p>
					¿Cómo está?  Mucho gusto,<br>
					Le Saluda <strong>${session.user.nombre}</strong> de Diners Club del Ecuador.
				</p>
				<p>
					<strong>Por motivos de seguridad y calidad esta llamada está siendo grabada</strong>
				</p>
				<p>Sr (a) (ita) <strong>${cliente.nombres} ${cliente.apellidos}</strong>, el motivo de mi llamada es informarle que por el excelente manejo de su tarjeta tiene pre aprobado un monto de USD XX.XXX para adquirir un vehículo nuevo </p>
				<p>
					Usted podrá acceder a su crédito vehicular directamente en el concesionario de su preferencia sin cargos adicionales por desembolso o gastos administrativos, ni firmas de garantes, financiamiento máximo a 60 meses y hasta el 100% del valor del vehículo.<br>
					Para hacer efectivo su financiamiento vehicular usted debe acercarse al concesionario de su preferencia únicamente con su cédula de identidad y tarjeta de crédito.<br>
					Aplica restricciones propias de los concesionarios.
				</p>
				<p>
					Adicionalmente, el motivo de nuestra llamada es también informarle que Tenemos a su disposición la opción de compartir los beneficios
					actuales de su tarjeta a través de la extensión de una tarjeta adicional categoría <strong><g:if test="${cliente.productoVender == 'DINERS'}">${cliente.productoDiners}</g:if> <g:elseif test="${cliente.productoVender == 'MASTERCARD'}">${cliente.productoMastercard} </g:elseif><g:elseif test="${cliente.productoVender == 'DISCOVER'}">${cliente.productoDiscover} </g:elseif><g:else test="${cliente.productoVender == 'VISA'}">${cliente.productoVisa}</g:else></strong> sin ningún costo de
				mantenimiento para cualquier familiar o persona cercana que desee, el único valor es el del chip de
				seguridad de $4.89+ IMP; una vez cada 3 años.
				</p>
				<p>
					Con la aceptación de esta tarjeta, usted contará con: <strong>${cliente.propuestaValor}</strong> - <strong>${cliente.propuestaValor2}</strong>
				</p>
				<p><strong>ADICIONALES FREEDOM O KIDS (cuando el socio tiene hijos)</strong></p>
				<p>Adicionalmente, al aceptar una tarjeta FREEDOM / KIDS (FREEDOM, hijos de 12-18 años y KIDS, menores de 12 años) sin costo de fee para su hijo (s) el día de hoy usted recibe: <strong>${cliente.propuestaValor}</strong> - <strong>${cliente.propuestaValor2}</strong>

				<p><strong>ADICIONALES EMPLEADA DOMESTICA (si el socio tiene empleada doméstica)</strong></p>
				<p>También, ahora puede extender una tarjeta adicional sin costo de fee a su trabajadora del hogar. Puede asignar un cupo pre-establecido cerrado de forma mensual para gastos del hogar como supermercados, farmacias y almacenes por departamento, entre otros. Al extender una tarjeta adicional a su trabajadora del hogar usted recibe: <strong>${cliente.propuestaValor}</strong> - <strong>${cliente.propuestaValor2}</strong></p>

				<p>
					Conforme la Resolución de la Junta de Política y Regulación Monetaria y Financiera cada tarjeta tiene un cargo de USD xx incluido IVA correspondiente al costo del chip de seguridad, el cual es cargado cada tres años.
				</p>
				<p>
					<blockquote style="font-size: 16px">
				<p><i>Usted recibirá:</i></p>
				<p><i>Una(s) tarjeta(s) adicional(es)  (Detallar todas las tarjetas adicionales) para la persona de su elección (parentesco/relación y nombres completos del/los adicional(es)) con costo únicamente del chip por USD 4.89 incluido IVA.</i></p>
				<p><i>De 8 a 10 días laborables le llegará su(s) tarjeta(s) adicional(es) para lo cual deberá tener listo los siguientes documentos</i></p>
				<p>
				<blockquote style="font-size: 16px">
					<ul>
						<li><i>Copia de cédula personal</i></li>
						<li><i>Copia de cédula del adicional</i></li>
						<li><i>Copia de servicio básico actualizado</i></li>
					</ul>
				</blockquote>
				</p>
				</blockquote>
				</p>
				</div>
			</div>

				<div class="col-lg-12 col-md-12 col-xs-12">
					<div class="col-lg-12 col-md-12 col-xs-12">
						<div class="panel panel-default">
							<a class="accordion-titulo" href="#collapseOne"><strong>MANEJO DE OBJECIONES</strong><span class="toggle-icon"></span></a>
							<div class="accordion-content">
								<p>
									<strong> <h4 style="color: #11265b">INSTRUCCIONES</h4></strong>
								<blockquote style="font-size: 16px">
									<ol>
										<li><i>Usted podrá controlar el manejo de las tarjetas adicionales personalizando el cupo y revisando el estado de cuenta en la misma web Diners.</i></li>
										<li><i>Todos los consumos que realicen sus tarjetas adicionales acumularán millas a su cuenta principal.</i></li>
										<li><i>Usted recibirá el estado de cuenta de su tarjeta con el detalle de consumos de su adicional.</i></li>
										<li><i>Usted podrá asignar un cupo pre establecido de gastos de forma mensual para cada tarjeta adicional.</i></li>
										<li><i>El adicional recibe los beneficios de Fybeca y doble acumulación de puntos VitalCard para la cuenta principal. Los mismos seguros y asistencias nacionales e internacionales del principal</i></li>
										<li><i>Sus adicionales podrán realizar compras online o presenciales sin su firma facilitando el apoyo que usted les brinda</i></li>
									</ol>
								</blockquote>
							</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12 col-md-12 col-xs-12">
					<div class="col-lg-12 col-md-12 col-xs-12">
						<div class="panel panel-default">
							<a class="accordion-titulo" href="#collapseOne"><strong>LEVANTAMIENTO DE INFORMACIÓN</strong><span class="toggle-icon"></span></a>
							<div class="accordion-content">
								<p>
									<strong> <h4 style="color: #11265b">INSTRUCCIONES</h4></strong>
								<blockquote style="font-size: 16px">
									<ol>
										<li><i>Su nombre completo es…….</i></li>
										<li><i>¿Su número de cédula es? <strong>(cliente debe confirmar el NÚMERO DE LA CÉDULA COMPLETA o en su defecto el cliente debe CONFIRMAR AL MENOS LOS 4 ÚLTIMOS DIGITOS).</strong></i></li>
										<li><i>Solicitar los Nombre completos del tarjetahabiente Adicional</i></li>
										<li><i>Dirección de correo electrónico del tarjetahabiente adicional</i></li>
										<li><i>Celular del tarjetahabiente adicional</i></li>
										<li><i>Edad de tarjetahabiente adicional</i></li>
										<li><i>Cupo Compartido del adicional</i></li>
										<li><i>Dirección de entrega de la Tarjeta Adicional</i></li>
										<li><i>Hora de entrega de la tarjeta</i></li>
										<li><i>Preguntar al socio cómo le gustaría los Nombre Tarjeta Adicional fuera impreso en la TCA <strong>(primer nombre, primer apellido e Inicial del segundo apellido).</strong></i></li>
									</ol>
								</blockquote>
							</p>
							</div>
						</div>
					</div>
				</div>
				</div>



					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Arcotel</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<p>
									Sr. (a) <strong>${cliente.nombres} ${cliente.apellidos}</strong>, Queremos poderle hacer llegar promociones acordes a sus preferencias por lo que necesitamos que de manera expresa
								autorice a que Diners Club del Ecuador S.A., pueda almacenar, utilizar y entregar su información personal y de contacto para fines
								comerciales, publicitarios o comunicacionales de productos o servicios propios o de sus aliados a través de los diferentes canales de
								comunicación
								</p>
								<div class="col-lg-4 col-md-4 form-group">
									<label>Aceptacion</label>
									<span class="required-indicator">*</span>
									<g:select class="form-control" name="aceptacionArcotel" id="aceptacionArcotel" from="${['SI':'SI', 'NO':'NO', 'MAS ADELANTE':'MAS ADELANTE']}" optionKey="key"
											  optionValue="value"
											  noSelection="${['': '-- Seleccione --']}" />
								</div>
								<div id="divArcotel">
									<div class="col-lg-4 col-md-4 form-group">
										<label>En que utiliza sus tarjetas de crédito?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="utilizacionTarjetaCredito" id="utilizacionTarjetaCredito" from="${['DIVERSION', 'EDUCACION', 'EMERGENCIAS', 'HOGAR', 'AVANCES EN EFECTIVO']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Utiliza mas sus tarjetas o efectivo?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="tarjetasEfectivo" id="tarjetasEfectivo" from="${['TARJETA', 'EFECTIVO']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Le gustaría recibir información de ?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="recibeInformacion" id="recibeInformacion" from="${['RESTAURANTES', 'HOGAR', 'EDUCACION', 'MODA', 'SALUD', 'ENTRETENIMIENTO', 'NO DESEA RECIBIR INFORMACION']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Por qué canal o canales prefiere ser comunicado?</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="canalPrefiere" id="canalPrefiere" from="${['TELEFONO', 'CORREO ELECTRONICO', 'SMS', 'REDES SOCIALES']}"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</g:if>


<%--
AQUI EMPIEZA PAD
--%>


				<g:if test="${cliente.tipoProducto == 'APLICA PAD'}">

						<div class="col-lg-12 col-md-12 col-xs-12 group-title">Script</div>
						<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
						<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<p>
										Buenos días/Tardes<br>
										¿Me puede comunicar con el Sr (a) (ita) <strong>${cliente.nombres} ${cliente.apellidos}</strong>?<br>
										Hablo con el Sr (a)(ita). <strong>${cliente.nombres} ${cliente.apellidos}</strong>?

									</p>
									<p>
										¿Este es un buen momento para conversar?
									</p>
									<p>
										¿Cómo está?  Mucho gusto,<br>
										Le Saluda <strong>${session.user.nombre}</strong> de Diners Club del Ecuador.
									</p>
									<p>
										<strong>Por motivos de seguridad y calidad esta llamada está siendo grabada</strong>
									</p>
									<p>
										Gracias por su tiempo, nos comunicamos para presentarle una solución financiera que le permitirá respaldar
										a sus personas más cercanas ante alguna emergencia Tenemos a su disposición la opción de compartir los beneficios
										actuales de su tarjeta a través de la extensión de una tarjeta adicional categoría <strong><g:if test="${cliente.productoVender == 'DINERS'}">${cliente.productoDiners}</g:if> <g:elseif test="${cliente.productoVender == 'MASTERCARD'}">${cliente.productoMastercard} </g:elseif><g:elseif test="${cliente.productoVender == 'DISCOVER'}">${cliente.productoDiscover} </g:elseif><g:else test="${cliente.productoVender == 'VISA'}">${cliente.productoVisa}</g:else></strong> sin ningún costo de
									mantenimiento para cualquier familiar o persona cercana que desee, el único valor es el del chip de
									seguridad de $4.89+ IMP; una vez cada 3 años.
									</p>
									<p>
										De la misma forma por aceptar esta tarjeta adicional usted como titular recibe: <strong>${cliente.propuestaValor}</strong> - <strong>${cliente.propuestaValor2}</strong>
									</p>
									<p><strong>ADICIONALES FREEDOM O KIDS (cuando el socio tiene hijos)</strong></p>
									<p>Adicionalmente, al aceptar una tarjeta FREEDOM / KIDS (FREEDOM, hijos de 12-18 años y KIDS, menores de 12 años) sin costo de fee para su hijo (s) el día de hoy usted recibe: (Indicar ODV de adicionales de acuerdo a base).</p>
									<p><strong>ADICIONALES EMPLEADA DOMESTICA (si el socio tiene empleada doméstica)</strong></p>
									<p>También, ahora puede extender una tarjeta adicional sin costo de fee a su trabajadora del hogar. Puede asignar un cupo pre-establecido cerrado de forma mensual para gastos del hogar como supermercados, farmacias y almacenes por departamento, entre otros. Al extender una tarjeta adicional a su trabajadora del hogar usted recibe: (Indicar ODV de adicionales de acuerdo a base).</p>
									<p>
										Conforme la Resolución de la Junta de Política y Regulación Monetaria y Financiera cada tarjeta tiene un cargo de USD xx incluido IVA correspondiente al costo del chip de seguridad, el cual es cargado cada tres años.
									</p>
									<p>
										<blockquote style="font-size: 16px">
									<p><i>Usted recibirá:</i></p>
									<p><i>Una(s) tarjeta(s) adicional(es)  (Detallar todas las tarjetas adicionales) para la persona de su elección (parentesco/relación y nombres completos del/los adicional(es)) con costo únicamente del chip por USD 4.89 incluido IVA.</i></p>
									<p><i>De 8 a 10 días laborables le llegará su(s) tarjeta(s) adicional(es) para lo cual deberá tener listo los siguientes documentos</i></p>
									<p>
									<blockquote style="font-size: 16px">
										<ul>
											<li><i>Copia de cédula personal</i></li>
											<li><i>Copia de cédula del adicional</i></li>
											<li><i>Copia de servicio básico actualizado</i></li>
										</ul>
									</blockquote>
								</p>
								</blockquote>
								</p>
								</div>
							</div>

							<div class="col-lg-12 col-md-12 col-xs-12">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<div class="panel panel-default">
										<a class="accordion-titulo" href="#collapseOne"><strong>MANEJO DE OBJECIONES</strong><span class="toggle-icon"></span></a>
										<div class="accordion-content">
											<p>
												<strong> <h4 style="color: #11265b">INSTRUCCIONES</h4></strong>
											<blockquote style="font-size: 16px">
												<ol>
													<li><i>Usted podrá controlar el manejo de las tarjetas adicionales personalizando el cupo y revisando el estado de cuenta en la misma web Diners.</i></li>
													<li><i>Todos los consumos que realicen sus tarjetas adicionales acumularán millas a su cuenta principal.</i></li>
													<li><i>Usted recibirá el estado de cuenta de su tarjeta con el detalle de consumos de su adicional.</i></li>
													<li><i>Usted podrá asignar un cupo pre establecido de gastos de forma mensual para cada tarjeta adicional.</i></li>
													<li><i>El adicional recibe los beneficios de Fybeca y doble acumulación de puntos VitalCard para la cuenta principal. Los mismos seguros y asistencias nacionales e internacionales del principal</i></li>
													<li><i>Sus adicionales podrán realizar compras online o presenciales sin su firma facilitando el apoyo que usted les brinda</i></li>
												</ol>
											</blockquote>
										</p>
										</div>
									</div>
								</div>
							</div>

							<div class="col-lg-12 col-md-12 col-xs-12">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<div class="panel panel-default">
										<a class="accordion-titulo" href="#collapseOne"><strong>LEVANTAMIENTO DE INFORMACIÓN</strong><span class="toggle-icon"></span></a>
										<div class="accordion-content">
											<p>
												<strong> <h4 style="color: #11265b">INSTRUCCIONES</h4></strong>
											<blockquote style="font-size: 16px">
												<ol>
													<li><i>Su nombre completo es…….</i></li>
													<li><i>¿Su número de cédula es? <strong>(cliente debe confirmar el NÚMERO DE LA CÉDULA COMPLETA o en su defecto el cliente debe CONFIRMAR AL MENOS LOS 4 ÚLTIMOS DIGITOS).</strong></i></li>
													<li><i>Solicitar los Nombre completos del tarjetahabiente Adicional</i></li>
													<li><i>Dirección de correo electrónico del tarjetahabiente adicional</i></li>
													<li><i>Celular del tarjetahabiente adicional</i></li>
													<li><i>Edad de tarjetahabiente adicional</i></li>
													<li><i>Cupo Compartido del adicional</i></li>
													<li><i>Dirección de entrega de la Tarjeta Adicional</i></li>
													<li><i>Hora de entrega de la tarjeta</i></li>
													<li><i>Preguntar al socio cómo le gustaría los Nombre Tarjeta Adicional fuera impreso en la TCA <strong>(primer nombre, primer apellido e Inicial del segundo apellido).</strong></i></li>
												</ol>
											</blockquote>
										</p>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="col-lg-12 col-md-12 col-xs-12 group-title">Arcotel</div>
						<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
						<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<div class="col-lg-12 col-md-12 col-xs-12">
									<p>
										Sr. (a) <strong>${cliente.nombres} ${cliente.apellidos}</strong>, Queremos poderle hacer llegar promociones acordes a sus preferencias por lo que necesitamos que de manera expresa
									autorice a que Diners Club del Ecuador S.A., pueda almacenar, utilizar y entregar su información personal y de contacto para fines
									comerciales, publicitarios o comunicacionales de productos o servicios propios o de sus aliados a través de los diferentes canales de
									comunicación
									</p>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Aceptacion</label>
										<span class="required-indicator">*</span>
										<g:select class="form-control" name="aceptacionArcotel" id="aceptacionArcotel" from="${['SI':'SI', 'NO':'NO', 'MAS ADELANTE':'MAS ADELANTE']}" optionKey="key"
												  optionValue="value"
												  noSelection="${['': '-- Seleccione --']}" />
									</div>
									<div id="divArcotel">
										<div class="col-lg-4 col-md-4 form-group">
											<label>En que utiliza sus tarjetas de crédito?</label>
											<span class="required-indicator">*</span>
											<g:select class="form-control" name="utilizacionTarjetaCredito" id="utilizacionTarjetaCredito" from="${['DIVERSION', 'EDUCACION', 'EMERGENCIAS', 'HOGAR', 'AVANCES EN EFECTIVO']}"
													  optionValue="value"
													  noSelection="${['': '-- Seleccione --']}" />
										</div>
										<div class="col-lg-4 col-md-4 form-group">
											<label>Utiliza mas sus tarjetas o efectivo?</label>
											<span class="required-indicator">*</span>
											<g:select class="form-control" name="tarjetasEfectivo" id="tarjetasEfectivo" from="${['TARJETA', 'EFECTIVO']}"
													  optionValue="value"
													  noSelection="${['': '-- Seleccione --']}" />
										</div>
										<div class="col-lg-4 col-md-4 form-group">
											<label>Le gustaría recibir información de ?</label>
											<span class="required-indicator">*</span>
											<g:select class="form-control" name="recibeInformacion" id="recibeInformacion" from="${['RESTAURANTES', 'HOGAR', 'EDUCACION', 'MODA', 'SALUD', 'ENTRETENIMIENTO', 'NO DESEA RECIBIR INFORMACION']}"
													  optionValue="value"
													  noSelection="${['': '-- Seleccione --']}" />
										</div>
										<div class="col-lg-4 col-md-4 form-group">
											<label>Por qué canal o canales prefiere ser comunicado?</label>
											<span class="required-indicator">*</span>
											<g:select class="form-control" name="canalPrefiere" id="canalPrefiere" from="${['TELEFONO', 'CORREO ELECTRONICO', 'SMS', 'REDES SOCIALES']}"
													  optionValue="value"
													  noSelection="${['': '-- Seleccione --']}" />
										</div>
									</div>

								</div>
							</div>
						</div>
					<div id="ScripAhorroPad">
					<div class="col-lg-12 col-md-12 col-xs-12 group-title">PAD</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div style="border-radius: 30px" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
						<div class="col-lg-12 col-md-12 col-xs-12">
							<div class="col-lg-12 col-md-12 col-xs-12">
								<p>
									Sr (a) (ita) <strong>${cliente.nombres} ${cliente.apellidos}</strong> adicionalmente quería conversar con Usted sobre las alternativas financieras que tenemos disponibles para que Usted pueda materializar sus proyectos a futuro.<br>
									¿Le interesaría conocer más?
								</p>
								<div class="col-lg-4 col-md-4 form-group">
									<label>Aceptación</label>
									<span class="required-indicator">*</span>
									<g:select class="form-control" name="aceptacionPad" id="aceptacionPad" from="${['SI':'SI', 'NO':'NO']}" optionKey="key"
											  optionValue="value"
											  noSelection="${['': '-- Seleccione --']}" />
								</div><br><br><br><br>

								<div id="ScriptAceptaPAD">
									<p>
										Gracias por atender esta llamada... ¿conoce o ha escuchado información sobre el Plan de Ahorro Diners Club “PAD”?
									</p>
									<p><strong>NO</strong></p>
									<p>
										Entonces permítame comentarle acerca del mismo...<br>
										El PAD, es un servicio financiero sin costo, que le brinda a los socios Diners la posibilidad de acumular mensualmente un monto de dinero
										programado a un tiempo indefinido, para alcanzar los proyectos que tiene en mente, pueden ser viajes, estudios, remodelaciones, auto nuevo
										o cualquier situación que se presente.
									</p>
									<p><strong>SI</strong></p>
									<p>Usted podrá acumular mensualmente un valor superior a USD 50 que se reflejará en su Estado de Cuenta como un consumo, y que será destinado a su
									plan de ahorro con un interés a su favor. Usted podrá además tener un seguimiento de los valores acumulados accediendo a su portal en línea,
									en <strong>www.dinersclub.com.ec</strong> con su usuario y clave.</p>
									<p>Usted va a tener un valor mensual acumulado y una ganancia es decir un interés a su favor sobre sobre el monto acumulado mensualmente.</p>
									<p>El monto de su ahorro mensual será cargado automáticamente a su tarjeta Diners.</p>
									<p>Recuerde que usted escoge el monto que desea acumular mensualmente el cual no puede ser menor a $50</p>

									<div class="col-lg-12 col-md-12 col-xs-12">
										<div class="col-lg-12 col-md-12 col-xs-12">
											<div class="panel panel-default">
												<a class="accordion-titulo" href="#collapseOne"><strong>SIMULACIÓN</strong><span class="toggle-icon"></span></a>
												<div class="accordion-content">
													<p>
														<strong> <h4 style="color: #11265b">INSTRUCCIONES</h4></strong>
														<blockquote style="font-size: 16px">
													<p><strong>¿Está usted de acuerdo?</strong></p>
													<p>
														Vamos a hacer una simulación, por favor confírmeme<br>
														¿Cuál sería el monto mensual que usted desea acumular (mínimo $50)?....., ahora,  ¿Cuál sería el plazo  por el cuál usted quisiera simular…(mínimo un año)?.<br>
														A mayor tiempo y monto de ahorro, mayor será su beneficio rendimiento.
													</p>
													<p>El valor de su capital acumulado en el período de …… (años, meses…) sería de $………. ¿Está usted de acuerdo?</p>
													<p><strong>REFORMULACIÓN DE ACUERDOS</strong></p>
													<p>Los siguientes son los detalles de su PAD a ser contratado para su confirmación:</p>
													<ol>
														<li><i>Detallar todos los datos de la pantalla RESUMEN</i></li>
														<li><i>Para poder continuar con la contratación, autoriza a Diners Club a cargar el valor de xxx detallado anteriormente de forma mensual e indefinida a su tarjeta de crédito Diners Club o hasta la solicitud de cancelación del PAD?</i></li>
														<li><i>Acepta las condiciones contractuales del Plan de Ahorros Diners “PAD” y declara que entiende cada una de las estipulaciones y los datos de la hoja de información (pantalla de Resumen) que estamos enviado a su correo y que le hemos detallado,</i></li>
														<li><i>Dar Click a la opción CONTRATE SU PAD</i></li>
														<li><i>Para poder continuar con la contratación de su PAD, ¿me podría indicar si usted tiene residencia fiscal en otro(s) país(es) diferente(s) a Ecuador?</i></li>
														<li><i>Dar Click a la opción CONTINUAR</i></li>
														<li><i>Como usted tiene residencia fiscal en otro(s) país(es), un asesor lo contactará para completar información adicional.</i></li>
														<li><i>Dar Click a la opción ACEPTAR</i></li>
														<li><i>Si Socio pregunta por qué no se puede completar apertura del PAD – Detalle en manejo de objeciones</i></li>
														<li><i>Dar Click a la opción ACEPTAR</i></li>
														<li><i>Confírmenos si este es su correo electrónico, para que pueda recibir su el contrato del PAD contratado y la hoja de información. (Dar lectura al mail detallado en base)</i></li>
													</ol>
												</blockquote>
												</p>
												</div>
											</div>
										</div>
									</div>

									<p>
										Por motivos de seguridad en este momento le llegará un código a su celular como SMS y a su correo electrónico,<br>
										¿Me podría por favor decir el código para continuar con el proceso de contratación del PAD que por su seguridad será efectuado en la
										plataforma digital de Diners Club?
									</p>
									<p>
										<strong>En caso de, interrupción del proceso por causales crediticia, continuar con el siguiente texto pero no dar detalles del causal, dado que esto debe ser comunicado por los canales autorizados: Call Center Inbound y/o Oficinas</strong>
									</p>
									<p>Estimado <strong>${cliente.nombres} ${cliente.apellidos}</strong>, lamento comunicarle que no hemos podido culminar el proceso por esta vía, y es necesario que continúe el proceso de manera presencial en oficinas.</p>
									<p>Estimado señor <strong>${cliente.nombres} ${cliente.apellidos}</strong>, le felicito por la decisión acertada de comenzar a construir sus sueños a través de nuestro Plan de Acumulación Diners. A su correo electrónico le llegará una copia del contrato y una hoja de información con el detalle de las condiciones de su PAD que acaba de contratar.</p>

									<div class="col-lg-4 col-md-4 form-group">
										<label>Monto Ahorro PAD</label>
										<span class="required-indicator">*</span>
										<g:textField class="form-control" id="montoAhorroPad" name="montoAhorroPad" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Codigo OTP PAD</label>
										<span class="required-indicator">*</span>
										<g:textField class="form-control" id="codigoOtpPad" name="codigoOtpPad" />
									</div>
									<div class="col-lg-4 col-md-4 form-group">
										<label>Correo Electronico</label>
										<span class="required-indicator">*</span>
										<g:textField class="form-control" id="correoGestion" name="correoGestion" value="${cliente.email}" />
									</div>

								</div>
								<div id="ScriptNoAceptaPAD">
									<div class="col-lg-6 col-md-6 form-group">
										<label>¿Le interesó nuestro producto? </label>
										<span class="required-indicator">*</span>
										<g:textField class="form-control" id="preguntaPad1" name="preguntaPad1" />
									</div>
									<div class="col-lg-6 col-md-6 form-group">
										<label>¿Por qué no se ha decidido aún?</label>
										<span class="required-indicator">*</span>
										<g:textField class="form-control" id="preguntaPad2" name="preguntaPad2" />
									</div>
									<div class="col-lg-6 col-md-6 form-group">
										<label>¿Tuvo problemas con nuestra plataforma digital?</label>
										<span class="required-indicator">*</span>
										<g:textField class="form-control" id="preguntaPad3" name="preguntaPad3" />
									</div>
								</div>
							</div>
						</div>
					 </div>
					</div>
				</g:if>

				<g:if test="${cliente.tipoProducto == 'APLICA PAD'}">

				</g:if>

<%--
AQUI TERMINA PAD
--%>







				<g:if test="${cliente.propuestaValor != '' && cliente.propuestaValor != null}">
					<div class="col-lg-12 col-md-12 col-xs-12 group-title"><span class="required-indicator">Seleccion ODV *</span></div>
					<div class="col-lg-6 col-md-6 col-xs-12 form-group">
						<g:hiddenField class="form-control" id="concatODV" name="concatODV" value="${cliente.propuestaValor+'|'+cliente.propuestaValor2}"/>

						<g:select class="form-control" name="ODV" id="ODV" from="" optionKey="id"
								  optionValue="${{it.nombre	}}"
								  noSelection="${['': '-- Seleccione --']}" />
					</div>
				</g:if>



				<div class="col-lg-12 col-md-12 col-xs-12 group-title">Datos de Entrega</div>
				<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Provincia Entrega</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="provinciaDomic" id="provinciaDomic" from="${callcenter.Provincia.list()}" optionKey="id"
							  optionValue="${{it.nombre	}}"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>
				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Ciudad Entrega</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="ciudadDomic" id="ciudadDomic" from="" optionKey="id"
							  optionValue="${{it.nombre	}}"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Parroquia Entrega</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="sectorDomic" id="sectorDomic" from="" optionKey="id"
							  optionValue="${{it.nombre	}}"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>
				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Calle Principal</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="callePrincipalDomic" name="callePrincipalDomic"/>
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Nomenclatura</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="numeracionDomic" name="numeracionDomic"/>
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Calle Transversal</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="calleTransversalDomic" name="calleTransversalDomic"/>
				</div>

				<div class="col-lg-12 col-md-12 col-xs-12 form-group">
					<label>Referencia Domicilio</label>
					<span class="required-indicator">*</span>
					<g:textArea class="form-control" name="referenciaDomic" id="referenciaDomic" />
				</div>


			<%--	<div class="col-lg-12 col-md-12 col-xs-12 group-title">Datos laborales</div>
				<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Provincia Trabajo</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="provinciaTrab" id="provinciaTrab" from="${callcenter.Provincia.list()}" optionKey="id"
							  optionValue="${{it.nombre	}}"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>
				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Ciudad Trabajo</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="ciudadTrab" id="ciudadTrab" from="" optionKey="id"
							  optionValue="${{it.nombre	}}"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Parroquia Trabajo</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="sectorTrab" id="sectorTrab" from="" optionKey="id"
							  optionValue="${{it.nombre	}}"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Calle Principal</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="callePrincipalTrab" name="callePrincipalTrab"/>
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Nomenclatura</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="numeracionTrab" name="numeracionTrab"/>
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Calle Transversal</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="calleTransversalTrab" name="calleTransversalTrab"/>
				</div>

				<div class="col-lg-4 col-md-6 col-xs-12 form-group">
					<label>Tipo</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="tipoTrab" id="tipoTrab" from="${['EDIFICIO':'EDIFICIO', 'CASA':'CASA', 'DEPARTAMENTO':'DEPARTAMENTO', 'CONJUNTO':'CONJUNTO']}" optionKey="key"
							  optionValue="value"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>
				<div class="col-lg-12 col-md-12 col-xs-12 form-group">
					<label>Referencia Trabajo</label>
					<span class="required-indicator">*</span>
					<g:textArea class="form-control" name="referenciaTrab" id="referenciaTrab" />
				</div>--%>

				<div class="col-lg-4 col-md-4 form-group">
					<label>Entrega</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="entrega" id="entrega" from="${['DOMICILIO':'Domicilio', 'TRABAJO':'Trabajo']}" optionKey="key"
							  optionValue="value"
							  noSelection="${['': '-- Seleccione --']}" />
				</div>
				<div class="col-lg-3 col-md-6 form-group">
					<label>Hora Entrega</label>
					<span class="required-indicator">*</span>
					<g:textField id="horaEntrega" name="horaEntrega" class="datetimepicker3 form-control" onkeypress="return validarSiSoloLetras(event)"/>
				</div>

				<div class="col-lg-4 col-md-4 form-group">
					<label>Tlf Contacto Domicilio</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="telefonoDomContacto" name="telefonoDomContacto" maxlength="9" minlength="9"/>
				</div>
				<div class="col-lg-4 col-md-4 form-group">
					<label>Tlf Contacto Trabajo</label>
					<span class="required-indicator">*</span>
					<g:textField class="form-control" id="telefonoTrabContacto" name="telefonoTrabContacto" maxlength="9" minlength="9"/>
				</div>
				<%--	<div class="col-lg-4 col-md-4 form-group">
                        <label>Celular Contacto</label>
                        <span class="required-indicator">*</span>
                        <g:textField class="form-control" id="celularContacto" name="celularContacto" maxlength="10" minlength="10" />
                    </div>--%>

			</div>

			<div id="adicionalesPanel" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
				<div class="col-lg-12 col-md-12 col-xs-12 form-group">
					<button id="btnAdicional" type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">Agregar Adicional <span class="fa fa-fw fa-plus"></span> </button>
				</div>
				<div id="contenedorAdicionales">
					<input type="hidden" value="" id="hidenAdicionales" name="hidenAdicionales">
					<table id="tablaAdicionales" class="table-bordered table-responsive col-lg-12 col-md-12 col-xs-12">
						<thead>
						<tr>
							<th>Cédula</th>
							<th>Nombres</th>
							<th>Nombre Tarjeta</th>
							<th>Cupo</th>
							<th>Sexo</th>
							<%--<th>E Civil</th>--%>
							<th>Parentesco</th>
							<th>Fecha Nacimiento</th>
							<%--<th>Nacionalidad</th>--%>
							<th>Producto</th>
							<th>Acciones</th>
						</tr>
						</thead>
						<tbody id="bodyTablaAdicionales"></tbody>
					</table>
				</div>
			</div>
		</div>

		<div id="productoSecundarioDiv" class="panel panel-default col-lg-12 col-md-12 col-xs-12">
			<div class="col-lg-4 col-md-6 col-xs-12">
				<div id="asistenciasDiv"class="col-lg-12 col-md-12 col-xs-12 form-group">
					<label>Asistencias</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="asistencia"
							  id="asistencia"
							  multiple="multiple"
							  optionKey="key"
							  optionValue="value"
							  from="${['AE':'Asistencia Exequial', 'A247':'Asistencia 24-7', 'AT':'Asistencia Extra Total']}"/>
				</div>
			</div>
			<div class="col-lg-8 col-md-6 col-xs-12">
				<div class="form-group col-lg-12 col-md-12 col-xs-12">
					<label>Débito a:</label>
					<span class="required-indicator">*</span>
					<g:select class="form-control" name="debitoAsistencia" from="${['TARJETA DE CREDITO', 'CUENTA BANCARIA']}" noSelection="${['':'-- Seleccione --']}"/>
				</div>
				%{--<div id="datosExequial" class="col-lg-12 col-md-12 col-xs-12">--}%
					%{--<div class="col-lg-12 col-md-12 col-xs-12 group-title">Asistencia Exequial</div>--}%
					%{--<div class="col-lg-12 col-md-12 col-xs-12 line"></div>--}%
					%{--<div class="col-lg-4 col-md-6 col-xs-12 form-group">--}%
						%{--<label>Nombres</label>--}%
						%{--<span class="required-indicator">*</span>--}%
						%{--<g:textField class="form-control" name="nombresExequial"></g:textField>--}%
					%{--</div>--}%
					%{--<div class="col-lg-4 col-md-6 col-xs-12 form-group">--}%
						%{--<label>Edad</label>--}%
						%{--<span class="required-indicator">*</span>--}%
						%{--<g:textField class="form-control" name="edadExequial"></g:textField>--}%
					%{--</div>--}%
					%{--<div class="col-lg-4 col-md-6 col-xs-12 form-group">--}%
						%{--<strong>Parentesco</strong>--}%
						%{--<span class="required-indicator">*</span>--}%
						%{--<g:select class="form-control" name="parentescoExequial" from="${['CONYUGE','PADRES','HERMANOS','HIJOS','HIJASTROS']}" noSelection="${["": "-- Seleccione --"]}"></g:select>--}%
					%{--</div>--}%
				%{--</div>--}%
				<div id="datosExtraTotal" class="col-lg-12 col-md-12 col-xs-12">
					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Asistencia Extratotal</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div class="form-group col-lg-4 col-md-6 col-xs-12">
						<label>Tipo Cobro</label>
						<span class="required-indicator">*</span>
						<g:select class="form-control" name="tipoCobro" from="${['ANUAL', 'MENSUAL']}" noSelection="${['': '-- Seleccione --']}"></g:select>
					</div>
				</div>
				<div id="datos247" class="col-lg-12 col-md-12 col-xs-12">
					<div class="col-lg-12 col-md-12 col-xs-12 group-title">Asistencia 24/7</div>
					<div class="col-lg-12 col-md-12 col-xs-12 line"></div>
					<div class="form-group col-lg-4 col-md-6 col-xs-12">
						<label>Cobertura</label>
						<span class="required-indicator">*</span>
						<g:select class="form-control" name="cobertura247" from="${['1 TITULAR', '1 TITULAR + 2 MIEMBROS DE LA FAMILIA', '1 TITULAR + 4 MIEMBROS DE LA FAMILIA']}" noSelection="${['': '-- Seleccione --']}" />
					</div>
					<div class="form-group col-lg-4 col-md-6 col-xs-12">
						<label>Tipo Cobro</label>
						<span class="required-indicator">*</span>
						<g:select class="form-control" name="tipoCobro247" from="${['ANUAL', 'MENSUAL']}" noSelection="${['': '-- Seleccione --']}" />
					</div>
				</div>
			</div>
		</div>

		<div class="panel panel-default col-lg-12 col-md-12 col-xs-12">
			<div class="col-lg-12 col-md-12 form-group">
				<label>Observaciones</label>
				<g:textArea class="form-control" id="observacionesGestion" name="observacionesGestion" value="${cliente.observaciones}"/>
			</div>
		</div>

		<div id="btnGuardarGestionDiv" class="col-lg-12 col-md-12 col-xs-12">
			<input type="submit" id="btnGuardarGestion" name="btnGuardarGestion" type="button" class="btn btn-primary" value="Guardar Gestión" />
		</div>

	</g:form>

</div>




<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Agregar Adicional</h4>
			</div>
			<div class="modal-body">
				<form id="formAdicional" action="/Adicionales/adicional/save" method="post">
					<fieldset class="form">
						<div class=" form-group col-lg-12">
							<h5 style="font-weight: bold; color: chocolate">Las Tarjetas KIDS y FREEDOM, no se le asignan cupo. Son tarjetas de Ahorro. El valor asignado se le debitan mes a mes como cargo recurrente de la Tarjeta Principal del Socio.</h5>
						</div>
						<div class="fieldcontain  required form-group col-lg-6">
							<label for="cedula">
								Cedula
								<span class="required-indicator">*</span>
							</label>
							<input class="form-control" type="text" name="cedula" required="" value="" id="cedula" maxlength="10">
						</div>
						<div class="fieldcontain  required form-group col-lg-6">
							<label for="primerNombre">
								Primer Nombre
								<span class="required-indicator">*</span>
							</label>
							<input class="form-control" type="text" name="primerNombre" required="" value="" id="primerNombre">
						</div>

						<div class="fieldcontain form-group col-lg-6">
							<label for="segundoNombre">
								Segundo Nombre
							</label>
							<input class="form-control" type="text" name="segundoNombre" value="" id="segundoNombre">
						</div>

						<div class="fieldcontain  required form-group col-lg-6">
							<label for="primerApellido">
								Primer Apellido
								<span class="required-indicator">*</span>
							</label>
							<input class="form-control" type="text" name="primerApellido" required="" value="" id="primerApellido">
						</div>

						<div class="fieldcontain form-group col-lg-6">
							<label for="segundoApellido">
								Segundo Apellido
							</label>
							<span class="required-indicator">*</span>
							<input class="form-control" type="text" name="segundoApellido" value="" id="segundoApellido">
						</div>

						<div class="fieldcontain form-group col-lg-6">
							<label for="nombreTarjeta">
								Nombre Tarjeta
							</label>
							<span class="required-indicator">*</span>
							<input class="form-control" type="text" name="nombreTarjeta" value="" id="nombreTarjeta" maxlength="20">
						</div>

						<div class="fieldcontain form-group col-lg-6">
							<label for="cupoOtorgado">
								Cupo Otorgado
							</label>
							<span class="required-indicator">*</span>
							<input class="form-control" type="text" name="cupoOtorgado" value="" id="cupoOtorgado" maxlength="19">
						</div>

						<div class="fieldcontain  required form-group col-lg-6">
							<label for="sexo">
								Sexo
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" name="sexo" from="${['MASCULINO', 'FEMENINO']}" noSelection="${['': '-- Seleccione --']}" />
						</div>

						<div class="fieldcontain  required form-group col-lg-6">
							<label for="estadoCivil">
								Estado Civil
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" name="estadoCivil" from="${['SOLTERO', 'CASADO', 'VIUDO', 'DIVORCIADO', 'UNION DE HECHO', 'UNION LEGALIZADA', 'UNION LIBRE']}" noSelection="${['': '-- Seleccione --']}" />
						</div>


						<div class="fieldcontain  required form-group col-lg-6">
							<label for="parentesco">
								Parentesco
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" name="parentesco" from="${callcenter.Parentesco.findAllByIsActive(true)}" optionKey="nombre"
									  optionValue="${{it.nombre	}}" noSelection="${['': '-- Seleccione --']}" />
						</div>
						<div class="fieldcontain  required form-group col-lg-6">
							<label for="fechaNacimiento">
								Fecha Nacimiento
								<span class="required-indicator">*</span>
							</label>
							<input type="text" name="fechaNacimiento" required="" value="" id="fechaNacimiento" class="datepicker form-control pointer" onkeypress="return validarSiSoloLetras(event)">

						</div>

						<div class="fieldcontain  required form-group col-lg-6">
							<label for="nacionalidad">
								Nacionalidad
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" id="nacionalidadSelect" name="nacionalidadSelect" optionKey="key" optionValue="value" from="${['ECUATORIANA':'ECUATORIANA','VENEZOLANA':'VENEZOLANA','CUBANA':'CUBANA', 'COLOMBIANA':'COLOMBIANA', '': 'OTRA']}" />
						</div>

						<div id="nacionalidadDiv" class="fieldcontain  required form-group col-lg-6">
							<label for="nacionalidad">
								Especifique
								<span class="required-indicator">*</span>
							</label>
							<input class="form-control" type="text" name="nacionalidad" required="" value="ECUATORIANA" id="nacionalidad">
						</div>

						<div class="fieldcontain  required form-group col-lg-6">
							<label for="correo">
								Correo Electrónico
								<span class="required-indicator">*</span>
							</label>
							<input class="form-control" type="text" name="correo" value="" id="correo">
						</div>

						<div class="fieldcontain form-group col-lg-6">
							<label for="telefonoCelular">
								Teléfono Celular
							</label>
							<span class="required-indicator">*</span>
							<input class="form-control" type="text" name="telefonoCelular" value="" id="telefonoCelular" maxlength="10">
						</div>

						<div class="fieldcontain  required form-group col-lg-6">
							<label for="nacionalidad">
								Producto Aceptado
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" optionValue="value"  id="productoAceptado" name="productoAceptado" from="${utilitarios.Util.getProductos(cliente.id)}" noSelection="${['': '-- Seleccione --']}" />
						</div>

						<%--<div class="fieldcontain  required form-group col-lg-6">
							<label for="nacionalidad">
								Tipo Tarjeta
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" id="tipoTarjeta" name="tipoTarjeta" optionKey="key" optionValue="value" from="${['KIDS':'KIDS','FREEDOM':'FREEDOM','DINERS CLUB':'DINERS CLUB', 'VISA':'VISA']}" />
						</div>--%>
						<div class="fieldcontain  required form-group col-lg-6">
							<label for="gestionLinea">
								Gestión en Línea
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" id="gestionLinea" name="gestionLinea" optionKey="key" optionValue="value" from="${['SI':'SI','NO':'NO']}" noSelection="${['': '-- Seleccione --']}" />
						</div>

						<div id="gestionLineaDiv" class="fieldcontain  required form-group col-lg-6">
							<label for="nacionalidad">
								Codigo OTP
								<span class="required-indicator">*</span>
							</label>
							<input class="form-control" type="text" name="codigoOtp" required="" value="" id="codigoOtp">
						</div>
						<div class="fieldcontain  required form-group col-lg-6">
							<label for="validacionDatos">
								Validación Datos
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" id="validacionDatos" name="validacionDatos" optionKey="key" optionValue="value" from="${['NO RECUERDA LOS DATOS':'NO RECUERDA LOS DATOS','DESCONFIANZA':'DESCONFIANZA', 'QUIERE MANTENER LOS MISMOS DATOS':'QUIERE MANTENER LOS MISMOS DATOS', 'SI OTORGA DATOS':'SI OTORGA DATOS']}" noSelection="${['': '-- Seleccione --']}" />
						</div>
						<div class="fieldcontain  required form-group col-lg-6">
							<label for="notificacionConsumo">
								Notificación de consumos
								<span class="required-indicator">*</span>
							</label>
							<g:select class="form-control" id="notificacionConsumo" name="notificacionConsumo" optionKey="key" optionValue="value" from="${['PRINCIPAL':'PRINCIPAL','PRINCIPAL + ADICIONAL':'PRINCIPAL + ADICIONAL', 'ADICIONAL':'ADICIONAL']}" noSelection="${['': '-- Seleccione --']}" />
						</div>

						<div class="fieldcontain  required col-lg-12 form-group">
							<label for="observaciones">
								Observaciones
							</label>
							<input class="form-control" type="text" name="observaciones" required="" value="" id="observaciones">
						</div>
					</fieldset>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
				<button type="button" class="btn btn-primary" id="btnGuardarAdicional">Agregar</button>
			</div>
		</div>
	</div>
</div>

<asset:javascript src="usogeneral/objetos.js" />
<asset:javascript src="gestion/gestionCliente1.js" />
<asset:stylesheet src="usogeneral/datetimepicker.css" />
<asset:javascript src="usogeneral/datetimepicker.js" />
<asset:javascript src="usogeneral/customdatetimepicker.js" />
<asset:javascript src="usogeneral/bootstrap-datepicker.min.js" />
<asset:javascript src="usogeneral/customdatepicker.js" />
<asset:javascript src="usogeneral/bootstrap-datepicker.es.min.js" />