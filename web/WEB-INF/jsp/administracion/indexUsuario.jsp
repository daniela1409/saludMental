<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    


<section  class="container">
    <article class="">
        <div class="col-xs-12 col-sm-12"><!-- main area -->
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <div >
                            <h4 style="display: inline-block;"><i class="fa fa-briefcase" aria-hidden="true"></i> Usuarios </h4><button class="btn btn-success" style="float:right;" onclick="window.location.href = '${pageContext.request.contextPath}/administracion/crearUsuario'">Agregar usuario</button>
                        </div>
                    </div>
                    <div id="addscroll">
                        <div class="table-responsive">
                            <table class="table table-hover tableestilo" id="tb_usuarios">
                                <thead>
                                    <tr>
                                        <td><input type="text" name="" class="form-control input-sm" data-index="0" placeholder="Buscar" id="busquedaEmpresa"></td>
                                        <td><input type="text" name="" class="form-control input-sm" data-index="1" placeholder="Buscar" id="busquedaCargo"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th style="display: none"></th>
                                        <th>Nombre</th>
                                        <th>Correo electrónico</th> 
                                        <th>&nbsp;</th>
                                    </tr>             
                                </thead>
                                <tbody>
                                    
                                    <c:forEach var="usuario" items="${usuarios}" >
                                        <tr>
                                            <td style="display: none">${usuario.getIdUsuario()}</td>
                                            <td>${usuario.nombreApellido()}</td>
                                            <td>${usuario.getCorreoElectronico()}</td>
                                           
                                            <td style='white-space: nowrap'>
                                                <button class="btn btn-success btn-sm" onclick="mostrarUsuario(${usuario.getIdUsuario()})">Ver</button>
                                                <button class="btn btn-info btn-sm" id="valEd" style="margin-left: 10px;" onclick="validarEdicionUsuario(${usuario.getIdUsuario()})"><i class="fas fa-pencil-alt" aria-hidden="true"></i></button>
                                          </td>
                                        </tr>
                                    </c:forEach>
                                       
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>                    
            </div>
        </div>
                        
        <div class="modal fade" id="validacionUsuario" role="dialog">
            <div class="modal-dialog">
                <form id="validarUsuario" method="POST">
                    <div class="modal-content">
                        <div class="modal-header mhsuccess">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Validación Usuario</h4>                                
                        </div>
                        <div class="modal-body">
                            <div id="alert_placeholder_validacion_Usuario"></div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="codigoOferta">Nombre de usuario</label>
                                        <input type='text' class="form-control" name="nombreUsuario" id="nombreUsuarioValidar" required />
                                        <input type='hidden' class="form-control" name="idUsuario" id="idUsuarioValidar" />
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success" >Aceptar</button>
                            <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
                        
        <div class="modal fade" id="modalUsuario" role="dialog">
            <div class="modal-dialog">
                <form>
                    <div class="modal-content">
                        <div class="modal-header mhsuccess">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Validación Usuario</h4>                                
                        </div>
                        <div class="modal-body">
                            <div id="alert_placeholder_validacion_Usuario"></div>
                            <div class="row">
                                <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>Id del usuario</label>
                                        <input class="form-control form-control-sm" id="idUsuario" disabled>                   
                                    </div>
                                </div>
                                <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>Identificacion</label>
                                        <input class="form-control form-control-sm" id="numeroIdentificacion" disabled>                   
                                    </div>
                                </div>
                                <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>Nombre de usuario</label>
                                        <input class="form-control form-control-sm" id="nombreUsuario" disabled>                   
                                    </div>
                                </div>
                                <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>Nombres</label>
                                        <input class="form-control form-control-sm" id="nombres" disabled>                   
                                    </div>
                                </div>
                                <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>Apellidos</label>
                                        <input class="form-control form-control-sm" id="apellidos" disabled>                   
                                    </div>
                                </div>
                                
                                <div class="col-md-4" >
                                    <div class="form-group">
                                        <label>Correo electrónico</label>
                                        <input class="form-control form-control-sm" id="correoElectronico" disabled>                   
                                    </div>
                                </div>
                                
                                
                                
                                
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success" >Aceptar</button>
                            <button type="button" class="btn btn-success" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
    </article>
   <form:form method="POST" modelAttribute="mostrarEdicionUsuario" action="${pageContext.request.contextPath}/administracion/mostrarEditarUsuario">
        <input type='hidden' class="form-control" name="idUsuario" id="idUsuarioEdicion" />
        <input type='hidden' class="form-control" name="nombreUsuario" id="idnombreUsuario" />
    </form:form>
 <script>
    var privilegios = null;
    
    $(document).ready(function () {
        var table = $('#tb_usuarios').DataTable();
        
        $('#validarUsuario').submit(function (evt) {
            evt.preventDefault();
            var formData = new FormData(this);
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/administracion/validarUsuario",
                data: formData,
                processData: false,
                contentType: false,
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("X-CSRF-Token", $('input[name=_csrf]').val());
                },
                success: function (response) {
                    if (response === "") {
                       $('#validacionUsuario').modal('hide');
                       $('#idnombreUsuario').val($('#nombreUsuarioValidar').val());
                       $('#nombreUsuarioValidar').val('');
                       $('#mostrarEdicionUsuario').submit(); 
                    } else {
                        alert_placeholder_validacion_Usuario.warning(response);
                    }
                },
                error: function (xhr, ajaxOptions, thrownError) {
                   alert_placeholder_validacion_Usuario.warning("Error al validar la oferta de empleo.");
                }});

            $('#md_confirm').modal('hide');
        });
       
    });
    
    function mostrarUsuario(idUsuario) {
        $.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/administracion/" + idUsuario,
            processData: false,
            contentType: false,
            success: function (response) {
                if (response !== "") {
                    var usuario = JSON.parse(response);
                    $('#idUsuario').val(usuario.idUsuario);
                    $('#nombreUsuario').val(usuario.nombreUsuario);
                    $('#numeroIdentificacion').val(usuario.numeroIdentificacion);
                    $('#nombres').val(usuario.nombres);
                    $('#apellidos').val(usuario.apellidos);
                    $('#correoElectronico').val(usuario.correoElectronico);
                    
                    
                    $('#modalUsuario').modal('show');
                }
            }});
    }
    
    function validarEdicionUsuario(idPerfil) {
        $('#idUsuarioValidar').val(idPerfil);
        $('#idUsuarioEdicion').val(idPerfil);
        
        console.log(idPerfil);
        $('#validacionUsuario').modal('show');
    }
    
    alert_placeholder_validacion_Usuario = function () { };
    alert_placeholder_validacion_Usuario.warning = function (message) {
        $('#alert_placeholder_validacion_Usuario').html('<div class="alert alert-danger"><a class="close" data-dismiss="alert">×</a><span>' + message + '</span></div>');
    };
    alert_placeholder_validacion_Usuario.success = function (message) {
        $('#alert_placeholder_validacion_Usuario').html('<div class="alert alert-success"><a class="close" data-dismiss="alert">×</a><span>' + message + '</span></div>');
    };
    alert_placeholder_validacion_Usuario.removeWarning = function () {
        $('#alert_placeholder_validacion_Usuario').html('');
    };
</script>
