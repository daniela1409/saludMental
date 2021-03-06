<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="card" style="padding: 10px">
    <div class="card-header " style="margin-bottom: 10px;"><h3>Agregar usuario</h3></div>
    <div class="card-body">
        <form method="post" id="user" >
            
            <div class="row">
                <div class="col-md-4">
                   <div class="form-group">
                       <label>Persona</label><a href="#" data-toggle="tooltip" data-placement="right" title = "Debe seleccionar el nombre de la persona" style="margin-left: 5px;"><i class="fa fa-question-circle" aria-hidden="true"></i></a><br>
                       <select  name="persona" id="selpersona" class="js-select-basic-single" style="width: 100%; height: 32px">
                       <option value = "" ></option>
                            <c:forEach var="persona" items="${personas}">
                                
                                <option value="${persona.getIdPersona()}">${persona.nombreApellido()}</option>
                                
                            </c:forEach>
                            
                       </select>
                   </div>
                </div>
                
                <div class="col-md-4">
                   <div class="form-group">
                       <label>Perfil</label><a href="#" data-toggle="tooltip" data-placement="right" title = "Debe seleccionar el nombre de la persona" style="margin-left: 5px;"><i class="fa fa-question-circle" aria-hidden="true"></i></a><br>
                       <select  name="perfil" id="selPerfil" class="js-select-basic-single" style="width: 100%; height: 32px">
                       <option value = "" ></option>
                            <c:forEach var="rol" items="${roles}">
                                
                                <option value="${rol.getIdRol()}">${rol.getNombre()}</option>
                                
                            </c:forEach>
                            
                       </select>
                   </div>
                </div>
                
                <div class="col-md-4" >
                    <div class="form-group">
                        <label>Nombre de usuario</label><a href="#" data-toggle="tooltip" data-placement="right" style="margin-left: 5px;"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
                        <input class="form-control form-control-sm"name="nombreUsuario" id="us_usuario">                   
                    </div>
                </div>
            </div>
                       
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Contraseña</label><a href="#" data-toggle="tooltip" data-placement="right" title = "debe crear contraseña" style="margin-left: 5px;"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
                        <input class="form-control form-control-sm" type="password" name="clave" id="us_clave" maxlength="20">                   
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">  
                        <label>Confirmar contraseña</label><a href="#" data-toggle="tooltip" data-placement="right" title = "debe escribir la contraseña para confirmar" style="margin-left: 5px;"><i class="fa fa-question-circle" aria-hidden="true"></i></a>
                        <input class="form-control form-control-sm" type="password" name="clavecon" id="us_clavecon" maxlength="20">                
                    </div>
                </div>
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button class="btn btn-success" type="button" onclick="mostrar()">Guardar</button>
            <!--<input type="submit" value="Submit">-->
        </form>
    </div>
    
</div>
  
    <script>
        
        $(document).ready(function () {
            
            $('#user').submit(function (evt) {
                evt.preventDefault();
                var formData = new FormData();
                formData.append("persona", $("#selpersona").val());
                formData.append("nombreUsuario", $("#nombreUsuario").val());
                formData.append("perfil", $("#us_usuario").val());
                formData.append("clave", $("#us_clave").val());
                

                $.ajax({
                    type: "POST",
                    url: contextPath + "/administracion/mostrarEditarUsuario/editar",
                    data: formData,
                    processData: false,
                    contentType: false,
                    beforeSend: function (xhr) {
                        xhr.setRequestHeader("X-CSRF-Token", $('input[name=_csrf]').val());
                    },
                    success: function (response) {
                        var respuesta = JSON.parse(response);
                        alert("exito")
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert("Error al almacenar usuario.");
                    }});
            });
        });
        
        var i = 0;
        function mostrar() {
           
           if($("#us_usuario").val()===""){
                alert("Debe indicar el nombre de usuario");
                return;
            }
            else if($("#selPerfil").val()===""){
                alert("Debe indicar el tipo de perfil");
                return;
            }
            else if($("#us_clave").val()===""){
                alert("Debe indicar la clave");
                return;
            }
            else if($("#us_clavecon").val()===""){
                alert("Debe indicar la clave");
                return;
            }
            else if($("#us_clave").val().length < 6){
                alert("La contraseña debe ser mayor a 6 carácteres");
                $("#us_clave").val("");
                $("#us_clavecon").val("");
                return;
            }
            else if($("#us_clave").val()!==$("#us_clavecon").val()){
                alert("Las contraseñas deben coincidir");
                $("#us_clave").val("");
                $("#us_clavecon").val("");
                return;
                
            }
           else{
               //console.log( $('#usuario').val());
               $('#user').submit();
            }    
       
        }   
    </script>

