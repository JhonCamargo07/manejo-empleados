<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    HttpSession sesion = request.getSession();

    if (sesion.getAttribute("userVo") == null) {
        request.setAttribute("redirigir", "login.jsp");
        request.getRequestDispatcher("redirigir.jsp").forward(request, response);
    }
%>