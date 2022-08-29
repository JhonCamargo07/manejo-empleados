<%@page import="ModelVO.UserVO"%>
<%
    // Se obtiene la sesion para acceder a sus datos
    HttpSession sesion = request.getSession();

    // Guardamos la informacion que está almacenada en el atributo de la sesion (el que se creo al iniciar sesion)
    UserVO userVo = (UserVO) sesion.getAttribute("userVo");
    // Guardamos el rol en una variable
    String idRol = userVo.getRolUser();
    // Si un usuario ingresa al archivo y tiene un rol diferente a '1' (admin), lo redireciona a menu.jsp para que allí lo redirecione al archivo que tiene acceso
    if (!idRol.equals("1")) {
        request.setAttribute("redirigir", "menu.jsp");
        request.getRequestDispatcher("redirigir.jsp").forward(request, response);
    }
%>