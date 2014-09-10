<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- 
    Document   : response
    Created on : 10/09/2014, 01:47:50 PM
    Author     : MAYI
--%>
<sql:query var="director" dataSource="jdbc/TecResVicente">
    SELECT Nombre FROM Director WHERE Director.Carrera = ? <sql:param value="${param.Materias}"/>
</sql:query>
<c:set var="dire" value="${director.rows[0]}"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><table border="1">
                <thead>
                    <tr>
                        <th>Director</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${dire.Nombre}</td>
                    </tr>
                </tbody>
            </table>
        </h1>
    </body>
</html>
