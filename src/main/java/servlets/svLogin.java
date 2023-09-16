package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Contenedor;
import models.Usuario;

import java.io.IOException;

public class svLogin extends HttpServlet {
    private Contenedor contenedor;

    public svLogin() {
        super();

    }

    public void init() throws ServletException {
        contenedor = new Contenedor();
        // Agrega algunos usuarios de ejemplo al contenedor
        contenedor.agregarUsuario(new Usuario("usuario1", "password1"));
        contenedor.agregarUsuario(new Usuario("usuario2", "password2"));
        System.out.println(contenedor.toString());
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        System.out.println(contenedor.toString());
        String rutUsuario = request.getParameter("rutUsuario");
        String password = request.getParameter("password");

        boolean usuarioEncontrado = false;

        for (Usuario usuario : Contenedor.listaUsuario) {
            if (usuario.getNombre().equals(rutUsuario) && usuario.getPassword().equals(password)) {
                usuarioEncontrado = true;
                break;
            }
        }
        if (usuarioEncontrado) {
            request.getSession().setAttribute("usuarioConectado", true);
            request.getSession().setAttribute("username", rutUsuario);
            RequestDispatcher rd = request.getRequestDispatcher("/inicio.jsp");
            rd.forward(request, response);
        } else {
            request.getSession().setAttribute("usuarioConectado", false);
            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        }


    }

}
