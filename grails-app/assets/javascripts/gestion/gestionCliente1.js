$(document).ready(function(){
    $identificacionTitular = $("#identificacionTitular");
    $status = $("#status");
    $substatus = $("#substatus");
    $subSubStatus = $("#subSubStatus");
    $recall = $("#recall");
    $provinciaDomic = $("#provinciaDomic");
    $ciudadDomic = $("#ciudadDomic");
    $sectorDomic = $("#sectorDomic");
    $callePrincipalDomic = $("#callePrincipalDomic");
    $numeracionDomic = $("#numeracionDomic");
    $calleTransversalDomic = $("#calleTransversalDomic");
    $tipoVivienda = $("#tipoVivienda");
    $referenciaDomic = $("#referenciaDomic");
    $provinciaTrab = $("#provinciaTrab");
    $ciudadTrab = $("#ciudadTrab");
    $sectorTrab = $("#sectorTrab");
    $callePrincipalTrab = $("#callePrincipalTrab");
    $numeracionTrab = $("#numeracionTrab");
    $calleTransversalTrab = $("#calleTransversalTrab");
    $tipoTrab = $("#tipoTrab");
    $referenciaTrab = $("#referenciaTrab");
    $entrega = $("#entrega");
    $nombreContacto = $("#nombreContacto");
    $rangoVisita = $("#rangoVisita");
    $facturacion = $("#facturacion");
    $estadoCtaDigital = $("#estadoCtaDigital");
    $seguroDesgravamen = $("#seguroDesgravamen");
    $aceptacionArcotel = $("#aceptacionArcotel");
    $telefonoDomContacto = $("#telefonoDomContacto");
    $telefonoTrabContacto = $("#telefonoTrabContacto");
    $celularContacto = $("#celularContacto");
    $recallDiv = $("#recallDiv");
    $subSubStatusDiv = $("#subSubStatusDiv");
    $productoPrincipalDiv = $("#productoPrincipalDiv");
    $productoSecundarioDiv = $("#productoSecundarioDiv");
    $recallDiv = $("#recallDiv");
    $subSubStatusDiv = $("#subSubStatusDiv");
    $subSubStatus = $("#subSubStatus");
    $asistencia = $("#asistencia");
    $nombresExequial = $("#nombresExequial");
    $edadExequial = $("#edadExequial");
    $parentescoExequial = $("#parentescoExequial");
    $datosExtraTotal = $("#datosExtraTotal");
    $datosExequial = $("#datosExequial");
    $tipoCobroDiv = $("#tipoCobroDiv");
    $btnGuardarAdicional = $("#btnGuardarAdicional");
    $cedula = $("#cedula");
    $primerNombre = $("#primerNombre");
    $segundoNombre = $("#segundoNombre");
    $primerApellido = $("#primerApellido");
    $segundoApellido = $("#segundoApellido");
    $nombreTarjeta = $("#nombreTarjeta");
    $cupoOtorgado = $("#cupoOtorgado");
    $sexo = $("#sexo");
    $estadoCivil = $("#estadoCivil");
    $parentesco = $("#parentesco");
    $fechaNacimiento = $("#fechaNacimiento");
    $nacionalidad = $("#nacionalidad");
    $observaciones = $("#observaciones");
    $bodyTablaAdicionales = $("#bodyTablaAdicionales");
    $nacionalidadSelect = $("#nacionalidadSelect");
    $nacionalidadDiv = $("#nacionalidadDiv");
    $gestionLineaDiv = $("#gestionLineaDiv");
    $btnGuardarGestion = $("#btnGuardarGestion");
    $debitoAsistencia = $("#debitoAsistencia");
    $datos247 = $("#datos247");
    $cobertura247 = $("#cobertura247");
    $tipoCobro247 = $("#tipoCobro247");
    $tipoCobro = $("#tipoCobro");
    $telefonoContactado = $("#telefonoContactado");
    $telefonoContactadoDiv = $("#telefonoContactadoDiv");
    $divMotivo = $("#divMotivo");
    $correo = $("#correo");
    $telefonoCelular = $("#telefonoCelular");
    $productoAceptado = $("#productoAceptado");
    $tipoTarjeta = $("#tipoTarjeta");
    $codigoOtp = $("#codigoOtp");
    $validacionDatos = $("#validacionDatos");
    $notificacionConsumo = $("#notificacionConsumo");
    $gestionLinea = $("#gestionLinea");




    $adicionalesArray = [];
    $tdDelete = "<td><a href='#' class='linkDelete' onclick='return false'><i class='fa fa-trash'></i> Eliminar</a></td>";

    init();

    //Cuando se cambia el ESTADO
    $status.change(function(){
        esconderCamposEstados();
       // $telefonoContactadoDiv.hide();
        $telefonoContactado.val("");
        if($status.val() == ""){
            emptySelect('substatus');
        }else{
            $statusId = this.value;
            if($statusId == 1){
                $telefonoContactadoDiv.show();
            }
            $.get(baseUrl + "/FuncionesAjax/getSubStatusByStatus", {
                id: $statusId
            }, function (data) {
                fillSelect('substatus', data);
            });
        }

    });


    //Cuando cambia el SUBESTADO
    $substatus.change(function(){
        esconderCamposEstados();
        if($substatus.val() == ""){
            emptySelect('subSubStatus');
        }else{
            $subStatusId = this.value;
            $.get(baseUrl + "/FuncionesAjax/getSubSubStatusBySubStatus", {
                id: $subStatusId
            }, function (data) {
                if(fillSelect('subSubStatus', data) > 0){
                    $subSubStatusDiv.show();
                }else{
                    $("#subSubStatusDiv").hide();
                }
                if(data[2] == 'Rellamada'){ //Tipo de subestado
                    $("#recallDiv").show();
                }else{
                    $("#recallDiv").hide();
                }
                if(data[3]){ //Si el estado habilita la gestión del producto principal
                    $productoPrincipalDiv.show();
                }else{
                    $productoPrincipalDiv.hide();
                }
                if(data[4]){ //Si el estado habilita la gestión del producto secundario
                    $("#encuestaVehicular").show();
                }else{
                    $("#encuestaVehicular").hide();
                }
            });
        }
        const array=$("#concatODV").val();
        emptySelect('ODV')
        var con=array.split('|')
        addOptions("ODV", con);
    });
    function removeItemFromArr( arr, item ) {
        return arr.filter( function( e ) {
            return e !== item;
        } );
    };

    //CUANDO CAMBIA EL SUB SUB ESTADO
    $subSubStatus.change(function(){
        if($subSubStatus.val() == 'EXCESO DE LIQUIDEZ'){
            $divMotivo.show();
        }else{
            $divMotivo.hide();
        }
    });


    //Cuando cambia el TIPO DE ASISTENCIA
    $asistencia.change(function(){
        $datosExequial.hide();
        $datosExtraTotal.hide();
        $datos247.hide();
        if($asistencia.val().toString().indexOf("AE") != -1){
            $datosExequial.show();
        }else{
            $nombresExequial.val("");
            $edadExequial.val("");
            $parentescoExequial.val($("#parentescoExequial option:first").val());
        }
        if($asistencia.val().toString().indexOf("AT") != -1){
            $datosExtraTotal.show();
        }else{
            $tipoCobro.val($("#tipoCobro option:first").val());
        }
        if($asistencia.val().toString().indexOf("A247") != -1){
            $datos247.show();
        }else{
            $cobertura247.val($("#cobertura247 option:first").val());
            $tipoCobro247.val($("#tipoCobro247 option:first").val());
        }
    });

    //Cuando cambia la PROVINCIA DE DOMICILIO
    $provinciaDomic.change(function(){
        if($provinciaDomic.val() == ""){
            emptySelect('ciudadDomic');
            emptySelect('sectorDomic');
        }else {
            $id = this.value;
            $.get(baseUrl + "/FuncionesAjax/getCiudades", {id: $id}, function (data) {
                fillSelect('ciudadDomic', data);
            });
        }
    });

    //Cuando se cambia la CIUDAD DE DOMICILIO
    $ciudadDomic.change(function () {
        if($ciudadDomic.val() == ""){
            emptySelect('sectorDomic');
        }else {
            $id = this.value;
            $.get(baseUrl + "/FuncionesAjax/getParroquias", {id: $id}, function (data) {

                fillSelect('sectorDomic', data);
            });
        }
    });

    //Cuando cambia la PROVINCIA DE TRABAJO
    $provinciaTrab.change(function(){
        if($provinciaTrab.val() == ""){
            emptySelect('ciudadTrab');
            emptySelect('sectorTrab');
        }else {
            $id = this.value;
            $.get(baseUrl + "/FuncionesAjax/getCiudades", {id: $id}, function (data) {
                fillSelect('ciudadTrab', data);
            });
        }
    });

    //Cuando se cambia la CIUDAD DE TRABAJO
    $ciudadTrab.change(function () {
        if($ciudadTrab.val() == ""){
            emptySelect('sectorTrab');
        }else {
            $id = this.value;
            $.get(baseUrl + "/FuncionesAjax/getParroquias", {id: $id}, function (data) {
                fillSelect('sectorTrab', data);
            });
        }
    });

    function addOptions(domElement, array) {
        var select = document.getElementsByName(domElement)[0];

        for (value in array) {

            var option = document.createElement("option");
            option.text = array[value];
            if (option.text  !='null' &&  option.text !=''){
            select.add(option);
            }
        }
    }
    //Cuando se da clic en AGREGAR EN EL MODAL DEL ADICIONAL
    $btnGuardarAdicional.click(function (e) {
        //Se hace las validaciones de rutina
        if(!validarDatosAdicional()){
            e.preventDefault()
            return false
        }

        //Se valida adicionales repetidos
      //  if(getAdicionalByCedula($cedula.val().trim()) != null){
       //     alert("Ya ingresó un adicional con número de cédula "+$cedula.val().trim());
        //    e.preventDefault();
         //   return false;
        //}

        $adicional = new Adicional($cedula.val().trim(), $primerNombre.val(), $segundoNombre.val(), $primerApellido.val(), $segundoApellido.val(),
        $nombreTarjeta.val(), $cupoOtorgado.val(), $sexo.val(), $estadoCivil.val(), $parentesco.val(), $fechaNacimiento.val(), $nacionalidad.val(),
        $correo.val(), $telefonoCelular.val(), $productoAceptado.val(), $tipoTarjeta.val(), $gestionLinea.val(), $codigoOtp.val(), $validacionDatos.val(),$notificacionConsumo.val(), $observaciones.val());
        $adicionalesArray.push($adicional);
        mostrarAdicionalesEnTabla();
        limpiarCamposAdicional();
    });

    //Cuando se va a ELIMINAR UN ADICIONAL
    $bodyTablaAdicionales.on("click", ".linkDelete", function () {
        $adicionalABorrar = $(this).parent().parent().attr("id");
        if(confirm("Se eliminará el adicional de cédula "+$adicionalABorrar)){
            borrarAdicional($adicionalABorrar);
        }
    });


    //Se hace que el NOMBRE TARJETA se inicialice con Primer Nombre y Primer apellido
    $primerNombre.keyup(function(){
        var delta = this.value;
        $nombreTarjeta.val(delta);

    });
    $primerApellido.keyup(function(){
        var dev = this.value;
        $nombreTarjeta.val($primerNombre.val()+" "+this.value);

    });

    //Cuando se cambia la NACIONALIDAD en el Modal de Adicional
    $nacionalidadSelect.change(function () {
        $nacionalidad.val($nacionalidadSelect.val());
        if($nacionalidadSelect.val() == ""){
            $nacionalidadDiv.show();
        }else{
            $nacionalidadDiv.hide();
        }
    });

    //Cuando se cambia el codigo OTP en el Modal de Adicional
    $gestionLinea.change(function () {
        $codigoOtp.val("");
        if($gestionLinea.val() == "SI"){
            $gestionLineaDiv.show();
        }else{
            $gestionLineaDiv.hide();
        }
    });

    $("#aceptacionCreditoVehicular").change(function () {
        $("#motivoNoAceptaVehicular").val($("#motivoNoAceptaVehicular option:first").val());
        $("#observacionesNoAcepta").val("");
        if($("#aceptacionCreditoVehicular").val() == "SI"){
            $("#aceptacionVehicular").show();
            $("#noAceptacionVehicular").hide();
        }if($("#aceptacionCreditoVehicular").val() == "NO"){
            $("#noAceptacionVehicular").show();
            $("#aceptacionVehicular").hide();
        }
    });

    $("#aceptacionArcotel").change(function () {
        $("#utilizacionTarjetaCredito").val($("#utilizacionTarjetaCredito option:first").val());
        $("#tarjetasEfectivo").val($("#tarjetasEfectivo option:first").val());
        $("#recibeInformacion").val($("#recibeInformacion option:first").val());
        if($("#aceptacionArcotel").val() == "SI"){
            $("#divArcotel").show();
        }else{
            $("#divArcotel").hide();
        }
    });

    $("#aceptacionPad").change(function () {
      /*  $("#utilizacionTarjetaCredito").val($("#utilizacionTarjetaCredito option:first").val());
        $("#tarjetasEfectivo").val($("#tarjetasEfectivo option:first").val());
        $("#recibeInformacion").val($("#recibeInformacion option:first").val());*/
        if($("#aceptacionPad").val() == "SI"){
            $("#ScriptAceptaPAD").show();
            $("#ScriptNoAceptaPAD").hide();
        }if($("#aceptacionPad").val() == "NO"){
            $("#ScriptNoAceptaPAD").show();
            $("#ScriptAceptaPAD").hide();
        }
    });

    $("#motivoNoAceptaVehicular").change(function () {
      //  $("#motivoNoAceptaVehicular").val($("#motivoNoAceptaVehicular option:first").val());
      //  $("#observacionesNoAcepta").val("");
        if($("#motivoNoAceptaVehicular").val() == "Necesita un valor mayor… ¿qué valor necesita?" || $("#motivoNoAceptaVehicular").val() == "Lo va a utilizar más adelante… ¿Por favor cuénteme un tiempo aproximado en el cual espera comprar un vehículo?" || $("#motivoNoAceptaVehicular").val() == "Otros"){
            $("#divObservacionesNoAcepta").show();
        }else{
            $("#divObservacionesNoAcepta").hide();
        }
    });

    //Cuando se da clic en GUARDAR GESTION
    $btnGuardarGestion.click(function (e) {
        if(!validateManagementData()){
            e.preventDefault()
            return false
        }else{
            $btnGuardarGestion.hide();
        }
    });
});

