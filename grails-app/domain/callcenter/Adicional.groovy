package callcenter

import com.pw.security.Usuario

class Adicional {

    Clientes clientes
    Usuario usuario
    String cedula
    String nacionalidad
    String primerApellido
    String segundoApellido
    String primerNombre
    String segundoNombre
    String nombreTarjeta
    String cupoOtorgado
    String fechaNacimiento
    String sexo
    String estadoCivil
    String parentesco
    String observaciones
    Boolean tarjetaCreada
    String correo
    String telefonoCelular
    String productoAceptado
    String tipoTarjeta
    String gestionLinea
    String codigoOtp
    //cambios kardex 17/04/2021
    String creadasNocreadas
    String imputable
    String detalleImputable
    String fechaEnvioCreacion
    String validacionDatos
    String notificacionConsumo


    static constraints = {
        segundoApellido nullable: true
        segundoNombre nullable: true
        sexo inList: ['MASCULINO', 'FEMENINO']
        estadoCivil inList: ['SOLTERO', 'CASADO', 'VIUDO', 'DIVORCIADO', 'UNION DE HECHO', 'UNION LEGALIZADA', 'UNION LIBRE']
        //parentesco inList:  ['CONYUGUE', 'UNION DE HECHO', 'PADRES', 'HERMANOS', 'HIJOS', 'HIJASTROS', 'TIOS', 'PRIMOS', 'SOBRINOS', 'ABUELOS', 'NIETOS', 'CUÑADOS', 'AMIGO(A)', 'COMPAÑERO DE TRABAJO', 'NOVIO(A)', 'YERNOS', 'NUERAS']
        parentesco nullable: true
        correo nullable: true
        telefonoCelular nullable: true
        productoAceptado nullable: true
        tipoTarjeta nullable: true
        gestionLinea nullable: true
        codigoOtp nullable: true
        creadasNocreadas nullable: true
        imputable nullable: true
        detalleImputable nullable: true
        fechaEnvioCreacion nullable: true
        validacionDatos nullable: true
        notificacionConsumo nullable: true
    }

    static mapping = {
        version false
        tarjetaCreada defaultValue: "false"
    }
}
