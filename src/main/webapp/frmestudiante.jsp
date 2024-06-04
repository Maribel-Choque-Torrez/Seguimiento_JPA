<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seguimiento</title>
        <link rel="stylesheet" type="text/css" href="css/styl.css">
    </head>
    <body>
        <%-- Convertir la fecha --%>
        <fmt:formatDate value="${estudiante.fechaNacimiento}" pattern="yyyy-MM-dd" var="fechaForm" />
        <div class="centrado">SEGUIMIENTO DE ESTUDIANTES<br>
            Nombre: Maribel Carola Choque Torrez<br>
            C.I.: 10930634
        </div>
        <h1>REGISTRAR</h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${estudiante.id == null ? 0 : estudiante.id}" />
            <label for="nombre">NOMBRE:</label>
            <input type="text" name="nombre" id="nombre" value="${estudiante.nombre}" required /><br />
            <label for="apellidos">APELLIDOS:</label>
            <input type="text" name="apellidos" id="apellidos" value="${estudiante.apellidos}" required /><br />
            <label for="email">EMAIL:</label>
            <input type="email" name="email" id="email" value="${estudiante.email}" required /><br />
            <label for="fechaNacimiento">FECHA DE NACIMIENTO:</label>
            <input type="date" name="fechaNacimiento" id="fechaNacimiento" value="${fechaForm}" required /><br />
            <input type="submit" value="Guardar"  />
        </form>
       
    </body>
</html>