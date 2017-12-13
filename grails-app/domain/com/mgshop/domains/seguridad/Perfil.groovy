package com.mgshop.domains.seguridad

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Perfil implements Serializable{

    private static final long serialVersionUID = 1

    String authority

    String permisos

    static constraints = {
        authority nullable: false, blank: false, unique: true
    }

    static mapping = {
        table 'seg_perfil'
        cache true
    }


}
