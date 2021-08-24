package callcenter
import java.util.Date;
import com.pw.security.*;

class Clientes {

	//Campos de la base
	String nombres
	String apellidos
	String identificacion
	String cuenta
	String genero
	String cupo
	String cupoDisponible
	String email
	String productoDiners
	String familia
	String direccion
	String telefono1
	String telefono2
	String telefono3
	String telefono4
	String telefono5
	String telefono6
	String telefono7
	String telefono8
	String telefono9
	String telefono10
	String ciudad
	String estadoCivil
	String nombre

	//Nuevos campos Base 20180806
	String zona
	String idContratoCuenta
	String bancoDebito
	String grupo
	String propuestaValor
	String segmento
	String segmentoModelo

	//Nuevos campos 20/01/2019
	String primerApellido
	String segundoApellido
	String primerNombre
	String segundoNombre
	String nacionalidad

	/*----Encuesta----*/
	//Domicilio
	String provinciaDomic
	String ciudadDomic
	String callePrincipalDomic
	String numeracionDomic
	String calleTransversalDomic
	String sectorDomic
	String tipoVivienda
	String referenciaDomic
	String informacionConcatenadaDom
	String caracteresDom

	//Trabajo
	String provinciaTrab
	String ciudadTrab
	String callePrincipalTrab
	String numeracionTrab
	String calleTransversalTrab
	String sectorTrab
	String tipoTrab
	String referenciaTrab
	String informacionConcatenadaTrab
	String caracteresTrab
	String entrega
	String nombreContacto
	String rangoVisita
	String celularContacto
	String telefonoTrabContacto
	String telefonoDomContacto
	String nivelDificultad
	String definicion
	String productoVender

	//Nuevo campo encuesta 20181005
	String telefonoContactado

	/*--Fin Encuesta----*/

	//Nuevos campos Gestion - Giovanny Granda
	Date fechaGestion
	Date fechaCarga
	int intentos
	String estadoGestion
	Subestado subestadoGestion
	String asistenciaExtraTotal
	String asistanciaExequial
	String subSubEstado
	Usuario usuario
	String nombreBase
	String nombreVendedor
	Date fechaRellamada
	String observaciones

	//Nuevos camposde base 20170619
	String cedulaConyuge
	String nombreConyuge
	String cedulaPadre
	String nombrePadre
	String cedulaMadre
	String nombreMadre

	//Nuevos campos de base 20170704
	String estado
	String estadoVigencia
	String fechaNacimiento
	String nivelEstudios
	String actividadEconomica
	String fechaInicio
	String fechaVigente
	String productoVisa
	String numeroCuenta
	String programaRecompensas
	String ingresoDeclarado
	String numCelular
	String phono1
	String phono2
	String phono3
	String entidadOrigen
	String marcaOrigen
	String tipoProducto
	String cam_fin_vehicular_con_prenda
	String cam_fin_vehicular_monto_con_prenda
	String aceptacionCreditoVehicular

	String codigoAsignacion
	String numeroAdicionales
	String idPersona
	String motivoNoAceptaVehicular
	String observacionesNoAcepta

	//Nuevos campos Base 20170926
	String base2
	String provincia
	String planRecompensas
	String horaEntrega
	String productoAceptado
	String nombreArchivoCliente
	String fechaInicioLlamada
	String fechaFinLlamada
	String horaLlamada
	String callIdLlamada
	String aceptacionArcotel
	String utilizacionTarjetaCredito
	String tarjetasEfectivo
	String recibeInformacion
	String canalPrefiere
	String aceptacionPad
	String montoAhorroPad
	String codigoOtpPad
	String preguntaPad1
	String preguntaPad2
	String preguntaPad3
	String correoGestion
	String adiMastercard
	String adiDiscover
	String cedulaHermano9
	String nombreHermano9
	String cedulaHermano10
	String nombreHermano10
	String cedula_adicional
	String nombre_adicional

	//Nuevo campo 20180606
	boolean isActive
	String estadoTelefonoContactado

	String productoDiscover
	String productoMastercard
	String adiDiners
	String adiVisa
	//Campo de base
	String base


	//Nuevos campos de gestión para exequial
	String nombresExequial
	String parentescoExequial
	String edad

	//Nuevo campo Seguro Desgravamen
	String seguroDesgravamen
	String lugarNacimiento

	//Nuevo campo No Acepta Seguro
	String motivoNoAceptaSeguro

	//Campo solicitado por Lizeth Chugchilan en la fecha 2019/03/07 en la hora 18:03
	String agendamientoAsesor


	String registroExitoso

	String codigoCampania
	String nombreCampania

	/*Creacion de campos solicitados por el area de Reporting 2019-05-11*/
	String gama
	String regional
	String rangoEdad
	String rangoCupo
	String segmentacionAd1
	String segmentacionAd2
	String segmentacionAd3
	String segmentacionAd4
	String segmentacionAd5
	String easyCodeRegional
	String easyCodeEdad
	String easyCodeCupo
	String easyCodeEdadCupo
	String easyCodeGamaEdad
	String easyCodeAd1
	String easyCodeAd2
	String easyCodeAd3
	String easyCodeAd4
	String easyCodeAd5
	String prioridadCampania
	String fechaCaducidad
	String deudaProtegida
	String metaContactabilidad
	String metaEfectividadTelefonica
	String metaEfectividadReal
	String tipoGestion
	String plataforma
	String bloqueSegmentacion
	//cambios 04/04/2021
	String productoVigente
	String tieneEncuestaGp
	//cambio 19/05/2021 ODV
	String propuestaValor2
	String propuestaValorElegida

