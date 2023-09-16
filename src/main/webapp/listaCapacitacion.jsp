<%@ page import="models.Capacitacion" %>
<%@ page import="models.Contenedor" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Ganon
  Date: 14-07-2023
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h1 class="text-center">Capacitaciones</h1>
<hr class="hr" style="height: 20px"/>
<table class="table table-dark">
    <thead>
    <tr>
        <th scope="col">Identificador</th>
        <th scope="col">Rut Cliente</th>
        <th scope="col">Dia</th>
        <th scope="col">Hora</th>
        <th scope="col">Lugar</th>
        <th scope="col">Duracion</th>
        <th scope="col">Cantidad Asistentes</th>
    </tr>
    </thead>

    <%
        List<Capacitacion> capacitaciones = Contenedor.listaCapacitacion;
        for (Capacitacion capacitacion : capacitaciones) {
    %>
    <tbody>
    <tr>
        <td><%= capacitacion.getIdentificador()%>
        </td>
        <td><%= capacitacion.getRutCliente()%>
        </td>
        <td><%= capacitacion.getDia()%>
        </td>
        <td><%= capacitacion.getHora()%>
        </td>
        <td><%= capacitacion.getLugar()%>
        </td>
        <td><%= capacitacion.getDuracion()%>
        </td>
        <td><%= capacitacion.getCantidadAsistentes()%>
        </td>
    </tr>
    </tbody>
    <%}%>

</table>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</html>
