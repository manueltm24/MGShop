<%@ page import="com.mgshop.domains.seguridad.Perfil" %>
<g:applyLayout name="main">
    <content tag="body">
        <section class="section light-backgorund">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="title-wrap">
                            <h2 class="title">Listado de usuarios</h2>
                        </div>
                    </div><!-- end col -->
                </div><!-- end row -->

                <div class="row">
                    <div class="col-sm-11">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Correo electronico</th>
                                    <th>Acciones</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${listadoUsuarios}" var="usuario">
                                <tr>
                                    <th scope="row">${usuario.id}</th>
                                    <td>${usuario.nombre}</td>
                                    <td>${usuario.correoElectronico}</td>
                                    <td>

                                        <g:if test="${com.mgshop.domains.seguridad.UsuarioPerfil.findByUsuario(usuario).perfil.authority=="ROLE_ADMIN"}">
                                            <label>-</label>
                                        </g:if>
                                        <g:else>
                                            <g:link action="editarUsuario" params="[idUsuario: usuario.id]" controller="usuario" ><button type="button" class="btn btn-default round btn-md"><b>Editar</b></button></g:link>

                                            <g:form params="[idUsuario: usuario.id]" action="eliminarUsuario" >
                                                <button type="summit" class="btn btn-danger round btn-md">Eliminar</button>
                                            </g:form>
                                        </g:else>



                                    </td>
                                </tr>
                                </g:each>
                                </tbody>
                            </table>
                        </div><!-- end table-responsive -->
                    </div><!-- end col -->
                </div><!-- end row -->



            </div><!-- end container -->
        </section>
    </content>
</g:applyLayout>