<%-- 
    Document   : webinar
    Created on : 12/02/2021, 01:11:15 AM
    Author     : Carolina
--%>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  


    <div class="form-group">
        <div class="row">
            <div class="active" id="liresultados">
                <div class="col-md-6">
                    <h4 style="color: #0F5531;font-weight: bold;"><i class="fas fa-chalkboard-teacher"></i> Webinars
                    </h4>
                </div>
            </div>
            <!-- <div class="col-md-6" style="float: right;margin-top:3px;">
              <div class="form-inline">
                <label>Buscar:</label>
                <input type="text" name="inpubus" id="inpubus" class="form-control input-sm" style="width: 75%"><button
                  class="btn btn-primary btn-sm" id="btnbuscar" style="margin-left: 5px;"><i
                    class="fas fa-search"></i></button>
              </div>
            </div> -->
        </div>
        <hr />
    </div>
    <div id="formdocumentacion">
        <div class="row" style="">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Agregar un nuevo webinar</label>
                    <button class="btn btn-success btn-sm" data-target="#md_webinar" data-toggle="modal" id="btnmas"><span
                            class="glyphicon glyphicon-plus"></span></button>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <ul class="nav nav-tabs" id="tabEventos" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#webinar">
                            <i class="fa fa-calendar" aria-hidden="true"></i>
                            Próximos
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#webinarFinalizados">
                            <i class="fa fa-calendar-check" aria-hidden="true"></i>
                            Finalizados
                        </a>
                    </li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active" id="webinar">
                        <div class="col-sm-12" style="margin-top: 10px;">
                            <table id="webinarTable" class="table table-hover tableestilo">
                                <thead>
                                    <tr>
                                        <td><input type="text" class="form-control input-sm" placeholder="Buscar fecha" id="fechinput">
                                        </td>
                                        <td><input type="text" class="form-control input-sm" placeholder="Buscar tema" id="temainput">
                                        </td>
                                        <td><input type="text" class="form-control input-sm" placeholder="Buscar invitado" id="invinput">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 100px;">Fecha</th>
                                        <th class="text-center" style="width: 100px;">Tema</th>
                                        <th class="text-center" style="width: 153px;">Invitado</th>
                                        <th class="text-center" style="width: 70px;">Estado</th>
                                        <th class="text-center" style="width: 69px;">Registro</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>Febrero 20 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Próximo</td>
                                        <td><a href="" class="btn btn-success" data-target="#md_registro" data-toggle="modal"><i
                                                    class="fa fa-edit"></i> Registro</a></td>
                                    </tr>
                                </tbody>
                                </tfoot>
                                </tfoot>
                            </table>
                        </div>
                    </div>

                    <div class="tab-pane" id="webinarFinalizados">
                        <div class="col-sm-12" style="margin-top: 10px;">
                            <table id="webinarTableFinalizados" class="table table-hover tableestilo">
                                <thead>
                                    <tr>
                                        <td><input type="text" class="form-control input-sm" placeholder="Buscar fecha" id="fechinputF">
                                        </td>
                                        <td><input type="text" class="form-control input-sm" placeholder="Buscar tema" id="temainputF">
                                        </td>
                                        <td><input type="text" class="form-control input-sm" placeholder="Buscar invitado" id="invinputF">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th class="text-center" style="width: 100px;">Fecha</th>
                                        <th class="text-center" style="width: 100px;">Tema</th>
                                        <th class="text-center" style="width: 153px;">Invitado</th>
                                        <th class="text-center" style="width: 70px;">Estado</th>
                                        <th class="text-center" style="width: 69px;">Enlace</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td>Febrero 03 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Finalizado</td>
                                        <td><a style="" href="https://www.youtube.com/" role="button" aria-expanded="false">link</a>
                                        </td>
                                        <!-- <td ><a href="" class="btn btn-success" data-target="#md_mas" data-toggle="modal"><i
                                            class="fa fa-plus"></i> Ver más</a></td> -->
                                    </tr>
                                    <tr>
                                        <td>Febrero 03 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Finalizado</td>
                                        <td><a style="" href="https://www.youtube.com/" role="button" aria-expanded="false">link</a>
                                        </td>
                                        <!-- <td ><a href="" class="btn btn-success" data-target="#md_mas" data-toggle="modal"><i
                                            class="fa fa-plus"></i> Ver más</a></td> -->
                                    </tr>
                                    <tr>
                                        <td>Febrero 03 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Finalizado</td>
                                        <td><a style="" href="https://www.youtube.com/" role="button" aria-expanded="false">link</a>
                                        </td>
                                        <!-- <td ><a href="" class="btn btn-success" data-target="#md_mas" data-toggle="modal"><i
                                            class="fa fa-plus"></i> Ver más</a></td> -->
                                    </tr>
                                    <tr>
                                        <td>Febrero 03 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Finalizado</td>
                                        <td><a style="" href="https://www.youtube.com/" role="button" aria-expanded="false">link</a>
                                        </td>
                                        <!-- <td ><a href="" class="btn btn-success" data-target="#md_mas" data-toggle="modal"><i
                                            class="fa fa-plus"></i> Ver más</a></td> -->
                                    </tr>
                                    <tr>
                                        <td>Febrero 03 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Finalizado</td>
                                        <td><a style="" href="https://www.youtube.com/" role="button" aria-expanded="false">link</a>
                                        </td>
                                        <!-- <td ><a href="" class="btn btn-success" data-target="#md_mas" data-toggle="modal"><i
                                            class="fa fa-plus"></i> Ver más</a></td> -->
                                    </tr>
                                    <tr>
                                        <td>Febrero 03 de 2020</td>
                                        <td>La salud, el medio ambiente y enfermedades asociadas a la
                                            pobreza</td>
                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td>Finalizado</td>
                                        <td><a style="" href="https://www.youtube.com/" role="button" aria-expanded="false">link</a>
                                        </td>
                                        <!-- <td ><a href="" class="btn btn-success" data-target="#md_mas" data-toggle="modal"><i
                                            class="fa fa-plus"></i> Ver más</a></td> -->
                                    </tr>
                                </tbody>
                                </tfoot>
                                </tfoot>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

