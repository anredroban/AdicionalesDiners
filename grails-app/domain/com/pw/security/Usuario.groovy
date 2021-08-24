package com.pw.security

class Usuario {
	
	String nombre
	String usuario
	String password
	String estado
	String extent
	String cedula
	
	Date dateCreated
	Date lastUpdated
	
	Rol rol

    static constraints = {
		estado inList: ['ACTIVO', 'INACTIVO']
		usuario unique: true
		extent nullable:true
		cedula nullable: true
    }
	
	static mapping = {
		version false
	  }
}
