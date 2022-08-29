<!--Incluimos el archivo que valida que la sesion este activa-->
<jsp:include page="validarSesion.jsp" />
<%@page import="ModelVO.UserVO"%>
<%
    // Obtenemos la sesión
    HttpSession sesion = request.getSession();

    // Obtenemos los datos que se crearon al iniciar sesión
    UserVO userVo = (UserVO) sesion.getAttribute("userVo");
    // Se obtiene el rol
    String idRol = userVo.getRolUser();

    // Redirigimos según el rol
    if (idRol.equals("1")) {
//        response.sendRedirect("admin/");
        request.setAttribute("redirigir", "admin/");
        request.getRequestDispatcher("redirigir.jsp").forward(request, response);
    } else if (idRol.equals("2")) {
//        response.sendRedirect("empleado/");
        request.setAttribute("redirigir", "empleado/");
        request.getRequestDispatcher("redirigir.jsp").forward(request, response);
    } else {
//        response.sendRedirect("login.jsp");
        request.setAttribute("redirigir", "index.jsp");
        request.getRequestDispatcher("redirigir.jsp").forward(request, response);
    }
%>