<div class="modal" id="md_webinar" style="overflow-y: scroll;" role="dialog" tabindex="1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header mhsuccess">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Crear webinar</h4>
            </div>
            <div class="modal-body">
                <form>
                    <!-- <input type="hidden" name="id" id="id_usuario"> -->
                    <div class="row" style="margin-left: 10px;margin-right: 10px;margin-top: 10px;">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Tema/Título</label><a href="#" data-toggle="tooltip"
                                                                                        data-placement="right" title="Debe indicar el tema/título del webinar"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="text" name="tema_webinar" class="form-control" id="tema_webinar">
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-left: 10px;margin-right: 10px;" >
                        <div class="col-md-4">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Fecha del webinar</label><a href="#"
                                                                                              data-toggle="tooltip" data-placement="right"
                                                                                              title="Debe indicar la fecha del webinar" ><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="date" name="fecha_webinar" class="form-control" id="fecha_webinar">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Hora inicio</label><a href="#" data-toggle="tooltip" data-placement="right" title = "Debe indicar la hora de inicio"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="time" name="hora_ini" class="form-control" id="hora_ini">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">  
                                <label style="margin-right: 5px;">Hora fin</label><a href="#" data-toggle="tooltip" data-placement="right" title = "Debe indicar la hora de fin"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="time" class="form-control" name="hora_fin" id="hora_fin">
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-left: 10px;margin-right: 5px;">
                        <div class="col-md-5">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Palabras clave</label><a href="#"
                                                                                           data-toggle="tooltip" data-placement="right"
                                                                                           title="Debe ingresar las palabras claves del webinar"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input class="form-control" name="pclaves_webinar" id="pclaves_webinar">
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Linea de acción</label><a href="#" data-toggle="tooltip" data-placement="right" title = "Debe indicar la linea de acci&oacute;"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <select class="form-control js-select-basic-single"  style="width: 100%" id="sltlineaccion_webinar">
                                    <option value=""></option>
                                    <option value="Apoyo a la Institucionalidad en Salud Pública">Apoyo a la Institucionalidad en Salud Pública</option>
                                    <option value="Apoyo a procesos comunitarios">Apoyo a procesos comunitarios</option>
                                    <option value="Monitoreo de las decisiones políticas">Monitoreo de las decisiones políticas</option>
                                    <option value="Relacionamiento académico con los estudiantes">Relacionamiento académico con los estudiantes</option>
                                    <option value="Transversales"> Transversales</option>
                                </select>
                            </div>
                        </div> 
                        <!-- <div class="col-md-6">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Linea de acción</label><a href="#" data-toggle="tooltip"
                                    data-placement="right" title="Debe indicar la línea de acción"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="text" name="linea_webinar" class="form-control" id="linea_webinar">
                            </div>
                        </div> -->
                    </div>



                    <div class="row" style="margin-left: 10px;margin-right: 5px;">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin-right: 5px;">URL</label><a href="#"
                                                                                data-toggle="tooltip" data-placement="right"
                                                                                title="Debe ingresar la URL del webinar"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input class="form-control" name="url_webinar" id="url_webinar">
                            </div>
                        </div>
                    </div>


                    <div class="row" style="margin-left: 10px;margin-right: 10px;">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Invitados</label><a href="#" data-toggle="tooltip"
                                                                                      data-placement="right" title="Debe indicar los nombres de invitados"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>

                                <button  type="button" onclick="agregarInvitado()" class="btn btn-success btn-sm" id="btnAgregarInvitado"><span class="glyphicon glyphicon-plus"></span></button>
                                <!-- <textarea class="form-control" name="ininvitados" id="ininvitados"></textarea> -->
                            </div>
                        </div>

                    </div>

                    <div class="row" id="addInvitado" style="margin-left: 10px;margin-right: 10px;display:none;" >
                        <div class="col-md-8">
                            <input type="text" name="inInvitado" class="form-control" id="inInvitado">
                        </div>
                        <div class="col-md-4" id="nombreInvitados">
                            <button type="button" class="btn btn-success btn-sm" id="btnAgregar"><span>Agregar Invitado</span></button>
                        </div>
                    </div>


                    <div class="row"style="margin-left: 10px;margin-right: 10px;">
                        <div class="col-md-12">
                            <table id="invitadoTable" class="table table-hover tableestilo">
                                <thead>
                                    <!-- <tr>
                                      
                                      <td><input type="text" class="form-control input-sm" placeholder="Buscar invitado" id="invinput">
                                      </td>
                                    </tr> -->
                                    <tr >

                                        <th  style="width: 450px;" class="text-center">Invitado</th>
                                        <th class="text-center">Opciones</th>

                                        <!-- <th>Enlace</th> -->

                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>

                                        <td>Jose Pablo Escobar Vasco&nbsp;</td>
                                        <td class="text-center">
                                            <!-- <a  data-toggle='modal' href='#md_editarInvitado' style="margin-right: 5px; background:rgb(40, 167, 69);" class="btn btn-succes btn-sm"><i
                                                class="fas fa-edit btnEditI" style="color:white;"></i></a> -->
                                            <button style="margin-right: 5px;" type="button" class="btn btn-danger btn-sm btnBorrarI"><i
                                                    class="fa fa-times"></i></button>
                                        </td>

                                    </tr>
                                </tbody>
                                </tfoot>
                                </tfoot>
                            </table>
                        </div>
                    </div>

                    <div class="row" style="margin-left: 10px;margin-right: 10px;">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Descripción</label><a href="#"
                                                                                        data-toggle="tooltip" data-placement="right"
                                                                                        title="Debe ingresar la descripción del webinar"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <textarea class="form-control" name="descrip_webinar" id="descrip_webinar"></textarea>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="btnEditarAutor">Enviar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="md_registro" role="dialog" tabindex="1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header mhsuccess">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Registrarse</h4>
            </div>
            <div class="modal-body">
                <form>
                    <input type="hidden" name="id" id="id_usuario">
                    <div class="row" style="margin-left: 10px;margin-right: 10px;margin-top: 10px;">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Nombre completo</label><a href="#" data-toggle="tooltip"
                                                                                            data-placement="right" title="Debe indicar su nombre completo" sy><i class="fa fa-question-circle"
                                                                                                     aria-hidden="true"></i></a>
                                <input type="text" name="nom_usuario" class="form-control fecha2" id="nom_usuario">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Correo</label><a href="#" data-toggle="tooltip"
                                                                                   data-placement="right" title="Debe indicar su correo electrónico"><i class="fa fa-question-circle"
                                                                                                     aria-hidden="true"></i></a>
                                <input type="text" name="inEmail" class="form-control" id="inEmail">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="btnEnRegistro">Enviar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="md_mas" role="dialog" tabindex="1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header mhsuccess">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Ver más</h4>
            </div>
            <div class="modal-body">
                <form>

                    <div class="row" style="margin-left: 10px;margin-right: 10px;margin-top: 10px;">
                        <div class="col-md-8">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Enlace del evento</label><a href="#" data-toggle="tooltip"
                                                                                              data-placement="right" title="Debe indicar su correo electrónico"><i class="fa fa-question-circle"
                                                                                                     aria-hidden="true"></i></a>
                                <input type="text" name="inEmail" class="form-control" id="inEmail">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" id="btnEnRegistro">Enviar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>





