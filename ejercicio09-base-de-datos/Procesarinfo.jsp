<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/jspf/conexion.jspf" %>
<fmt:requestEncoding value="UTF-8"/>
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
                        onclick="window.location.href='Informacion.jsp'">ATRAS</button>
                </form>
            </div>
        </div>
    </nav>
    <c:set var="nombres" value="${param.nombres}"/>
    <c:set var="apellido1" value="${param.apellido1}"/>
    <c:set var="apellido2" value="${param.apellido2}"/>
    <c:set var="edad" value="${param.edad}"/>
    <c:catch var="errorBD">
        <sql:update var="insertar" dataSource="${empleados}">
            insert into empleados (nombres,apellido1,apellido2,edad) values (?,?,?,?)
            <sql:param value="${nombres}"/>
            <sql:param value="${apellido1}"/>
            <sql:param value="${apellido2}"/>
            <sql:param value="${edad}"/>
        </sql:update>
        <sql:query var="result" scope="request" dataSource="${empleados}">
            select * from empleados;
        </sql:query>
    </c:catch>
    <div class="d-flex justify-content-center align-items-center container" id="contenedor">
        <div class="container p-5 bg-light shadow-lg m-3">
            <c:if test="${not empty errorBD}">
                <div class="alert alert-danger">
                    <strong>Error de base de datos:</strong> <c:out value="${errorBD.message}"/>
                </div>
            </c:if>
            <div class="d-flex flex-column justify-content-center">
                <div>
                    <div class="d-flex justify-content-center align-items-center mt-2 ">
                        <table id="tablita" class="table table-success table-striped">
                            <thead>
                                <tr>
                                    <th width="100px">Id</th>
                                    <th width="300px">Nombre</th>
                                    <th width="100px">Apellidos</th>
                                    <th width="100px">Edad</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="fila" items="${result.rows}">
                                    <tr>
                                        <td><c:out value="${fila.id}" /></td>
                                        <td><c:out value="${fila.nombres}" /></td>
                                        <td><c:out value="${fila.apellido1} ${fila.apellido2}" /></td>
                                        <td><c:out value="${fila.edad}" /></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>
</html>
