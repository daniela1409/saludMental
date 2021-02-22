<%-- 
    Document   : educacionNoFormal
    Created on : 14/02/2021, 10:57:07 PM
    Author     : Carolina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <!--<img src="./img/covidportal.jpeg" alt="abril19" style="width:100%;">-->
    <div class="form-group">
        <div class="row">
            <!-- <ul class="nav nav-tabs"> -->
            <!-- <li class="active" id="liresultados"> -->
            <div class="active" id="liresultados">
                <!-- <ul> -->
                <!-- <li id="btninformef"> -->
                <div class="col-md-6">
                    <h4 style="color: #0F5531;font-weight: bold;"><i class="fas fa-chalkboard-teacher"></i> Educación no formal
                    </h4>
                </div>
                <!-- </li> -->
            </div>
            <!-- </ul> -->

            <!-- </li> -->
        </div>
        <!-- </ul> -->
        <hr />
    </div>
        <div class="row" style="">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Agregar un nuevo curso</label>
                    <button class="btn btn-success btn-sm" data-target="#md_curso" data-toggle="modal" id="btnmas"><span
                            class="glyphicon glyphicon-plus"></span></button>
                </div>
            </div>
        </div>
    <div class="row">
        <div class="col-xs-12 col-md-3">
            <div class="cuadroredondo cuadroredondo-dentro" style="height: 288px;">
                <img src="${pageContext.request.contextPath}/resources/assets/img/diplomados.png" style="vertical-align: middle;width:200px; height:200px;">
                <div class="caption">
                    <h4>Diplomados</h4>
                    <p style="margin-left: 30%"><a href="#" class="btn btn-success" type="button"
                                                   id="btndiplomado">Ver oferta</a></p>

                </div>
            </div>


        </div>
        <div class="col-xs-12 col-md-3">
            <div class="cuadroredondo cuadroredondo-dentro" style="height: 288px;">
                <img src="${pageContext.request.contextPath}/resources/assets/img/cursos presenciales.png" style="vertical-align: middle; width:200px; height:200px;">
                <div class="caption">
                    <h4>Cursos presenciales</h4>
                    <p style="margin-left: 30%"><a href="#" class="btn btn-success" type="button"
                                                   id="btncurpresen">Ver oferta</a></p>

                </div>
            </div>


        </div>
        <div class="col-xs-12 col-md-3">
            <div class="cuadroredondo cuadroredondo-dentro" style="height: 288px;">
                <img src="${pageContext.request.contextPath}/resources/assets/img/cursos online.png" style="vertical-align: middle; width:200px; height:200px;">
                <div class="caption">
                    <h4>Cursos online</h4>
                    <p style="margin-left: 30%"><a href="#" class="btn btn-success" type="button"
                                                   id="btncursonline">Ver oferta</a></p>

                </div>
            </div>


        </div>
        <div class="col-xs-12 col-md-3">
            <div class="cuadroredondo cuadroredondo-dentro" style="height: 288px;">
                <img src="${pageContext.request.contextPath}/resources/assets/img/Moocs.png" style="vertical-align: middle; width:200px; height:200px;">
                <div class="caption">
                    <h4>MOOCS</h4>
                    <p style="margin-left: 30%"><a href="#" class="btn btn-success" type="button" id="btnmoocs">Ver
                            oferta</a></p>

                </div>
            </div>


        </div>


    </div>
    <div class="row" style="margin-top: 10px;display: none;" id="pnldiplomado">
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">Diplomados</div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hovered tableestilo" id="tbdiplomado">
                                <thead>
                                    <tr>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar nombre" id="fechinput" style="width: 100%;">
                                        </td>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar descripción" id="temainput"
                                                   style="width: 100%;"></td>
                                    </tr>
                                    <tr>
                                        <th style="width: 200px;">Nombre del curso</th>
                                        <th style="width: 150px;">Descripci&oacute;n</th>
                                        <th style="width: 120px;">P&uacute;blico objetivo</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Diplomado Planeación y Gestión Pública desde una perspectiva de Género
                                        </td>
                                        <td>Este módulo tiene como propósito acompañar a las y los participantes en
                                            el reconocimiento de las herramientas web, los recursos, estrategias y
                                            actividades de formación, mediante las cuales se llevará a cabo el
                                            proceso de formación. Estamos seguros de que la educación virtual es una
                                            herramienta que nos permitirá desarrollar procesos de formación continua
                                            orientados a la reflexión, el análisis y la vivencia de experiencias
                                            relacionadas con los diferentes problemas de la vida social. Sin
                                            embargo, somos conscientes que la distancia nos fragmenta los cuerpos y
                                            nos limita la calidez de los gestos y las palabras, por lo que las y los
                                            invitamos a vivir este Estar juntos, de un modo diferente.</td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/course/view.php?id=154"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                    <tr>
                                        <td>Diplomado Estrategias para la prevención de las violencias en niños,
                                            niñas y adolescentes </td>
                                        <td>es un proceso de aprendizaje y construcción colectiva para la puesta en
                                            marcha de acciones encaminadas al disfrute y garantía de los derechos de
                                            los niños, niñas y adolescentes de Colombia. Esta propuesta de
                                            formación, realizada en asocio entre la Corporación Cariño y la
                                            Universidad de Antioquia, busca promover espacios de actualización,
                                            intercambio de experiencias y cocreación con personas que acompañan la
                                            infancia y la adolescencia, para dar respuesta a los nuevos retos y
                                            desafíos que exige la sociedad actual en materia de protección integral
                                            y prevención de cualquiera de las formas de violencia que los afectan.
                                        </td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/course/view.php?id=153"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                    <tr>
                                        <td>Diplomado virtual en salud ambiental comunitaria</td>
                                        <td>es un espacio académico diseñado desde la Facultad Nacional de Salud
                                            Pública dirigido a contratistas que trabajan procesos de salud ambiental
                                            con las comunidades; posibles aspirantes a pregrados o posgrados del
                                            área de la salud ambiental y funcionarios que desarrollan actividades de
                                            salud ambiental en sus territorios. Aparece como la posibilidad de
                                            ahondar en diferentes asuntos de la salud ambiental como un encuadre
                                            epistemológico, la salud ambiental en perspectiva de país, herramientas
                                            de intervención de la salud ambiental comunitaria, retos y dificultades
                                            de la salud ambiental en Colombia y algunos indicadores de evaluación y
                                            seguimiento de la salud ambiental comunitaria.</td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/course/view.php?id=8644"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 10px;display: none;" id="pnlcursopres">
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">Cursos presenciales</div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hovered tableestilo" id="tbcursopres">
                                <thead>
                                    <tr>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar nombre" id="fechinput2" style="width: 100%;">
                                        </td>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar descripción" id="temainput2"
                                                   style="width: 100%;"></td>
                                    </tr>

                                    <tr>
                                        <th style="width: 200px;">Nombre del curso</th>
                                        <th>Descripci&oacute;n</th>
                                        <th style="width: 120px;">P&uacute;blico objetivo</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Fundamentos en Auditoria en Salud</td>
                                        <td>Lorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                            eiusmod
                                            tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                            veniam,
                                            quis nostrud exercitation ullamco laboris nisi ut aliquip ex</td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/enrol/index.php?id=151"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 10px;display: none;" id="pnlcursonline">
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">Cursos online</div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hovered tableestilo" id="tbcursoonline">
                                <thead>
                                    <tr>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar nombre" id="fechinput3" style="width: 100%;">
                                        </td>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar descripción" id="temainput3"
                                                   style="width: 100%;"></td>
                                    </tr>

                                    <tr>
                                        <th style="width: 200px;">Nombre del curso</th>
                                        <th>Descripci&oacute;n</th>
                                        <th style="width: 120px;">P&uacute;blico objetivo</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Respuesta hospitalaria ante la pandemia Covid-19 en Antioquia</td>
                                        <td>Este curso virtual está dirigido a directivos y empleados de los
                                            hospitales públicos e IPS del departamento, quienes son los encargados
                                            del manejo hospitalario de la pandemia Covid-19. El curso ofrece
                                            elementos clave para orientar la respuesta hospitalaria en el
                                            Departamento de Antioquia.
                                        </td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/course/view.php?id=150"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                    <tr>
                                        <td>Orientaciones para la acci&oacute;n sociosanitaria a nivel municipal
                                            ante la pandemia COVID-19</td>
                                        <td>Este curso virtual está dirigido a las autoridades sanitarias
                                            municipales: alcaldes, secretarios de salud y miembros de Consejos de
                                            Gobierno, quienes son los encargados de conducir el manejo de la
                                            contingencia derivada de la pandemia Covid-19. El curso ofrece elementos
                                            clave para orientar la acción y el direccionamiento en el nivel
                                            municipal en el Departamento de Antioquia.
                                        </td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/course/view.php?id=149"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row" style="margin-top: 10px;display: none;" id="pnlmoocs">
        <div class="col-md-12">
            <div class="panel panel-success">
                <div class="panel-heading">MOOCS</div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-hovered tableestilo" id="tbmoocs">
                                <thead>
                                    <tr>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar nombre" id="fechinput4" style="width: 100%;">
                                        </td>
                                        <td><input type="text" class="form-control input-sm"
                                                   placeholder="Buscar descripción" id="temainput4"
                                                   style="width: 100%;"></td>
                                    </tr>
                                    <tr>
                                        <th style="width: 200px;">Nombre del curso</th>
                                        <th>Descripci&oacute;n</th>
                                        <th style="width: 120px;">P&uacute;blico objetivo</th>
                                        <th>Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Diplomado Planeación y Gestión Pública desde una perspectiva de Género
                                        </td>
                                        <td>Este módulo tiene como propósito acompañar a las y los participantes en
                                            el reconocimiento de las herramientas web, los recursos, estrategias y
                                            actividades de formación, mediante las cuales se llevará a cabo el
                                            proceso de formación. Estamos seguros de que la educación virtual es una
                                            herramienta que nos permitirá desarrollar procesos de formación continua
                                            orientados a la reflexión, el análisis y la vivencia de experiencias
                                            relacionadas con los diferentes problemas de la vida social. Sin
                                            embargo, somos conscientes que la distancia nos fragmenta los cuerpos y
                                            nos limita la calidez de los gestos y las palabras, por lo que las y los
                                            invitamos a vivir este Estar juntos, de un modo diferente.</td>
                                        <td>Para todo p&uacute;blico</td>
                                        <td><a href="http://saludpublicavirtual.udea.edu.co/moodle/course/view.php?id=154"
                                               class="btn btn-success btn-xs">Ver mas</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="modal" id="md_curso" style="overflow-y: scroll;" role="dialog" tabindex="1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header mhsuccess">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Crear curso</h4>
            </div>
            <div class="modal-body">
                <form>
                    <!-- <input type="hidden" name="id" id="id_usuario"> -->
                    <div class="row" style="margin-left: 10px;margin-right: 10px;margin-top: 10px;">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Nombre</label><a href="#" data-toggle="tooltip"
                                                                                        data-placement="right" title="Debe indicar el tema/título del curso"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="text" name="tema_curso" class="form-control" id="tema_curso">
                            </div>
                        </div>
                    </div>

                    <div class="row" style="margin-left: 10px;margin-right: 10px;" >
                        <div class="col-md-4">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Fecha de inicio</label><a href="#"
                                                                                              data-toggle="tooltip" data-placement="right"
                                                                                              title="Debe indicar la fecha de inicio del curso" ><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input type="date" name="fecha_curso" class="form-control" id="fecha_curso">
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
                                                                                           title="Debe ingresar las palabras claves del curso"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <input class="form-control" name="pclaves_curso" id="pclaves_curso">
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
                       <!--  <div class="col-md-6">
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
                        <div class="col-md-12">
                            <div class="form-group">
                                <label style="margin-right: 5px;">Descripción</label><a href="#"
                                                                                        data-toggle="tooltip" data-placement="right"
                                                                                        title="Debe ingresar la descripción del curso"><i
                                        class="fa fa-question-circle" aria-hidden="true"></i></a>
                                <textarea class="form-control" name="descrip_curso" id="descrip_curso"></textarea>
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




