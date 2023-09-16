package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Capacitacion;
import models.Contenedor;

import java.io.IOException;

public class SvCapacitacion extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String identificador = request.getParameter("identificador");
        String rutCliente = request.getParameter("rutCliente");
        String dia = request.getParameter("dia");
        String hora = request.getParameter("hora");
        String lugar = request.getParameter("lugar");
        String duracion = request.getParameter("duracion");
        String cantidadAsistentes = request.getParameter("cantidadAsistentes");

        Capacitacion capacitacion = new Capacitacion(identificador, rutCliente, dia, hora, lugar, duracion, cantidadAsistentes);
        Contenedor.agregarCapacitacion(capacitacion);

        request.setAttribute("capacitacion", capacitacion);
        RequestDispatcher rd = request.getRequestDispatcher("/capacitacion.jsp");
        rd.forward(request, response);
    }
}