	static constraints = {

		//Campos de la base
		cuenta nullable: true
		identificacion nullable: true
		nombres nullable: true
		apellidos nullable: true
		email nullable: true
		productoDiners nullable: true
		familia nullable: true
		cupo nullable: true
		cupoDisponible nullable: true
		direccion nullable: true
		telefono1 nullable: true
		telefono2 nullable: true
		telefono3 nullable: true
		telefono4 nullable: true
		telefono5 nullable: true
		telefono6 nullable: true
		telefono7 nullable: true
		telefono8 nullable: true
		telefono9 nullable: true
		telefono10 nullable: true
		genero nullable: true
		estadoCivil nullable: true
		ciudad  nullable: true
		fechaGestion nullable: true
		fechaCarga nullable: true
		intentos nullable: true
		estadoGestion nullable: true
		subestadoGestion nullable: true
		subSubEstado nullable: true
		usuario nullable: true
		nombreBase nullable: true
		nombreVendedor nullable: true
		fechaRellamada nullable: true
		observaciones nullable: true
		provinciaDomic nullable: true
		ciudadDomic nullable: true
		callePrincipalDomic nullable: true
		numeracionDomic nullable: true
		calleTransversalDomic nullable: true
		sectorDomic nullable: true
		tipoVivienda nullable: true
		referenciaDomic nullable: true
		informacionConcatenadaDom nullable: true
		caracteresDom nullable: true
		provinciaTrab nullable: true
		ciudadTrab nullable: true
		callePrincipalTrab nullable: true
		numeracionTrab nullable: true
		calleTransversalTrab nullable: true
		sectorTrab nullable: true
		tipoTrab nullable: true
		referenciaTrab nullable: true
		informacionConcatenadaTrab nullable: true
		caracteresTrab nullable: true
		entrega nullable: true
		nombreContacto nullable: true
		rangoVisita nullable: true
		celularContacto nullable: true
		telefonoTrabContacto nullable: true
		telefonoDomContacto nullable: true
		nivelDificultad nullable: true
		definicion nullable: true
		productoVender nullable: true
		fechaInicio nullable: true
		asistanciaExequial nullable: true
		asistenciaExtraTotal nullable: true
		telefonoContactado nullable: true
		zona nullable: true
		idContratoCuenta nullable: true
		bancoDebito nullable: true
		grupo nullable: true
		propuestaValor nullable: true
		segmento nullable: true
		segmentoModelo nullable: true
		tipoVivienda inList: ['EDIFICIO', 'CASA', 'DEPARTAMENTO', 'CONJUNTO']
		entrega inList: ['DOMICILIO', 'TRABAJO']
		rangoVisita inList: ['MANANA', 'TARDE']
		cedulaConyuge nullable: true
		nombreConyuge nullable: true
		cedulaPadre nullable: true
		nombrePadre nullable: true
		cedulaMadre nullable: true
		nombreMadre nullable: true
		nacionalidad nullable: true
		primerApellido nullable: true
		segundoApellido nullable: true
		primerNombre nullable: true
		segundoNombre nullable: true
		estado nullable: true
		estadoVigencia nullable: true
		fechaNacimiento nullable: true
		nivelEstudios nullable: true
		actividadEconomica nullable: true
		fechaVigente nullable: true
		productoVisa nullable: true
		numeroCuenta nullable: true
		programaRecompensas nullable: true
		ingresoDeclarado nullable: true
		numCelular nullable: true
		phono1 nullable: true
		phono2 nullable: true
		phono3 nullable: true
		entidadOrigen nullable: true
		marcaOrigen nullable: true
		codigoAsignacion nullable: true
		numeroAdicionales nullable: true
		idPersona nullable: true
		nombresExequial nullable: true
		parentescoExequial nullable: true
		edad nullable: true
		base2 nullable: true
		provincia nullable: true
		planRecompensas nullable: true
		horaEntrega nullable: true
		productoAceptado nullable: true
		nombreArchivoCliente nullable: true
		fechaInicioLlamada nullable: true
		fechaFinLlamada nullable: true
		horaLlamada nullable: true
		callIdLlamada nullable: true
		aceptacionArcotel nullable: true
		utilizacionTarjetaCredito nullable: true
		tarjetasEfectivo nullable: true
		recibeInformacion nullable: true
		canalPrefiere nullable: true
		aceptacionPad nullable: true
		montoAhorroPad nullable: true
		codigoOtpPad nullable: true
		preguntaPad1 nullable: true
		preguntaPad2 nullable: true
		preguntaPad3 nullable: true
		correoGestion nullable: true
		adiMastercard nullable: true
		adiDiscover nullable: true
		cedulaHermano9 nullable: true
		nombreHermano9 nullable: true
		cedulaHermano10 nullable: true
		nombreHermano10 nullable: true
		productoDiscover nullable: true
		productoMastercard nullable: true
		adiDiners nullable: true
		adiVisa nullable: true
		base nullable: true
		seguroDesgravamen nullable: true
		lugarNacimiento nullable: true
		motivoNoAceptaSeguro nullable: true
		agendamientoAsesor nullable: true
		tipoProducto nullable: true
		cam_fin_vehicular_con_prenda nullable: true
		cam_fin_vehicular_monto_con_prenda nullable: true
		aceptacionCreditoVehicular nullable: true
		motivoNoAceptaVehicular nullable: true
		observacionesNoAcepta nullable: true
		nombre nullable: true
		cedula_adicional nullable: true
		nombre_adicional nullable: true


        registroExitoso nullable: true
		codigoCampania nullable: true
		nombreCampania nullable: true
		estadoTelefonoContactado nullable: true


		/*Creacion de campos solicitados por el area de Reporting 2019-05-11*/
		gama nullable: true
		regional nullable: true
		rangoEdad nullable: true
		rangoCupo nullable: true
		segmentacionAd1 nullable: true
		segmentacionAd2 nullable: true
		segmentacionAd3 nullable: true
		segmentacionAd4 nullable: true
		segmentacionAd5 nullable: true
		easyCodeRegional nullable: true
		easyCodeEdad nullable: true
		easyCodeCupo nullable: true
		easyCodeEdadCupo nullable: true
		easyCodeGamaEdad nullable: true
		easyCodeAd1 nullable: true
		easyCodeAd2 nullable: true
		easyCodeAd3 nullable: true
		easyCodeAd4 nullable: true
		easyCodeAd5 nullable: true
		prioridadCampania nullable: true
		fechaCaducidad nullable: true
		deudaProtegida nullable: true
		metaContactabilidad nullable: true
		metaEfectividadTelefonica nullable: true
		metaEfectividadReal nullable: true
		tipoGestion nullable: true
		plataforma nullable: true
		bloqueSegmentacion nullable: true
		//cambios productoVigente y tiene encuesta 04/02/2021
		productoVigente nullabble: true
		tieneEncuestaGp nullabble: true
		//Campo para ODV
		propuestaValor2 nullable: true
		propuestaValorElegida nullable: true
	}
	
