<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seguimiento</title>
        <link rel="stylesheet" type="text/css" href="css/styl.css">
    </head>
        <div class="centrado">SEGUIMIENTO DE ESTUDIANTES<br>
            Nombre: Maribel Carola Choque Torrez<br>
            C.I.: 10930634
        </div>
    <h1>SEGUIMIENTO</h1>
        <a href="MainController?action=nuevo" class="btn-nuv">Nuevo Estudiante</a>
        <br>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>APELLIDOS</th>
                <th>EMAIL</th>
                <th>FECHA DE NACIMIENTO</th>
                <th></th>
                <th></th>
            </tr>
            
            <c:forEach var="estudiante" items="${estudiantes}">
                <tr>
                    <td>${estudiante.id}</td>
                    <td>${estudiante.nombre}</td>
                    <td>${estudiante.apellidos}</td>
                    <td>${estudiante.email}</td>
                    <td>
                        <!-- Formateamos de fecha -->
                        <fmt:formatDate value="${estudiante.fechaNacimiento}" pattern="yyyy-MM-dd" var="fechaForm" />
                        ${fechaForm}
                    </td>
                    <td><a href="MainController?action=editar&id=${estudiante.id}">Editar</a></td>
                    <td><a href="MainController?action=eliminar&id=${estudiante.id}" onclick="return confirm('¿Está seguro?....');" >Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
