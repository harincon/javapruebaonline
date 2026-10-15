<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/estilos.css">
    <link rel="shortcut icon" href="../img/jsp.png" type="image/x-icon">
    <title>Etiquetas JSTL</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" id="menu">
        <div class="container">
            <a class="navbar-brand" href="../index.jsp">
                <span>Ejercicios JSTL</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                </ul>
                <form class="d-flex">
                    <button class="btn btn-success" type="button"
                        onclick="window.location.href='../index.jsp'">Volver al Inicio</button>
                </form>
            </div>
        </div>
    </nav>
    <div id="contenedor" class="d-flex flex-column justify-content-between align-items-center">
        <h1>Datos de una Persona</h1>
        <div class="container Larger shadow p-3 mb-1 bg-white d-flex flex-row justify-content-around align-items-center"
            style="width: 25rem">
            <form action="Procesarif.jsp" name="persona" method="post"
                class="d-flex flex-column justify-content-center align-items-center">
                <div id="titulo" class="mt-3">
                    <center><h4>Ingrese los datos de la persona</h4></center>
                    <hr>
                </div>
                <div id="numeros">
                    <div class="input-group-text ">
                        Nombre: <input type="text" name="nombre" id="nombre" placeholder="Digite el Nombre"
                            class="form-control rounded-pill" style="text-align: center;">
                    </div>
                    <div class="input-group-text ">
                        Primer Apellido: <input type="text" name="apellido1" id="apellido1" placeholder="Primer Apellido"
                            class="form-control rounded-pill" style="text-align: center;">
                    </div>
                    <div class="input-group-text ">
                        Segundo Apellido: <input type="text" name="apellido2" id="apellido2" placeholder="Segundo Apellido"
                            class="form-control rounded-pill" style="text-align: center;">
                    </div>
                </div>
                <div class="d-flex flex-column justify-content-center">
                    <br>
                    <div class="d-flex justify-content-center align-items-center">
                        <button type="submit" class="btn btn-success" name="enviar">Enviar Informacion</button>
                    </div>
                    <br>
                    <c:if test="${not empty param.error}">
                        <div class="alert alert-danger">
                            <strong>Error!</strong> <c:out value="${param.error}"/>
                            <br>
                        </div>
                    </c:if>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>
</html>
