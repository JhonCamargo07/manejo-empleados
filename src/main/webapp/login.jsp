<%@page import="java.util.List"%>
<%@page import="ModelDAO.TypeDocDAO"%>
<%@page import="ModelVO.TypeDocVO"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/util/css/bootstrap.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/util/css/sass.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/util/css/style.css" />
        <title>Iniciar sesi&#243;n</title>
    </head>

    <body style="background: #f1f1f1">

        <a href="index.jsp">
            <div class="position-absolute bg-white rounded-circle py-1 px-2 mx-3 mt-2">
                <svg class="bi text-rojo-oscuro" width="1rem" height="1rem" fill="currentColor">
                <use xlink:href="util/icons/bootstrap-icons.svg#arrow-90deg-left" />
                </svg>
            </div>
        </a>

        <div class="text-roboto d-flex justify-content-center align-items-center">
            <div class="container rounded w-75 mt-4 bg-white overflow-hidden shadow mb-3">
                <div class="row">
                    <div class="col-md-6 p-0 div-sign-up d-flex justify-content-center align-items-center" id="divSignUp">
                        <!-- <div class="col-md-6 p-0 d-flex"> -->
                        <!-- <img src="img/fondo.jpeg" class="w-100 rounded-start position-relative" alt=""> -->
                        <button type="submit"
                                class="d-none btn btn-primary text-white px-5 py-3 rounded-2 fw-bold border-0 text-size" id="btnSignIn">
                            Iniciar sesi�n
                        </button>

                        <button class="btn btn-orange text-white px-5 py-3 rounded-2 fw-bold border-0 text-size"
                                id="btnSignUp">
                            Registrarme
                        </button>
                    </div>
                    <div class="col-md-6 px-5 pb-md-5 d-flex justify-content-center align-items-center"
                         id="divSignIn">
                        <div class="my-1 w-100 mb-3" id="formSignIn">
                            <!-- <div class="text-end">
                                <svg class="bi text-primary" width="32" height="32" fill="currentColor">
                                    <use xlink:href="util/icons/bootstrap-icons.svg#box-arrow-in-right" />
                                </svg>
                            </div> -->
                            <h2 class="fw-bold text-center pt-2 mb-4">Ingrese con su cuenta</h2>
                            <!-- LOGIN -->
                            <form action="${pageContext.request.contextPath}/User" method="POST" class="needs-validation text-start" novalidate>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo electr&#243;nico
                                        <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email" value="${emailLogin}" id="email" placeholder="janedoe@mail.com" minlength="10"
                                           required />
                                    <input type="hidden" name="option" value="1"/>
                                    <span class="invalid-feedback text-size-r">El correo solo puede contener letras,
                                        n&#250;mero, puntos,
                                        guiones, guion bajo, debe ser un correo válido y no puede
                                        estar vacío</span>
                                    <span class="valid-feedback">Correo valido</span>
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Contrase&#241;a <span
                                            class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="pass" value="${passLogin}" id="password" placeholder=""
                                           minlength="10" maxlength="30" required />
                                    <span class="invalid-feedback text-size-r">La contrase&#241;a debe ser de 10 a 30
                                        caracteres</span>
                                    <span class="valid-feedback">Contrase&#241;a valida</span>
                                </div>
                                <div class="mb-4 form-check">
                                    <input type="checkbox" name="connected" class="form-check-input" />
                                    <label for="connected" class="form-check-label text-size-r">Mantenerme conectado</label>
                                </div>

                                <div class="text-center">
                                    <button type="submit"
                                            class="btn btn-primary text-white w-100 fw-bold text-size-18 px-3 fw-bold"
                                            id="btnIniciarSesion">
                                        Iniciar sesi&#243;n
                                    </button>
                                </div>
                            </form>
                            <!-- /LOGIN -->
                            <div class="text-center text-size-r">
                                <span><a href="" class="">Recuperar contrase&#241;a</a></span>
                            </div>
                        </div>
                        <div class="my-1 w-100 d-none py-3" id="formSignUp">
                            <!-- <div class="text-end">
                                <svg class="bi text-rojo-oscuro" width="32" height="32" fill="currentColor">
                                    <use xlink:href="util/icons/bootstrap-icons.svg#person-plus" />
                                </svg>
                            </div> -->
                            <h2 class="fw-bold text-center pt-2 mb-4">Registrate gratis</h2>
                            <!-- SIGNUP -->
                            <form action="${pageContext.request.contextPath}/User" method="POST" class="needs-validation text-start" novalidate>
                                <div class="row">
                                    <div class="col-12 col-md-6 mb-3">
                                        <div class="">
                                            <label for="name" class="form-label">Nombre <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="name" value="${name}" id="name" placeholder="Jane" minlength="10" maxlength="30" required />
                                            <input type="hidden" name="option" value="3" />
                                            <span class="invalid-feedback">Solo se aceptan letras, max: 30</span>
                                            <span class="valid-feedback">Nombre valido</span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 mb-3">
                                        <div class="">
                                            <label for="apellido" class="form-label">Apellido <span
                                                    class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="last-name" value="${lastName}" id="apellido" placeholder="Doe" minlength="10" maxlength="30" required />
                                            <span class="invalid-feedback">Solo se aceptan letras, max: 30</span>
                                            <span class="valid-feedback">Apellido valido</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row ">
                                    <div class="col-12 col-md-6 mb-3">
                                        <label for="tipoDoc" class="form-label">Tipo de documento <span class="text-danger">*</span></label>
                                        <select class="form-select" name="type-doc" id="tipoDoc">
                                            <%
                                                TypeDocVO typeDocVO = null;
                                                TypeDocDAO typeDocDao = new TypeDocDAO();

                                                String rol = "0";
                                                if (request.getAttribute("typeDoc") != null) {
                                                    rol = (String) request.getAttribute("typeDoc");
                                                }
                                                out.println(rol);

                                                List<TypeDocVO> typesDoc = typeDocDao.select();
                                                for (int i = 0; i < typesDoc.size(); i++) {
                                                    typeDocVO = typesDoc.get(i);
                                            %>
                                            <option <%= Integer.parseInt(rol) == typeDocVO.getIdTypeDOc() ? "selected" : ""%>  value="<%= typeDocVO.getIdTypeDOc()%>"><%= typeDocVO.getNameTypeDoc()%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                        <span class="invalid-feedback">Debe proporcionar su numero de documento (sin puntos
                                            ni
                                            comas)</span>
                                        <span class="valid-feedback">Documento valido</span>
                                    </div>
                                    <div class="col-12 col-md-6 mb-3">
                                        <label for="documento" class="form-label">N&#176; documento <span
                                                class="text-danger">*</span></label>
                                        <input type="number" class="form-control" name="num-doc" value="${numDoc}" id="documento" placeholder="1014124135"
                                               min="99999" required />
                                        <span class="invalid-feedback">Debe proporcionar su numero de documento (sin puntos
                                            ni
                                            comas)</span>
                                        <span class="valid-feedback">Documento valido</span>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo electr&#243;nico
                                        <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email" id="email" value="${email}" placeholder="janedoe@mail.com" minlength="10"
                                           required />
                                    <span class="invalid-feedback">El correo solo puede contener letras, números, puntos,
                                        guiones, guion bajo, debe ser un correo válido y no puede
                                        estar vacío</span>
                                    <span class="valid-feedback">Correo valido</span>
                                </div>
                                <div class="row">
                                    <div class="col-12 col-md-6 mb-3">
                                        <div class="mb-3">
                                            <label for="password" class="form-label">Contrase&#241;a <span
                                                    class="text-danger">*</span></label>
                                            <input type="password" class="form-control" value="${pass}" name="pass" id="password" placeholder=" "
                                                   minlength="10" maxlength="30" required />
                                            <span class="invalid-feedback">La contraseña debe ser de 10 a 30 caracteres</span>
                                            <span class="valid-feedback">Contraseña valida</span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 mb-3">
                                        <div class="mb-3">
                                            <label for="tel" class="form-label">Telefono <span
                                                    class="text-danger">*</span></label>
                                            <input type="tel" class="form-control" name="tel" value="${tel}" id="tel" placeholder=" "
                                                   minlength="10" maxlength="30" required />
                                            <span class="invalid-feedback">La contraseña debe ser de 10 a 30 caracteres</span>
                                            <span class="valid-feedback">Contraseña valida</span>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center mb-col-5">
                                    <button type="submit"
                                            class="btn btn-orange  text-white w-100 fw-bold text-size-18 px-3 fw-bold "
                                            id="btnRegistrar">
                                        Crear cuenta
                                    </button>
                                </div>
                            </form>
                            <!-- /SIGNUP -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/util/js/sweetalert.js"></script>
        <script src="${pageContext.request.contextPath}/util/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/util/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/util/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/util/js/alerta.js"></script>
        <script src="${pageContext.request.contextPath}/util/js/validar-formulario.js"></script>

        <jsp:include page="WEB-INF/paginas/comunes/alert.jsp" />

        <script>
            let btnSignUp = document.getElementById("btnSignUp"),
                    formSignUp = document.getElementById("formSignUp"),
                    divSignUp = document.getElementById("divSignUp"),
                    btnSignIn = document.getElementById("btnSignIn"),
                    formSignIn = document.getElementById("formSignIn"),
                    divSignIn = document.getElementById("divSignIn");

            btnSignUp.addEventListener("click", () => {
                btnSignIn.classList.remove("d-none");
                formSignUp.classList.remove("d-none");
                btnSignUp.classList.add("d-none");
                formSignIn.classList.add("d-none");
            });

            btnSignIn.addEventListener("click", () => {
                btnSignIn.classList.add("d-none");
                formSignUp.classList.add("d-none");
                btnSignUp.classList.remove("d-none");
                formSignIn.classList.remove("d-none");
            });
        </script>

    </body>

</html>