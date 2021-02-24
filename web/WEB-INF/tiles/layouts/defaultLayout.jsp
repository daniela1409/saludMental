
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Salud Mental</title>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/css/bootstrap.min.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/css/style.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/fontawesome-free-5.9.0/css/all.min.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/css/dataTables.bootstrap.min.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/css/jquery-comments.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/fontawesome-free-5.9.0/css/all.min.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/css/jquery.datetimepicker.min.css"/>'>
        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/assets/jquery-ui/jquery-ui.min.css"/>'>
        
        <script type="text/javascript" src='<c:url value="/resources/assets/jsTables/jquery-3.5.1.js"/>'></script>
        <script src='<c:url value="/resources/assets/js/bootstrap.min.js"/>'></script>
        <script src='<c:url value="/resources/js/jquery-1.12.4.min.js"/>'></script>
        <script src='<c:url value="/resources/assets/jquery-ui/jquery-ui.min.js"/>'></script>
        <script type="text/javascript" src='<c:url value="/resources/assets/jsTables/jquery.dataTables.min.js"/>'></script>
        <script type="text/javascript" src='<c:url value="/resources/assets/jsTables//dataTables.bootstrap4.min.js"/>'></script>
        

    </head>

    <body>
    <header>
        <div id="custom-head" style="background-color: #ececec;">
            <div class="container" style="padding-left:50px">
                <div class="row">
                    <div class="col-md-3">
                        <img src='<c:url value='/resources/assets/img/logofnsp.png'/>'
                            alt="Universidad de Antioquia - Facultad Nacional de Salud Pública" style="width: 230px;">
                    </div>
                    <div class="col-md-5" align="right">S&iacute;guenos:&nbsp;&nbsp;
                        <a class="fab fa-facebook-f circle facebook" data-toggle="tooltip" data-placement="bottom"
                            title="Facebook"></a>
                        <a class="fab fa-twitter circle twitter" data-toggle="tooltip" data-placement="bottom"
                            title="Twitter"></a>
                        <a class="fab fa-youtube circle youtube" data-toggle="tooltip" data-placement="bottom"
                            title="Youtube"></a>
                    </div>
                    <div class="col-md-4" align="right">
                        <form class="navbar-form navbar-left">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Escriba aquí su búsqueda">
                            </div>
                            <button type="submit" class="btn btn-success">Buscar</button>
                        </form>
                    </div>
                            
                         
                    <c:choose>
                        <c:when test="${!pageContext.request.userPrincipal.authenticated}">
                            <div class="col-md-4">
                                <div id="cssmenu">
                                    <ul>
                                        <li class="active"><a href="#">Ingresar</a>
                                            <ul>
                                                <li><a href="iniciarsesion.html">Iniciar sesion</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            
                            <div class="col-md-4">
                                <div id="cssmenu">
                                    <ul>
                                        <li class="active"><a href="#"><i class="fas fa-user fa-1x" aria-hidden="true"></i> ${pageContext.request.userPrincipal.getPrincipal().username}</a>
                                            <ul>
                                                <li><a href="${pageContext.request.contextPath}/logout">Cerrar sesión</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                                            
                        </c:otherwise>  
                    </c:choose>
                    
                </div>
            </div>
        </div>
    </header>

        <section id="nav-container" class="container-fluid" style="width: 100%;">
            <div class="container">
                <nav class="navbar navbar-default ">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" style="padding-right:px;" id="myNavbar">
                            
                            <ul class="nav navbar-nav ">
                                <li>
                                    <a style="color:white" href="indexSalud.html" role="button" aria-haspopup="true" aria-expanded="false">
                                        Inicio
                                    </a>
                                </li>
                                <c:forEach var="privilegio" items="${privilegios}" >
                            
                                    <c:set var="priv" value="${privilegio}"></c:set>
                                    <c:choose>
                                        <c:when test="${priv == 'SUPER_ADMINISTRADOR' }">
                                             <c:set var="priv" value="1"></c:set>
                                        </c:when> 
                                        <c:otherwise>
                                            <c:set var="priv" value="0"></c:set>

                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>   
                                
                                <c:if test="${priv=='1'}">
                                    <li class='dropdown'>
                                        <a href='#' class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                            Administrar<span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu">

                                            <li><a href='${pageContext.request.contextPath}/administracion/indexUsuario'>Usuarios</a></li>

                                        </ul>
                                    </li>
                                </c:if>
                                
                                <li class="dropdown">
                                    <a style="color:white" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        Apropiación social <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="webinar.html"><i class=""></i>Webinars</a></li>
                                        <li><a href="videoteca.html"><i class=""></i>Videoteca</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a style="color:white" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        Salud mental online<span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href=""><i class=""></i>Telesalud</a></li>
                                        <li><a href=""><i class=""></i>Línea de la felicidad</a></li>
                                        <li><a href=""><i class=""></i>App SAMU</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a style="color:white" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        Educación<span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="educacionNoFormal.html"><i class=""></i>Educación no formal</a></li>

                                    </ul>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li class="dropdown">
                                    <a style="color:white" href="" role="button" data-toggle="dropdown" aria-haspopup="true"
                                       aria-expanded="false">
                                        Datos & software<span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="software.html"><i class=""></i>Software</a></li>
                                        <li><a href="datos.html"><i class=""></i>Datos</a></li>
                                        <li><a href="modelos.html"><i class=""></i>Modelos</a></li>
                                        <li><a href="analisis.html"><i class=""></i>Análisis</a></li>
                                    </ul>
                                </li>
                                <li><a id='ocultaMain' style="color:aliceblue; " class='btn btn-sm-1' role='button' aria-haspopup='true'
                                       aria-expanded='false'><span id="abajo" class="fa fa-angle-double-up"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </section>
        

        <section id="site-content">
            <tiles:insertAttribute name="body" />
        </section>
        
        
        <footer id="footer">
           <tiles:insertAttribute name="footer" />
        </footer>


        
        
        
        <script type="text/javascript" src='<c:url value="/resources/assets/js/funciones.js"/>'></script>

    </body>

</html>