//This function empties a select component
function emptySelect(idSelect) {

    var select = document.getElementById(idSelect);
    var option = document.createElement('option');
    var NumberItems = select.length;

    while (NumberItems > 0) {
        NumberItems--;
        select.remove(NumberItems);
    }

    option.text = '-- Seleccione --';
    option.value = ''
    select.add(option, null);
}

//This function fills a select component
function fillSelect(idSelect, data) {

    var select = document.getElementById(idSelect);
    var numberSubstatus = data[0].length;

    emptySelect(idSelect)

    if (numberSubstatus > 0) {
        for (var i = 0; i < numberSubstatus; i++) {
            var option = document.createElement('option');
            option.text = data[1][i];
            option.value = data[0][i];
            select.add(option, null);
        }
    }

    return numberSubstatus;
}

function esconderCamposEstados(){
    $recallDiv.hide();
    $subSubStatusDiv.hide();
    $("#encuestaVehicular").hide();
    $productoPrincipalDiv.hide();
    $productoSecundarioDiv.hide();
    $divMotivo.hide();
    $("#datosExequial").hide();
    $datos247.hide();
    $("#nombresExequial").val("");
    $("#edadExequial").val("");
    $("#parentescoExequial").val($("#parentescoExequial option:first").val());
    $debitoAsistencia.val($("#debitoAsistencia option:first").val());
    $tipoCobro.val($("#tipoCobro option:first").val());
    $cobertura247.val($("#cobertura247 option:first").val());
    $tipoCobro247.val($("#tipoCobro247 option:first").val());
    $("#asistencia").val($("#asistencia option:last").val());
}

