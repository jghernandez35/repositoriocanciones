<%-- 
    Document   : data
    Created on : 19/04/2016, 03:20:02 PM
    Author     : Acer_White
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTA DE DATOS BASE DE DATOS JOSE</title>
    </head>
    <body>
        <h1>Hello World JOSE te dice Spring MVC!</h1>
        <a href="#">Agregar</a>
        <table style="border-collapse: collapse" cellpadding="7px" border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Apelido</th>
                <th>edad</th>
            </tr>

            <c:forEach items="${lst}" var="p">
                <tr>
                    <td>${p.id}</td>
                    <td>${p.nombre}</td>
                    <td>${p.apellido}</td>
                    <td>${p.edad}</td>

                    <td>
                        <a href="#">
                            Edit </a>
                        <a href="#" onclick="return confirm('Are you sure?')">Remove</a>
                    </td>
                </tr>
            </c:forEach>

        </table>        
    </body>
</html>
