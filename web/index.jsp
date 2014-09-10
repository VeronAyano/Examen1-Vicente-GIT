<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%-- 
    Document   : index
    Created on : 10/09/2014, 01:03:31 PM
    Author     : MAYI
--%>
<sql:query var="materias" dataSource="jdbc/TecResVicente">
    SELECT ClaveCarrera, NombreCarrera FROM Carrera
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenidos!</title>
    </head>
    <body>
        <table border="1"><form action="response.jsp" method="GET">
            
            <thead>
                <tr>
                    <th>Matrícula:</th>
                    <th>A01232266</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Nombre:</td>
                    <td>Vicente Reyes Avila</td>
                </tr>
                <tr>
                    <td>Materias:</td>
                    <td>
                        <select name="Materias">
                            <c:forEach var="row" items="${materias.rows}">
                                    <option value="${row.ClaveCarrera}">${row.NombreCarrera}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Buscar" /></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </form>
    </body>
</html>
