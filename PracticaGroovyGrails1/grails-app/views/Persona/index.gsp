<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 08/10/2015
  Time: 11:43 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ejercicio Persona</title>
</head>

<body>
<g:link controller="persona" action="create" >Crear Persona</g:link>
<br>
<table>
    <thead>
    <tr>
        <td>Nombre Persona</td>
        <td>Apellido Paterno</td>
        <td>Apellido Materno</td>
        <td>Correo Electronico</td>
        <td>Fecha de Nacimiento</td>
        <td>Edad</td>
        <td>Descripcion</td>
    </tr>
    </thead>
    <tbody>
    <g:each in="${personas}" var="persona">
        <tr>
            <td>${persona.nombre}</td>
            <td>${persona.apellidoPaterno}</td>
            <td>${persona.apellidoMaterno}</td>
            <td>${persona.email}</td>
            <td>${persona.fechaNacimiento}</td>
            <td>${persona.edad}</td>
            <td>${persona.descripcion}</td>
        </tr>
    </g:each>
    </tbody>
</table>

</body>
</html>