	static mapping = {
		version false
		observaciones type: 'text'
	}

	static String[] getFields(){
		String[] fields = [
				           "base"
				           ,"primerNombre"
				           ,"primerApellido"
						   ,"nombres"
						   , "apellidos"
						   , "identificacion"
						   , "idPersona"
						   , "fechaInicio"
						   , "fechaVigente"
						   , "email"
						   , "productoDiners"
						   , "productoVisa"
						   , "productoDiscover"
						   , "productoMastercard"
						   , "programaRecompensas"
						   , "ingresoDeclarado"
						   , "edad"
						   , "estadoCivil"
						   , "genero"
				           , "fechaNacimiento"
						   , "numCelular"
						   , "phono1"
						   , "phono2"
						   , "phono3"
						   , "entidadOrigen"
						   , "marcaOrigen"
						   , "ciudad"
						   , "zona"
				           , "idContratoCuenta"
						   , "numeroCuenta"
						   , "bancoDebito"
						   , "grupo"
						   , "propuestaValor"
						   , "segmento"
				           , "segmentoModelo"
						   , "nivelDificultad"
						   , "definicion"
						   , "productoVender"
						   , "adiDiners"
						   , "adiVisa"
						   , "adiMastercard"
						   , "adiDiscover"
						   , "base2"
						   , "telefono1"
						   , "telefono2"
						   , "telefono3"
						   , "telefono4"
						   , "telefono5"
						   , "telefono6"
						   , "telefono7"
						   , "telefono8"
						   , "telefono9"
						   , "telefono10"
						   , "provincia"
						   , "codigoAsignacion"
						   , "gama"
						   , "regional"
						   , "rangoEdad"
						   , "rangoCupo"
						   , "segmentacionAd1"
						   , "segmentacionAd2"
						   , "segmentacionAd3"
						   , "segmentacionAd4"
						   , "segmentacionAd5"
						   , "easyCodeRegional"
						   , "easyCodeEdad"
						   , "easyCodeCupo"
						   , "easyCodeEdadCupo"
						   , "easyCodeGamaEdad"
						   , "easyCodeAd1"
						   , "easyCodeAd2"
						   , "easyCodeAd3"
						   , "easyCodeAd4"
						   , "easyCodeAd5"
						   , "planRecompensas"
						   , "prioridadCampania"
						   , "fechaCaducidad"
						   , "deudaProtegida"
						   , "metaContactabilidad"
						   , "metaEfectividadTelefonica"
						   , "metaEfectividadReal"
						   , "tipoGestion"
						   , "plataforma"
						   , "bloqueSegmentacion"
						   , "nombreArchivoCliente"
						   , "productoVigente"
						   , "tieneEncuestaGp"
						   ]
		return fields
	}
}
