<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="shortcut icon" href="img/jsp.png" type="image/x-icon">
    <title>Ejercicios JSTL</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" id="menu">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <span>Ejercicios JSTL</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="index.jsp#seccion-ejercicios">Ejercicios</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <header class="hero">
        <div class="container">
            <h1>Ejercicios JSTL</h1>
            <p>Pr&aacute;ctica con JSP Standard Tag Library: l&oacute;gica de presentaci&oacute;n, formularios,
               acceso a base de datos e internacionalizaci&oacute;n.</p>
            <div class="tags">
                <span class="tag">core</span>
                <span class="tag">fmt</span>
                <span class="tag">sql</span>
                <span class="tag">JSTL 1.2</span>
            </div>
        </div>
    </header>

    <main class="container ejercicios" id="seccion-ejercicios">
        <div class="row g-4">
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio01-primer-ejemplo/Eje1.jsp">
                    <span class="ej-num">EJERCICIO 01</span>
                    <h3>Primer ejemplo</h3>
                    <p>Etiqueta c:out y expresiones EL.</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio02-datos/Datos.jsp">
                    <span class="ej-num">EJERCICIO 02</span>
                    <h3>Datos</h3>
                    <p>Capturar los datos</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio03-set/set1.jsp">
                    <span class="ej-num">EJERCICIO 03</span>
                    <h3>Uso del set</h3>
                    <p>Usando la etiqueta set</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio04-if/Datosif.jsp">
                    <span class="ej-num">EJERCICIO 04</span>
                    <h3>Datosif</h3>
                    <p>Capturar los datos con if</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio05-choose-lenguaje/lenguaje.jsp">
                    <span class="ej-num">EJERCICIO 05</span>
                    <h3>Lenguaje</h3>
                    <p>Especificada en el atributo test se eval&uacute;e si cierto</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio06-catch/catch.jsp">
                    <span class="ej-num">EJERCICIO 06</span>
                    <h3>Catch</h3>
                    <p>Usando la sentencia Catch</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio07-foreach/foreach.jsp">
                    <span class="ej-num">EJERCICIO 07</span>
                    <h3>Foreach</h3>
                    <p>Usando la sentencia Foreach</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio08-fortokens/ForTokens.jsp">
                    <span class="ej-num">EJERCICIO 08</span>
                    <h3>ForTokens</h3>
                    <p>Usando ForTokens</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio09-base-de-datos/Informacion.jsp">
                    <span class="ej-num">EJERCICIO 09</span>
                    <h3>Base de datos</h3>
                    <p>Usando Base de datos</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
            <div class="col-md-6 col-xl-4">
                <a class="ej-card" href="ejercicio10-internacionalizacion/internacionalizacion.jsp">
                    <span class="ej-num">EJERCICIO 10</span>
                    <h3>Internacionalizaci&oacute;n</h3>
                    <p>Formato e idiomas</p>
                    <span class="ej-go">Visualizar ejercicio &rarr;</span>
                </a>
            </div>
        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
        crossorigin="anonymous"></script>
</body>
</html>