function init(){
    esconderCamposEstados();
    $status.val($("#status option:first").val());
    $provinciaDomic.val($("#provinciaDomic option:first").val());
    $provinciaTrab.val($("#provinciaTrab option:first").val());
    $nacionalidadDiv.hide();
    $gestionLineaDiv.hide();
    $("#divArcotel").hide();
    $("#divObservacionesNoAcepta").hide();
    $("#noAceptacionVehicular").hide();
    $("#aceptacionVehicular").hide();
    $("#ScriptAceptaPAD").hide();
    $("#ScriptNoAceptaPAD").hide();
    $nacionalidadSelect.val($("#nacionalidadSelect option:first").val());
    $gestionLinea.val($("#gestionLinea option:first").val());
    $codigoOtp.val("");

   // $telefonoContactadoDiv.hide();
    $telefonoContactado.val("");
}

function mostrarAdicionalesEnTabla(){
    $bodyTablaAdicionales.html("");
    for(var i = 0; i < $adicionalesArray.length; i++){
        $contenidoTr = createTd($adicionalesArray[i].cedula)+createTd($adicionalesArray[i].primerNombre+" "+$adicionalesArray[i].segundoNombre+" "+
                $adicionalesArray[i].primerApellido+" "+$adicionalesArray[i].segundoApellido)+createTd($adicionalesArray[i].nombreTarjeta+
            createTd($adicionalesArray[i].cupoOtorgado)+createTd($adicionalesArray[i].sexo)/*+createTd($adicionalesArray[i].estadoCivil)*/+createTd($adicionalesArray[i].parentesco)+
            createTd($adicionalesArray[i].fechaNacimiento)+createTd($adicionalesArray[i].productoAceptado)+$tdDelete);
        $bodyTablaAdicionales.append(createTr($adicionalesArray[i].cedula, $contenidoTr));
    }
    $("#hidenAdicionales").val(JSON.stringify($adicionalesArray));
}

function createTd($content){
    return '<td>' + $content + '</td>';
}

function createTr($id, $content){
    return '<tr id="'+$id+'">' + $content + '</tr>';
}

