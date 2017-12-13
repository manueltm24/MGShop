package com.mgshop.domains.seguridad

import com.mgshop.domains.ArticuloCarrito
import com.mgshop.domains.Compra
import com.sparkpost.Client
import com.sparkpost.exception.SparkPostException
import grails.compiler.GrailsCompileStatic
import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString

@GrailsCompileStatic
@EqualsAndHashCode(includes='authority')
@ToString(cache=true, includeNames=true, includePackage=false)
class Usuario  implements Serializable {

    long id

    String nombre
    String correoElectronico
    String password
    String username

    String apellido
    String state
    String city
    String address
    String zip

    //Datos genericos del dominio.
    boolean habilitado = true;
    String creadoPor = "sistemas";
    String modificadoPor = "sistemas";
    Date dateCreated;
    Date lastUpdated;


    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Set<Perfil> getAuthorities() {
        (UsuarioPerfil.findAllByUsuario(this) as List<UsuarioPerfil>)*.perfil as Set<Perfil>
    }

    static hasMany = [carroDeCompras: ArticuloCarrito ]


    static constraints = {
        carroDeCompras nullable: true
        apellido nullable: true
        state nullable: true
        city nullable: true
        address nullable: true
        zip nullable: true

        password blank: false, password: true
        username blank: false, unique: true
    }

    static mapping = {
        table 'seg_usuario'
        password column: '`password`'
    }


    static void enviarCorreoUsuarioDespacho(List<Usuario> listadoUsuarios, Compra compra) throws SparkPostException{

            String API_KEY = "c219f63af6847c6ac7de7db6af57ecb59d788f1b";
            Client sparky = new Client(API_KEY);


            listadoUsuarios.each {
                boolean enviado =false
                sparky.sendMessage(
                        "waterquality@waterquality.pionot.com",
                        it.correoElectronico,
                        "MGShop Depacho de orden realizada",
                        "Se ha emitido una nueva orden, favor realizar el despacho de la orden"+compra.id,
                        "<p>Se ha emitido una nueva orden, favor realizar el despacho de la orden"+compra.id+"</p>");
            }

    }
    static void enviarCorreoNuevoUsuario(Usuario usuario) throws SparkPostException{

        String API_KEY = "c219f63af6847c6ac7de7db6af57ecb59d788f1b";
        Client sparky = new Client(API_KEY);

            boolean enviado =false
            sparky.sendMessage(
                    "waterquality@waterquality.pionot.com",
                    usuario.correoElectronico,
                    "MGShop nuevo registro",
                    "Nuevo usuario registrado:\n Nombre de usuario:"+usuario.username+"Contraseña:"+usuario.password,
                    "<p>Nuevo usuario registrado:<br>Nombre de usuario:"+usuario.username+"</br><br>Contraseña:"+usuario.password+"</br><p>");


    }

}
