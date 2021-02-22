<%-- 
    Document   : videoteca
    Created on : 12/02/2021, 01:18:04 AM
    Author     : Carolina
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  


        <div class="form-group">
            <div class="row">
                <div class="active" id="liresultados">
                    <div class="col-md-6" style="">
                        <h4 style="color: #0F5531;font-weight: bold;"><i class="fas fa-play-circle"></i> Videos</h4>
                    </div>
                </div>
            </div>
            <hr />
        </div>

        <div id="formdocumentacion">
            <div class="row" style="">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Agregar video</label>
                        <button class="btn btn-success btn-sm" data-target="#md_crearVideo" data-toggle="modal"
                            id="btnmas"><span class="glyphicon glyphicon-plus"></span></button>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <table class="table table-hover tableestilo" id="tblvideo">

                    <thead>
                        <tr>
                            <td><input type="text" class="form-control input-sm" placeholder="Buscar fecha"
                                    id="fechinput"></td>
                            <td><input type="text" class="form-control input-sm" placeholder="Buscar tema"
                                    id="temainput"></td>
                            <td><input type="text" class="form-control input-sm" placeholder="Buscar invitado"
                                    id="invinput"></td>
                        </tr>
                        <tr>
                            <th>Fecha</th>
                            <th>Titulo</th>
                            <th>Descripción</th>
                            <th>Video</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="width: 140px;"></td>
                            <td style="width: 291px;"></td>
                            <td style="width: 153px;"></td>
                            <td style="width: 70px;"></td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    
    <div class="modal fade" id="md_video" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header mhsuccess">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class='video-responsive'>
                        <iframe id="frameVideo" src="https://www.youtube.com/embed/xPWgGA8PXxM" frameborder="0" allow=""
                            allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal" id="md_crearVideo" role="dialog" tabindex="1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header mhsuccess">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Crear video</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <input type="hidden" name="id" id="id_usuario">
                        <div class="row" style="margin-left: 10px;margin-right: 10px;margin-top: 10px;">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label style="margin-right: 5px;">Fecha del video</label><a href="#"
                                        data-toggle="tooltip" data-placement="right"
                                        title="Debe indicar la fecha del video" sy><i class="fa fa-question-circle"
                                            aria-hidden="true"></i></a>
                                    <input type="date" name="fecha_video" class="form-control " id="fecha_grab">
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label style="margin-right: 5px;">Título</label><a href="#" data-toggle="tooltip"
                                        data-placement="right" title="Debe indicar el título del video"><i
                                            class="fa fa-question-circle" aria-hidden="true"></i></a>
                                    <input type="text" name="tituloVideo" class="form-control" id="tituloVideo">
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-left: 10px;margin-right: 10px;">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label style="margin-right: 5px;">Productor(es)</label><a href="#"
                                        data-toggle="tooltip" data-placement="right"
                                        title="Debe indicar el nombre del productor del video"><i
                                            class="fa fa-question-circle" aria-hidden="true"></i></a>
                                    <input class="form-control" name="inproductor" id="inproductor">
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-left: 10px;margin-right: 10px;">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label style="margin-right: 5px;">URL</label><a href="#" data-toggle="tooltip"
                                        data-placement="right" title="Debe agregar la URL del video"><i
                                            class="fa fa-question-circle" aria-hidden="true"></i></a>
                                    <input class="form-control" name="urlVideo" id="urlVideo">
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-left: 10px;margin-right: 10px;">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label style="margin-right: 5px;">Descripción</label><a href="#"
                                        data-toggle="tooltip" data-placement="right"
                                        title="Debe indicar la descripción del video"><i class="fa fa-question-circle"
                                            aria-hidden="true"></i></a>
                                    <textarea class="form-control" name="descripcionVideo"
                                        id="descripcionVideo"></textarea>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" id="btnenviarrad">Enviar</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