function getAdicionalByCedula($cedula){
    $adicionalEncontrado = null;
    for(var i = 0; i < $adicionalesArray.length; i++){
        if($adicionalesArray[i].cedula == $cedula){
            $adicionalEncontrado = $adicionalesArray[i];
            break;
        }
    }
    return $adicionalEncontrado;
}

function borrarAdicional($cedula) {
    for(var i = 0; $adicionalesArray.length; i++){
        if($adicionalesArray[i].cedula === $cedula){
            $adicionalesArray.splice(i, 1);
            break;
        }
    }
    mostrarAdicionalesEnTabla();
}

function validateManagementData(){
    $isValid = true;
    if($("#baseGestionar").text() == "BASE CADUCADA NO GESTIONAR"){
        alert("LA BASE SE ENCUENTRA CADUCADA NO SE PUEDE CONTINUAR.");
        $isValid = false;
        return
    }

    if ($("#number1").is(":visible")) {
        if ($("#estadoTel1").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 1");
            $isValid = false;
            return
        }
    }
    if ($("#number2").is(":visible")) {
        if ($("#estadoTel2").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 2");
            $isValid = false;
            return
        }
    }
    if ($("#number3").is(":visible")) {
        if ($("#estadoTel3").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 3");
            $isValid = false;
            return
        }
    }
    if ($("#number4").is(":visible")) {
        if ($("#estadoTel4").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 4");
            $isValid = false;
            return
        }
    }
    if ($("#number5").is(":visible")) {
        if ($("#estadoTel5").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 5");
            $isValid = false;
            return
        }
    }
    if ($("#number6").is(":visible")) {
        if ($("#estadoTel6").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 6");
            $isValid = false;
            return
        }
    }
    if ($("#number7").is(":visible")) {
        if ($("#estadoTel7").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 7");
            $isValid = false;
            return
        }
    }
    if ($("#number8").is(":visible")) {
        if ($("#estadoTel8").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 8");
            $isValid = false;
            return
        }
    }
    if ($("#number9").is(":visible")) {
        if ($("#estadoTel9").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 9");
            $isValid = false;
            return
        }
    }
    if ($("#number10").is(":visible")) {
        if ($("#estadoTel10").val() == "") {
            alert("Debe seleccionar un estado para el numero de Telefono 10");
            $isValid = false;
            return
        }
    }

    if($("#status").val() == ""){
        alert("Debe escoger un estado");
        $isValid = false;
        return
    }else{
        if($("#substatus").val() == ""){
            alert("Debe escoger un subestado");
            $isValid = false
            return
        }else{
            if($("#recall").is(":visible")){
                if($("#agendamiento").val() == ""){
                    alert("Campo agendamiento vacio")
                    $isValid = false;
                    return
                }
                if($("#recall").val() == ""){
                    alert("Debe ingresar una fecha para la rellamada")
                    $isValid = false;
                    return
                }else{
                    if (calcularDias($("#recall").val()) > 3){
                        alert("La fecha de rellamada no puede sobrepasar los tres días")
                        $isValid = false;
                        return
                    }
                }
            }
            if($("#subSubStatus").is(":visible")){
                if($("#subSubStatus").val() == ""){
                    alert("Debe escoger un sub subestado")
                    $isValid = false;
                    return
                }
            }
            if($divMotivo.is(":visible")){
                if($("#motivoNoAceptaSeguro").val() == ""){
                    alert("Debe escoger el motivo no desea seguro")
                    $isValid = false;
                    return
                }
            }

            if ($telefonoContactadoDiv.is(":visible")) {
                if ($telefonoContactado.val() === "") {
                    alert("Ingrese el teléfono al cual pudo contactar al cliente");
                    $isValid = false;
                    return
                } else {
                    if ($telefonoContactado.val().substring(0, 1) != 0) {
                        alert("El teléfono contactado es incorrecto");
                        $isValid = false;
                        return
                    } else {
                        if (!validarSiNumero($telefonoContactado.val())) {
                            alert("El teléfono contactado no es un número válido");
                            $isValid = false;
                            return
                        }else{
                            if ($telefonoContactado.val().length ==  9 && $telefonoContactado.val().trim().substring(0, 2) == "09" ) {
                                alert("Esta ingresando un telefono convencional incorrecto. Verifique!");
                                $isValid = false;
                                return
                            }else {
                                if ($telefonoContactado.val().length ==  10 && $telefonoContactado.val().trim().substring(0, 2) != "09" ) {
                                    alert("Esta ingresando un telefono celular incorrecto. Verifique!");
                                    $isValid = false;
                                    return
                                }
                            }
                        }
                    }
                }
                if ($("#estadoTelefonoContactado").val() === "") {
                    alert("Ingrese el estado del teléfono contactado");
                    $isValid = false;
                    return
                }
            }
        }
    }
   if ($("#ODV").is(":visible")) {
        if($("#ODV").val() == ""){
            alert("Ingrese el ODV");
            $isValid = false;
            return;
        }

    }
    if($productoPrincipalDiv.is(":visible")){
        if($("#ScripAhorroPad").is(":visible")){
            if($("#aceptacionPad").val() == ""){
                alert("Campo aceptación PAD vacio");
                $isValid = false;
                return;
            }
            if($("#ScriptAceptaPAD").is(":visible")){
                if($("#montoAhorroPad").val() == ""){
                    alert("Campo Monto Ahorro PAD vacio");
                    $isValid = false;
                    return;
                }
                if($("#codigoOtpPad").val() == ""){
                    alert("Campo Código OTP PAD vacio");
                    $isValid = false;
                    return;
                }
                if($("#correoGestion").val() == ""){
                    alert("Campo correo electrónico vacio");
                    $isValid = false;
                    return;
                }
            }
        }

        if($provinciaDomic.val() == ""){
            alert("Ingrese la provincia de domicilio");
            $isValid = false;
            return;
        }
        if($ciudadDomic.val() == ""){
            alert("Ingrese la ciudad de domicilio");
            $isValid = false;
            return;
        }
        if($sectorDomic.val() == ""){
            alert("Ingrese la parroquia de domicilio");
            $isValid = false;
            return;
        }
        if($callePrincipalDomic.val() == ""){
            alert("Ingrese la calle principal de domicilio");
            $isValid = false;
            return;
        }
        if($numeracionDomic.val() == ""){
            alert("Ingrese la numeración de domicilio");
            $isValid = false;
            return;
        }
        if($calleTransversalDomic.val() == ""){
            alert("Ingrese la calle transversal de domicilio");
            $isValid = false;
            return;
        }
        if($tipoVivienda.val() == ""){
            alert("Ingrese el tipo de vivienda de domicilio");
            $isValid = false;
            return;
        }
        if($referenciaDomic.val() == ""){
            alert("Ingrese la referencia de domicilio");
            $isValid = false;
            return;
        }

        if($provinciaTrab.val() == ""){
            alert("Ingrese la provincia de trabajo");
            $isValid = false;
            return;
        }
        if($ciudadTrab.val() == ""){
            alert("Ingrese la ciudad de trabajo");
            $isValid = false;
            return;
        }
        if($sectorTrab.val() == ""){
            alert("Ingrese la parroquia de trabajo");
            $isValid = false;
            return;
        }
        if($callePrincipalTrab.val() == ""){
            alert("Ingrese la calle principal de trabajo");
            $isValid = false;
            return;
        }
        if($numeracionTrab.val() == ""){
            alert("Ingrese la numeración de trabajo");
            $isValid = false;
            return;
        }
        if($calleTransversalTrab.val() == ""){
            alert("Ingrese la calle transversal de trabajo");
            $isValid = false;
            return;
        }
        if($tipoTrab.val() == ""){
            alert("Ingrese el tipo de locación de trabajo");
            $isValid = false;
            return;
        }
        if($referenciaTrab.val() == ""){
            alert("Ingrese la referencia de trabajo");
            $isValid = false;
            return;
        }

        if($entrega.val() == ""){
            alert("Ingrese el lugar de entrega");
            $isValid = false;
            return;
        }
        if($nombreContacto.val() == ""){
            alert("Ingrese el nombre de contacto");
            $isValid = false;
            return;
        }else{
            if(!validarSiSoloLetras($nombreContacto.val())){
                alert("El nombre de contacto sólo debe tener letras, sin números ni tildes");
                $isValid = false;
                return;
            }
        }
        if($rangoVisita.val() == ""){
            alert("Ingrese el rango de visita");
            $isValid = false;
            return;
        }

        if($seguroDesgravamen.val() == ""){
            alert("Campo Seguro Desgravamen vacio");
            $isValid = false;
            return;
        }

        if($aceptacionArcotel.val() == ""){
            alert("Campo aceptación arcotel vacio");
            $isValid = false;
            return;
        }

        if($("#divArcotel").is(":visible")){
            if($("#utilizacionTarjetaCredito").val() == ""){
                alert("Campo en que utiliza sus tarjetas de crédito vacio");
                $isValid = false;
                return;
            }
            if($("#tarjetasEfectivo").val() == ""){
                alert("Campo utiliza mas sus tarjetas o efectivo vacio");
                $isValid = false;
                return;
            }
            if($("#recibeInformacion").val() == ""){
                alert("Campo le gustaría recibir información de vacio");
                $isValid = false;
                return;
            }
        }


        if($telefonoDomContacto.val() == ""){
            alert("Ingrese el teléfono de domicilio del contacto");
            $isValid = false;
            return;
        }else{
            if(!validarSiNumero($telefonoDomContacto.val())){
                alert("El dato ingresado como teléfono de domicilio de contacto no es válido");
                $isValid = false;
                return;
            }else{
                if($telefonoDomContacto.val().length != 9){
                    alert("El teléfono de domicilio de contacto debe tener 9 dígitos.");
                    $isValid = false;
                    return;
                }else{
                    if($telefonoDomContacto.val().substr(0,2) == '09'){
                        alert("Valor incorrecto en el número de domicilio de contacto, solo puede ingresar teléfonos convencionales");
                        $isValid = false;
                        return;
                    }
                }
            }
        }

        if($telefonoTrabContacto.val() == ""){
            alert("Ingrese el teléfono de trabajo del contacto");
            $isValid = false;
            return;
        }else{
            if(!validarSiNumero($telefonoTrabContacto.val())){
                alert("El dato ingresado como teléfono de trabajo de contacto no es válido");
                $isValid = false;
                return;
            }else{
                if($telefonoTrabContacto.val().length != 9){
                    alert("El teléfono de trabajo de contacto debe tener 9 dígitos.");
                    $isValid = false;
                    return;
                }else{
                    if($telefonoTrabContacto.val().substr(0,2) == '09'){
                        alert("Valor incorrecto en el número de trabajo de contacto, solo puede ingresar teléfonos convencionales");
                        $isValid = false;
                        return;
                    }
                }
            }
        }

        //Se valida que se haya ingresado adicionales
        if($adicionalesArray.length == 0){
            alert("Debe ingresar los dicionales del cliente");
            $isValid = false;
            return;
        }

        //Se valida que la información concatenada no exceda los 150 caracteres
        $informacionConcatenadaDomicilio = $callePrincipalDomic.val() + " " + $numeracionDomic.val() + " " + $calleTransversalDomic.val()+" " + $sectorDomic.val() + " " + $referenciaDomic.val();
        $informacionConcatenadaTrabajo = $callePrincipalTrab.val() + " " + $numeracionTrab.val() + " " + $calleTransversalTrab.val() + " " + $sectorTrab.val() + " " + $referenciaTrab.val();
        $longitudDomicilio = $informacionConcatenadaDomicilio.length;
        $longitudTrabajo = $informacionConcatenadaTrabajo.length;

        if($longitudDomicilio > 296){
            alert("La longitud en total de la dirección de domicilio tiene "+$longitudDomicilio+" caracteres. Sólo se permite hasta 150");
            $isValid = false;
            return;
        }

        if($longitudTrabajo > 296){
            alert("La longitud en total de la dirección de trabajo tiene "+$longitudDomicilio+" caracteres. Sólo se permite hasta 150");
            $isValid = false;
            return;
        }

        if($("#substatus").val() == 1 && $seguroDesgravamen.val() == 'SI'){
            alert("Si el cliente acepto el Seguro debe guardarlo como CU3 ACEPTA PRODUCTO Y VENTA CRUZADA");
            $isValid = false;
            return
        }

        if($("#substatus").val() == 3 && $seguroDesgravamen.val() == 'NO'){
            alert("Si el cliente no acepto el Seguro debe guardarlo como CU1 ACEPTA PRODUCTO CAMPAÑA");
            $isValid = false;
            return
        }


    }

    if($productoSecundarioDiv.is(":visible")){
        if($debitoAsistencia.val() == ""){
            alert("Seleccione el tipo de débito en las asistencias");
            $isValid = false;
            return;
        }
        if(!$asistencia.val()){
            alert("Escoja la(s) asistencia(s) para el cliente");
            $isValid = false;
            return;
        }else{
            if($datosExtraTotal.is(":visible")){
                if($tipoCobro.val() == ""){
                    alert("Escoja el tipo de cobro de la asistencia extra total");
                    $isValid = false;
                    return;
                }
            }
            if($datos247.is(":visible")){
                if($cobertura247.val() == ""){
                    alert("Escoja la cobertura para la asistencia 24/7");
                    $isValid = false;
                    return;
                }
                if($tipoCobro247.val() == ""){
                    alert("Escoja el tipo de cobro para la asistencia 24/7");
                    $isValid = false;
                    return;
                }
            }
        }

    }

    if($("#encuestaVehicular").is(":visible")){
        if($("#aceptacionCreditoVehicular").val() == ""){
            alert("Campo aceptación vehicular vacio.");
            $isValid = false;
            return;
        }
        if($("#noAceptacionVehicular").is(":visible")){
            if($("#motivoNoAceptaVehicular").val() == ""){
                alert("Indique porque no desea el producto el cliente.");
                $isValid = false;
                return;
            }
            if($("#divObservacionesNoAcepta").is(":visible")){
                if($("#observacionesNoAcepta").val() == ""){
                    alert("Campo observacion no acepta vacío");
                    $isValid = false;
                    return;
                }
            }

        }
    }

    return $isValid;
}

