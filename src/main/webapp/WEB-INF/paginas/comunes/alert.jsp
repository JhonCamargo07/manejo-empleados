<%
    if (request.getAttribute("titulo") != null || session.getAttribute("titulo") != null) {
%>
<script>
//    alertaFlotante("Hola", "Holaaa", "#12a5c7", "error");
    alertaDiminuta("error", "holaa");
</script>

<p>${titulo}</p>
<%
    }
%>