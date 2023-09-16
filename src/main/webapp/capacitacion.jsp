<%--
  Created by IntelliJ IDEA.
  User: Ganon
  Date: 13-07-2023
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<body>

<h1 class="text-center">Capacitacion</h1>
<div class="b-example-divider mt-5"></div>
<div class="text-center">
    <button id="mostrarInfo" type="button" class="btn btn-dark">Mostrar Info</button>
    <div id="info" class="alert alert-success mt-3" role="alert" style="display:none">
        Identificador: ${identificador}<br>
        Rut del Cliente: ${rutCliente}<br>
        Dia: ${dia}<br>
        Hora: ${hora}<br>
        Lugar: ${lugar}<br>
        Duracion: ${duracion}<br>
        Cantidad de Asistentes: ${cantidadAsistentes}
    </div>
</div>

<form id="formulario" action="svCapacitacion" method="POST">
    <div class="container">
        <!-- Name input -->
        <div class="form-outline mb-4">
            <label class="form-label" for="identificador">Identificador</label>
            <input name="identificador" type="text" id="identificador" class="form-control"/>
            <label class="d-none text-danger" id="alertaIdentificador">Falta agregar el identificador</label>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="rut_cliente">Rut Cliente</label>
            <input name="rutCliente" type="text" id="rut_cliente" class="form-control"/>
            <label class="d-none text-danger" id="alertaRut_cliente">Falta agregar el rut del cliente</label>
        </div>

        <div class="form-group">
            <label for="Dia">Dia</label>
            <select name="dia" class="form-control" id="Dia">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                <option>21</option>
                <option>22</option>
                <option>23</option>
                <option>24</option>
                <option>25</option>
                <option>26</option>
                <option>27</option>
                <option>28</option>
                <option>29</option>
                <option>30</option>
                <option>31</option>
            </select>
        </div>
        <div class="form-group">
            <label for="Hora">Hora</label>
            <select name="hora" class="form-control" id="Hora">
                <option>08:00</option>
                <option>09:00</option>
                <option>10:00</option>
                <option>11:00</option>
                <option>12:00</option>
                <option>13:00</option>
                <option>14:00</option>
                <option>15:00</option>
                <option>16:00</option>
                <option>17:00</option>
                <option>18:00</option>
                <option>19:00</option>
                <option>20:00</option>
                <option>21:00</option>
                <option>22:00</option>
                <option>23:00</option>
            </select>
        </div>

        <div class="form-outline mb-4">
            <label class="form-label" for="lugar">Lugar</label>
            <input name="lugar" type="text" id="lugar" class="form-control"/>
            <label class="d-none text-danger" id="alertaLugar">Falta agregar el lugar</label>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="duracion">Duracion</label>
            <input name="duracion" type="text" id="duracion" class="form-control"/>
            <label class="d-none text-danger" id="alertaDuracion">Falta agregar la Duracion</label>
        </div>
        <div class="form-outline mb-4">
            <label class="form-label" for="cantidadAsistentes">Cantidad de Asistentes</label>
            <input name="cantidadAsistentes" type="text" id="cantidadAsistentes" class="form-control"/>
            <label class="d-none text-danger" id="alertaCantidadAsistentes">Falta agregar la cantidad de
                Asistentes</label>
        </div>

        <!-- Submit button -->
        <button id="botonCrear" type="submit" class="btn btn-dark btn-block mb-4">Crear</button>
        <div class="center" style="margin-top:10px; margin-bottom: 20px;">
            <label class="d-none text-success " id="C">Su capacitacion ha sido creada</label>
        </div>
    </div>
</form>

<script>

    var divVisible = false;
    document.getElementById('mostrarInfo').addEventListener('click', function () {
        var div = document.getElementById('info');
        if (divVisible) {
            div.style.display = 'none';
            divVisible = false;
            document.getElementById('mostrarInfo').textContent = 'Mostrar Info'
        } else {
            div.style.display = 'block';
            divVisible = true;
            document.getElementById('mostrarInfo').textContent = 'Cerrar Info'
        }

    });
</script>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
</html>