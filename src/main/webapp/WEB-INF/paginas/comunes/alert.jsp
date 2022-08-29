<%
    if (request.getAttribute("titulo") != null || session.getAttribute("titulo") != null) {
%>
<script>
    alertaFlotante('${titulo}', '${mensaje}', "#12a5c7", '${icon}');
    // alertaDiminuta("error", '${titulo}');
</script>

<p>${titulo}</p>
<%
    }
%>