function formatearCedulaTitular($cedula){
    if($cedula.length == 9){
        $cedula = '0' + $cedula;
    }else{
        if($cedula.length > 10){
            $cedula = $cedula.substr($cedula.length-10, 10);
        }
    }
    return $cedula;
}

function validarDatosAdicional(){
    $isValid = true;
    if($cedula.val() == ""){
        alert("Ingrese el número de cédula del adicional");
        $isValid = false;
        return;
    }else{
        if($nacionalidad.val() == "ECUATORIANA"){
            if(!validarSiNumero($cedula.val())){
                alert("El número de cédula ingresado no es válido");
                $isValid = false;
                return;
            }else{
                if(!esCedulaValida($cedula.val())){
                    alert("El número de cédula del adicional no es correcto(No pasa la validación).");
                    $isValid = false;
                    return;
                }else{
                    if(formatearCedulaTitular($identificacionTitular.val()) === $cedula.val()){
                        alert("No puede ingresar la cédula del titular como cédula del adicional.");
                        $isValid = false;
                        return;
                    }
                }
            }
        }
    }
    if($primerNombre.val() == ""){
        alert("ingrese el primer nombre del adicional");
        $isValid = false;
        return;
    }else{
        if(!validarSiSoloLetras($primerNombre.val())){
            alert("El primer nombre debe sólo contener letras, sin números ni tildes");
            $isValid = false;
            return;
        }
    }
    if($segundoNombre.val() == ""){
        // alert("ingrese el segundo nombre del adicional");
        // $isValid = false;
        // return;
    }else{
        if(!validarSiSoloLetras($segundoNombre.val())){
            alert("El segundo nombre debe sólo contener letras, sin números ni tildes");
            $isValid = false;
            return;
        }
    }
    if($primerApellido.val() == ""){
        alert("ingrese el primer apellido del adicional");
        $isValid = false;
        return;
    }else{
        if(!validarSiSoloLetras($primerApellido.val())){
            alert("El primer apellido debe sólo contener letras, sin números ni tildes");
            $isValid = false;
            return;
        }
    }
    if($segundoApellido.val() == ""){
        // alert("ingrese el segundo apellido del adicional");
        // $isValid = false;
        // return;
    }else{
        if(!validarSiSoloLetras($segundoApellido.val())){
            alert("El segundo apellido debe sólo contener letras, sin números ni tildes");
            $isValid = false;
            return;
        }
    }
    if($nombreTarjeta.val() == ""){
        alert("ingrese el nombre en la tarjeta del adicional");
        $isValid = false;
        return;
    }else{
        if(!validarSiSoloLetras($nombreTarjeta.val())){
            alert("El nombre en tarjeta debe sólo contener letras, sin números ni tildes");
            $isValid = false;
            return;
        }else{
            if(!$nombreTarjeta.val().includes($primerApellido.val())){
                alert("El nombre en la tarjeta debe contener el primer apellido");
                $isValid = false;
                return;
            }else{
                if($nombreTarjeta.val().length > 25){
                    alert("El nombre en la tarjeta no puede sobrepasar los 25 caracteres");
                    $isValid = false;
                    return;
                }
            }
        }
    }
    if($cupoOtorgado.val() == ""){
        alert("Ingrese el cupo otorgado");
        $isValid = false;
        return;
    }else{
        if(!validarSiNumero($cupoOtorgado.val())){
            alert("El dato ingresado en el cupo a otorgar no es un número válido");
            $isValid = false;
            return;
        }else{
            if($cupoOtorgado.val() == "00" || $cupoOtorgado.val() == "000" || $cupoOtorgado.val() == "0000"){
                alert("Valor inválido para el campo cupo, si el cliente desea el cupo abierto debe ingresar 0");
                $isValid = false;
                return;
            }
        }
    }
    if($sexo.val() == ""){
        alert("Ingrese el género del adicional");
        $isValid = false;
        return;
    }
    if($estadoCivil.val() == ""){
        alert("Ingrese el estado civil del adicional");
        $isValid = false;
        return;
    }
    if($parentesco.val() == ""){
        alert("Ingrese el parentesco");
        $isValid = false;
        return;
    }
    if($fechaNacimiento.val() == ""){
        alert("Ingrese la fecha de nacimiento");
        $isValid = false;
        return;
    }/*else{
        if(calcularEdad($fechaNacimiento.val()) < 15){
            alert("El adicional debe tener 15 años en adelante");
            $isValid = false;
            return;
        }
    }*/

    if($nacionalidad.val() == ""){
        alert("Seleccione la nacionalidad del adicional");
        $isValid = false;
        return;
    }

    if($telefonoCelular.val() == ""){
        alert("Ingrese el teléfono celular del adicional");
        $isValid = false;
        return;
    }else{
        if(!validarSiNumero($telefonoCelular.val())){
            alert("El dato ingresado como teléfono celular de adicional no es válido");
            $isValid = false;
            return;
        }else{
            if($telefonoCelular.val().length != 10){
                alert("El teléfono celular de adicional debe tener 10 dígitos.");
                $isValid = false;
                return;
            }else{
                if($telefonoCelular.val().substr(0,2) != '09'){
                    alert("Valor incorrecto en el número celular de adicional");
                    $isValid = false;
                    return;
                }else{
                    if($telefonoCelular.val() == $cedula.val()){
                        alert("No puede ingresar el número de cédula del adicional como teléfono celular");
                        $isValid = false;
                        return;
                    }
                }
            }
        }
    }

    if($correo.val() == ""){
        alert("Ingrese el correo del adicional");
        $isValid = false;
        return;
    }else{
        if(!validarEmail($correo.val())){
            alert("El Email de Adicional ingresado es incorrecto.");
            $isValid = false;
            return;
        }
    }
    if($productoAceptado.val() == ""){
        alert("Ingrese el producto que desea el adicional");
        $isValid = false;
        return;
    }else{
        if($productoAceptado.val() == "KIDS" && $cupoOtorgado.val() == 0){
            alert("Las tarjeta adicionales KIDS no pueden tener cupo con $0");
            $isValid = false;
            return;
        }else{
            if($productoAceptado.val() == "FREEDOM" && $cupoOtorgado.val() == 0){
                alert("Las tarjeta adicionales FREEDOM no pueden tener cupo con $0.");
                $isValid = false;
                return;
            }else{
                if($productoAceptado.val() == "FREEDOM" && $cupoOtorgado.val() < 30){
                    alert("El valor mínimo de las tarjetas adicionales FREEDOM es $30.");
                    $isValid = false;
                    return;
                }else{
                    if($productoAceptado.val() == "KIDS" && $cupoOtorgado.val() < 20){
                        alert("El valor mínimo de las tarjetas adicionales KIDS es $20.");
                        $isValid = false;
                        return;
                    }else{
                        if($productoAceptado.val() != "KIDS" && $productoAceptado.val() != "FREEDOM" && $cupoOtorgado.val() < 200 && $cupoOtorgado.val() > 0 /*|| $tipoTarjeta.val() == "VISA" && $cupoOtorgado.val() < 200 && $cupoOtorgado.val() > 0*/){
                            alert("El valor mínimo de las tarjetas adicionales DINERS CLUB / VISA es de $200");
                            $isValid = false;
                            return;
                        }else{
                            if($productoAceptado.val() == "KIDS" && calcularEdad($fechaNacimiento.val()) > 11){
                                alert("Las tarjetas KIDS solo se aceptan si el cliente adicional no sobrepasa los 11 años");
                                $isValid = false;
                                return;
                            }else{
                                /*if($productoAceptado.val() == "FREEDOM" && calcularEdad($fechaNacimiento.val()) < 11 && calcularEdad($fechaNacimiento.val() > 17)){
                                    alert("Las tarjetas FREEDOM solo se aceptan si el cliente adicional tiene entre 12 y 17 años");
                                    $isValid = false;
                                    return;
                                }*/
                                if($productoAceptado.val() != "FREEDOM" && $productoAceptado.val() != "KIDS" && calcularEdad($fechaNacimiento.val()) < 18){
                                    alert("Las tarjetas DINERS CLUB / VISA se aceptan para adicionales mayores de edad");
                                    $isValid = false;
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    /*else{

                                    if($tipoTarjeta.val() == "FREEDOM" && calcularEdad($fechaNacimiento.val()) < 11 && calcularEdad($fechaNacimiento.val() > 17)){
                                        alert("Las tarjetas FREEDOM solo se aceptan si el cliente adicional tiene entre 12 y 17 años");
                                        $isValid = false;
                                        return;
                                    }else{
                                        if($tipoTarjeta.val() == 'DINERS CLUB' && calcularEdad($fechaNacimiento.val()) < 18){
                                            alert("Las tarjetas DINERS CLUB solo se aceptan a partir de los 18 años");
                                            $isValid = false;
                                            return;
                                        }
                                    }
                                }
                            }*/


    if($gestionLinea.val() == ""){
        alert("Campo gestión en línea vacío");
        $isValid = false;
        return;
    }
    if($gestionLineaDiv.is(":visible")) {
        if ($codigoOtp.val() == "") {
            alert("Ingrese el codigo OTP que brinda el cliente");
            $isValid = false;
            return;
        }
    }

    if ($validacionDatos.val() == "") {
        alert("Campo validación datos vacio.");
        $isValid = false;
        return;
    }

    if($notificacionConsumo.val()==""){
        alert("Campo Notificacion Consumo vacio");
        $isValid = false;
        return;
    }


    return $isValid;
}

/**
 * Función basada en función de internet: https://gist.github.com/vickoman/7800717
 */
function esCedulaValida($entrada){
    $esValida = true;
    if($entrada.length != 10){
        $esValida = false;
    }else{
        //Los dos primeros dígitos me indican la provincia
        $region = parseInt($entrada.substring(0, 2));
        if ($region <= 0 || $region > 30){
            $esValida = false;
        }else{
            $ultimoDigito = $entrada.substring(9, 10);
            //Saco los pares y los sumo
            $pares = parseInt($entrada.substring(1,2)) + parseInt($entrada.substring(3,4)) + parseInt($entrada.substring(5,6)) + parseInt($entrada.substring(7,8));

            //Agrupo los impares, los multiplico por un factor de 2, si la resultante es > que 9 le restamos el 9 a la resultante
            $numero1 = $entrada.substring(0,1);
            $numero1 = ($numero1 * 2);
            if( $numero1 > 9 ){ $numero1 = ($numero1 - 9); }

            $numero3 = $entrada.substring(2,3);
            $numero3 = ($numero3 * 2);
            if( $numero3 > 9 ){ $numero3 = ($numero3 - 9); }

            $numero5 = $entrada.substring(4,5);
            $numero5 = ($numero5 * 2);
            if( $numero5 > 9 ){ $numero5 = ($numero5 - 9); }

            $numero7 = $entrada.substring(6,7);
            $numero7 = ($numero7 * 2);
            if( $numero7 > 9 ){ $numero7 = ($numero7 - 9); }

            $numero9 = $entrada.substring(8,9);
            $numero9 = ($numero9 * 2);
            if( $numero9 > 9 ){ $numero9 = ($numero9 - 9); }

            $impares = $numero1 + $numero3 + $numero5 + $numero7 + $numero9;

            //Suma total
            $suma_total = ($pares + $impares);


            //extraemos el primero digito
            if($suma_total >= 10) //Si la suma total es de dos cifras
                $primer_digito_suma = String($suma_total).substring(0,1);
            else
                $primer_digito_suma = '0';


            //Obtenemos la decena inmediata
            $decena = (parseInt($primer_digito_suma) + 1)  * 10;


            //Obtenemos la resta de la decena inmediata - la suma_total esto nos da el digito validador
            $digito_validador = $decena - $suma_total;

            //Si el digito validador es = a 10 toma el valor de 0
            if($digito_validador == 10)
                $digito_validador = 0;

            if($digito_validador != $ultimoDigito){
                $esValida = false;
            }
        }
    }

    return $esValida;
}

/**
 * Función bajada de internet https://es.stackoverflow.com/questions/31373/obtener-la-edad-a-partir-de-la-fecha-de-nacimiento-con-javascript-y-php
 * @param fecha
 * @returns {number}
 */
function calcularEdad(fecha) {
    var hoy = new Date();
    var cumpleanos = new Date(fecha);
    var edad = hoy.getFullYear() - cumpleanos.getFullYear();
    var m = hoy.getMonth() - cumpleanos.getMonth();

    if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
        edad--;
    }

    return edad;
}

/**
 * Valida si el valor ingresado es numérico
 * @param numero
 */
function validarSiNumero(numero){
    $esNumero = true;
    if (!/^([0-9])*$/.test(numero)){
        $esNumero = false;
    }
    return $esNumero;
}

$('#horaEntrega').on('keypress', function(e) {
    if(checkIfNumberNoSpace(e.which, e)==0){
        return false;
    }else{
        return;
    }
});
$('#fechaNacimiento').on('keypress', function(e) {
    if(checkIfNumberNoSpace(e.which, e)==0){
        return false;
    }else{
        return;
    }
});

$(".accordion-titulo").click(function(){

    var contenido=$(this).next(".accordion-content");

    if(contenido.css("display")=="none"){ //open
        contenido.slideDown(250);
        $(this).addClass("open");
    }
    else{ //close
        contenido.slideUp(250);
        $(this).removeClass("open");
    }

});

/**
 *@description Funcion que evita que puedan ingresar numeros en campos
 * @author Andres Redroban
 * */

function checkIfNumberNoSpace(codeKey,e){
    if (codeKey == 32)
        return 0;
    // Asignando numero y no espacios
    if ($.inArray(codeKey, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
        // Allow: Ctrl+A
        (codeKey == 97 && e.ctrlKey === true) ||
        // Allow: Ctrl+C
        (codeKey == 99 && e.ctrlKey === true) ||
        // Allow: Ctrl+X
        (codeKey == 120 && e.ctrlKey === true) ||
        // Allow: home, end, left, right, tab
        (codeKey == 0)) {
        // let it happen, don't do anything
        return 1;
    }
    if ((codeKey < 48 || codeKey > 57)) {
        return 0;
    }
}

/**
 * Valida que en el valor ingresado sólo hayan letras y espacios
 * @param entrada
 * @returns {boolean}
 */
function validarSiSoloLetras(entrada){
    $esSoloTexto = true;
    $filtro = /^([A-Za-z ])*$/;
    if(!$filtro.test(entrada)){
        $esSoloTexto = false;
    }
    return $esSoloTexto;
}

/**
 * Valida si el correo ingresado es correcto
 * @param email
 * @author Andres Redroban
 */
function validarEmail(email)
{
    var regex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    return regex.test(email) ? true : false;
}

/**
 * Función tomada como ejemplo de internet https://www.lawebdelprogramador.com/foros/JavaScript/1594805-Calcular-la-cantidad-de-dias-entre-dos-fechas-Javascript-y-HTML.html
 * @param fecha
 * @returns {contdias}
 * @author Andres Redrobán
 * @description La siguiente función calcula el numero de dias tomando como referencia el facha actual y la fecha ingresada desde el sistema.
 */
function calcularDias(fecha){
    var fechaini = new Date();
    var fechafin = new Date(fecha);
    var diasdif= fechafin.getTime()-fechaini.getTime();
    var contdias = Math.round(diasdif/(1000*60*60*24));
    return contdias;
}

/**
 * Limpia los campos luego de agregar un adicional
 */
function limpiarCamposAdicional(){
    $cedula.val("");
    $primerNombre.val("");
    $segundoNombre.val("");
    $primerApellido.val("");
    $segundoApellido.val("");
    $nombreTarjeta.val("");
    $cupoOtorgado.val("");
    $sexo.val($("#sexo option:first").val());
    $estadoCivil.val($("#estadoCivil option:first").val());
    $parentesco.val($("#parentesco option:first").val());
    $fechaNacimiento.val("");
    $nacionalidadSelect.val($("#nacionalidadSelect option:first").val());
    $gestionLinea.val($("#gestionLinea option:first").val());
    $nacionalidad.val("ECUATORIANA");
    $nacionalidadDiv.hide();
    $gestionLineaDiv.hide();
    $codigoOtp.val("");
    $correo.val("");
    $telefonoCelular.val("");
    $productoAceptado.val($("#productoAceptado option:first").val());
    $tipoTarjeta.val($("#tipoTarjeta option:first").val());
    $observaciones.val("");
}