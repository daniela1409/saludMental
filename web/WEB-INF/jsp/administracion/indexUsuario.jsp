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
                            <table class="table table-hover tableestilo" id="ofertasEmpleo">
                                <thead>
                                    <tr>
                                        <td><input type="text" name="" class="form-control input-sm" data-index="0" placeholder="Buscar" id="busquedaEmpresa"></td>
                                        <td><input type="text" name="" class="form-control input-sm" data-index="1" placeholder="Buscar" id="busquedaCargo"></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Correo electrónico</th> 
                                        <th>&nbsp;</th>
                                    </tr>             
                                </thead>
                                <tbody>
                                    
                                    <c:forEach var="usuario" items="${usuarios}" >
                                        <tr>
                                            <td>${usuario.nombreApellido()}</td>
                                            <td>${usuario.getCorreo()}</td>
                                            <td style='white-space: nowrap'>
                                                <button class="btn btn-success btn-sm" onclick="mostrarOfertaEmpleo(${ofertaEmpleo.getId()})">Ver</button>
                                                <button class="btn btn-info" style="margin-left: 10px;" onclick="validarEdicionOfertaEmpleo(${ofertaEmpleo.getId()})"><i class="fas fa-pencil-alt" aria-hidden="true"></i></button>
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
        
    </article>
</section>
 <script>
    
    $(document).ready(function () {
        var table = $('#ofertasEmpleo').DataTable()});
    </script>
