<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!int valor = 0;%><%--Declarando variable tipo int--%>
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
    <center>
        <div class="container Larger shadow p-3 mb-1 bg-white " style="width: 25rem">
            <h1>Uso de etiqueta catch</h1>
            <div class="container">
                <div class="row"> &nbsp;
                </div>
                <div class="panel panel-primary">
                    <c:catch var="error01">
                        <%
                            valor = Integer.parseInt(request.getParameter("parametro"));
                        %>
                    </c:catch>
                    <c:if test="${not empty error01}">
                        <div class="alert alert-danger">
                            <strong>Se produjo un error:</strong> ${error01}
                            <br>
                        </div>
                    </c:if>
                    <c:if test="${valor!=0 && empty error01}">
                        <div class="alert alert-info">
                            <strong>Valor recibido: <%out.print(valor);%></strong>
                            <br>
                        </div>
                    </c:if>
                    <form role="form">
                        <input type="hidden" name="parametro" value="prueba"/>
                        <input type="submit" class="btn btn-secondary" value="Enviar 'prueba'"/>
                    </form>
                    <form role="form">
                        <input type="hidden" name="parametro" value="1234"/>
                        <input type="submit" class="btn btn-secondary" value="Enviar '1234'"/>
                    </form>
                    <form role="form">
                        <input type="submit" class="btn btn-secondary" value="No enviar el par&aacute;metro"/>
                    </form>
                </div>
            </div>
            <div>
                <a href="../index.jsp" class="btn btn-success">Volver</a>
            </div>
        </div>
    </center>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>
</html>
