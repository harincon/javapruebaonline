<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
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
    <title>Ejemplo 9 JSTL</title>
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
    <div class="d-flex justify-content-center align-items-center container">
        <div class="container p-5 bg-light shadow-lg m-3">
            <div class="row">
                <div class="lh-lg d-flex flex-column justify-content-center align-items-center m-3">
                    <h3>Datos personales</h3>
                    <form role="form" name="persona" action="Procesarinfo.jsp" method="POST">
                        <div class="form-group m-3">
                            <label for="nombres">Ingrese su nombre:</label>
                            <input type="text" class="form-control rounded-pill" name="nombres" id="nombres" placeholder="Nombre">
                        </div>
                        <div class="form-group m-3">
                            <label for="apellido1">Ingrese su primer apellido:</label>
                            <input type="text" class="form-control rounded-pill" id="apellido1" name="apellido1" placeholder="Primer apellido">
                        </div>
                        <div class="form-group m-3">
                            <label for="apellido2">Ingrese su segundo apellido:</label>
                            <input type="text" class="form-control rounded-pill" id="apellido2" name="apellido2" placeholder="Segundo apellido">
                        </div>
                        <div class="form-group m-3">
                            <label for="edad">Ingrese su edad:</label>
                            <input type="text" class="form-control rounded-pill" name="edad" id="edad" placeholder="Edad">
                        </div>
                        <div class="d-flex justify-content-center align-items-center">
                            <input type="submit" class="btn btn-outline-success rounded-pill m-2" value="Enviar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>
</html>
