/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controllers;

import ModelDAO.*;
import ModelVO.*;
import util.SendEmail;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Esta clase servira como controlador, este encargara de conectar las vistas
 * con los modelos
 *
 * @author Jhon Camargo
 * @version 1.0.0
 */
@WebServlet(name = "Controller", urlPatterns = {"/User"})
public class Controller extends HttpServlet {

    private String server, port, mail, password;

    public void init() {
        ServletContext contex = getServletContext();
        server = contex.getInitParameter("server");
        port = contex.getInitParameter("port");
        mail = contex.getInitParameter("user");
        password = contex.getInitParameter("password");
    }

    UserDAO userDao = new UserDAO();
    UserVO userVo = null;
    TypeDocVO typeVo = null;
    HttpSession session = null;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idUser = request.getParameter("id-user");
        String nameUser = request.getParameter("name");
        String lastNameUser = request.getParameter("last-name");
        String typeDocUser = request.getParameter("type-doc");
        String numDocUser = request.getParameter("num-doc");
        String telUser = request.getParameter("tel");
        String estadoUser = request.getParameter("estado");
        String rolUser = request.getParameter("rol");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        int option = Integer.parseInt(request.getParameter("option"));

        switch (option) {
            case 1: //Login
                if (email.equals("") || pass.equals("")) {
                    this.generarMensaje(request, response, "Error en los datos", "Los datos no pueden ser nulos, verifiquelos e intente nuevamente", "index.jsp");
                } else {
                    this.login(request, response, email, pass);
                }
                break;
            case 2: //Logout
                this.logout(request, response);
                break;
            case 3: //Insert
                if (nameUser.equals("") || lastNameUser.equals("") || typeDocUser.equals("") || numDocUser.equals("") || telUser.equals("") || email.equals("") || pass.equals("") || estadoUser.equals("") || rolUser.equals("")) {
                    this.generarMensaje(request, response, "Error en los datos", "Los datos no pueden ser nulos, verifiquelos e intente nuevamente", "index.jsp");
                } else {
                    this.insert(request, response, userVo, typeVo);
                }
                break;
            case 4: //Update
                if (idUser.equals("") || nameUser.equals("") || lastNameUser.equals("") || typeDocUser.equals("") || numDocUser.equals("") || telUser.equals("") || email.equals("") || pass.equals("") || estadoUser.equals("") || rolUser.equals("")) {
                    this.generarMensaje(request, response, "Error en los datos", "Los datos no pueden ser nulos, verifiquelos e intente nuevamente", "index.jsp");
                } else {
                    this.update(request, response, userVo, typeVo);
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    private void generarMensaje(HttpServletRequest request, HttpServletResponse response, String titulo, String mensaje, String redirigirA) throws ServletException, IOException {
        request.setAttribute("titulo", titulo);
        request.setAttribute("mensaje", mensaje);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    private void login(HttpServletRequest request, HttpServletResponse response, String email, String pass) throws ServletException, IOException {
        userVo = userDao.login(email, pass);
        if (userVo != null) {
            session = request.getSession(true);
            session.setAttribute("userVo", userVo);
        } else {
            this.generarMensaje(request, response, "Datos erroneos", "No se encontro ningun usuario con esas credenciales", "index.jsp");
        }
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "No-cache");
        response.setDateHeader("Expires", 0);

        session = request.getSession();
        session.removeAttribute("userVo");

        session.invalidate();

        this.generarMensaje(request, response, "Sesion cerrada", "La sesión se cerró con exito, sigue disfrutando de nuestros servicios", "index.jsp");
    }

    private void insert(HttpServletRequest request, HttpServletResponse response, UserVO userVo, TypeDocVO typeVo) throws ServletException, IOException {
        String asunto = "";
        String mensaje = "";
        if (userDao.insert(userVo, typeVo)) {
            asunto = "Control Vehiculos JAC";
            mensaje = "¡Bienvenido!\nAcabas de registrarte en nuestro sitio web, es un placer que pertenezcas a esta gran familia.";
            try {
                SendEmail.sendMail(server, port, mail, password, userVo.getEmailUser(), asunto, mensaje);
                generarMensaje(request, response, "Usuario registrado", "El usuario se registró corectamente", "insert.jsp");
            } catch (MessagingException ex) {
                System.out.println("Ocurrio un error al enviar el correo");
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            generarMensaje(request, response, "Error al registrar el usuario", "Ocurrió un error al tratar de registrar al usuario, recargue la página e intente nuevamente", "insert.jsp");
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response, UserVO userVo, TypeDocVO typeVo) throws ServletException, IOException {
        if (userDao.update(userVo, typeVo)) {
            generarMensaje(request, response, "Usuario actualizado", "El usuario se actualizó corectamente", "insert.jsp");
        } else {
            generarMensaje(request, response, "Error al actualizar el usuario", "Ocurrió un error al tratar de actualizar al usuario, recargue la página e intente nuevamente", "insert.jsp");
        }
    }

}
