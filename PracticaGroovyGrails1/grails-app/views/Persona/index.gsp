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
<div>
    <div ><g:link controller="persona" action="create" >Crear Persona</g:link>
</div>
<br>
<br>
<table>
    <thead>
    <tr>
        <td><strong>Nombre Persona</strong></td>
        <td><strong>Apellido Paterno</strong></td>
        <td><strong>Apellido Materno</strong></td>
        <td><strong>Correo Electronico</strong></td>
        <td><strong>Fecha de Nacimiento</strong></td>
        <td><strong>Edad</strong></td>
        <td><strong>Descripción</strong></td>
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