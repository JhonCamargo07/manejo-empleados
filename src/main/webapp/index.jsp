<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Banco digital SW</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="util/css/bootstrap.css">
    <link rel="stylesheet" href="util/css/style.css">
    <style>
        /* Declaracion de variables */
        :root {
            --primary: #6209DB;
            --font: 'Poppins', sans-serif;
            --dark: #000;
            --gray: #F5F5F5;
        }

        body {
            font-family: var(--font);
        }

        section {
            min-height: 37.5rem;
        }

        .navbar {
            min-height: 5.625rem;
        }

        /* .navbar .btn {
    padding: 0.625rem 1.25rem !important;
} */

        .btn {
            padding: 0.5rem 1rem;
        }

        .content {
            max-width: 31.25rem;
        }

        .navbar-toggler:focus {
            box-shadow: none;
        }

        .step {
            position: relative;
            display: flex;
            justify-content: center;
        }

        .step::after {
            content: '';
            border-right: 0.0625rem solid var(--dark);
            height: 3.75rem;
            position: absolute;
            top: 34px;
            opacity: .2;
        }

        .call-to-action {
            border-radius: 50px;
        }

        .call-to-action img {
            max-width: 300px;
        }

        .cta-form {
            max-width: 30rem;
        }

        .cta-form .form-control {
            min-height: 5.125rem;
        }

        .cta-form .btn {
            top: 0.75rem;
            right: 0.75rem;
        }

        .bg-light {
            background-color: rgba(0, 0, 0, .1);
        }

        @media (max-width: 992px) {
            .navbar {
                position: relative !important;
            }

            .w-75 {
                width: 100% !important;
            }
        }
    </style>
</head>

<body class="text-montserrat">
    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand fw-bold ms-2" href="#"><svg class="bi text-dark me-1" width="50" height="50"
                    fill="currentColor">
                    <use xlink:href="util/icons/bootstrap-icons.svg#bank" />
                </svg><span class="ms-2">Banco digital SW</span></a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <svg class="bi text-dark me-1" width="50" height="50" fill="currentColor">
                    <use xlink:href="util/icons/bootstrap-icons.svg#list" />
                </svg>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link fw-bold d-flex align-items-center" href="index.html">
                            <svg class="bi text-dark me-1" width="20" height="20" fill="currentColor">
                                <use xlink:href="util/icons/bootstrap-icons.svg#house-door" />
                            </svg>
                            Inicio
                            <span class="sr-only"> </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fw-bold d-flex align-items-center" href="tabla.html">
                            <svg class="bi text-dark me-1" width="20" height="20" fill="currentColor">
                                <use xlink:href="util/icons/bootstrap-icons.svg#table" />
                            </svg>
                            Tablas
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link fw-bold d-flex align-items-center" href="cards.html">
                            <svg class="bi text-dark me-1" width="20" height="20" fill="currentColor">
                                <use xlink:href="util/icons/bootstrap-icons.svg#credit-card-2-front" />
                            </svg>
                            Cards
                        </a>
                    </li>
                    <li class="nav-item me-1">
                        <a class="nav-link fw-bold d-flex align-items-center" href="dashboard.html">
                            <svg class="bi text-dark me-1" width="20" height="20" fill="currentColor">
                                <use xlink:href="util/icons/bootstrap-icons.svg#bar-chart-line" />
                            </svg>
                            Dashboard
                        </a>
                    </li>
                    <!-- <li class="nav-item">
              <a class="nav-link" href="#">
                <i class="fa fa-bell">
                  <span class="badge badge-info">11</span>
                </i>
                Card
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">
                <i class="fa fa-globe">
                  <span class="badge badge-success">11</span>
                </i>
                Test
              </a>
            </li> -->
                </ul>
                <!-- <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"> -->
                <a href="login.jsp"><button class="btn btn-outline-orange my-2 my-sm-0 me-2" type="submit">
                        <svg class="bi  me-2" width="20" height="20" fill="currentColor">
                            <use xlink:href="util/icons/bootstrap-icons.svg#box-arrow-in-right" />
                        </svg>Iniciar sesión</button></a>
                <button class="btn btn-primary my-2 my-sm-0" type="submit">
                    <svg class="bi  me-2" width="20" height="20" fill="currentColor">
                        <use xlink:href="util/icons/bootstrap-icons.svg#download" />
                    </svg>Dercargar app</button>
            </div>
        </div>
    </nav>

    <div class="container d-flex">
        <div class="row g-0 h-100 w-100">
            <div class="col-lg-6 d-flex ">
                <div class="content mx-auto align-self-center px-4 my-5">
                    <h1 class="display-4 fw-bold">La mejor banda digital.</h1>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Optio ratione sed veritatis
                        aperiam,
                        modi provident suscipit voluptatem adipisci consequatur dolor! Dolor deleniti animi labore
                        totam
                        praesentium perspiciatis nemo similique quas.</p>
                    <a href="login.html" class="btn btn-primary text-white fw-bolder mb-5">Abre tu cuenta aquí</a>
                    <div class="d-flex me-4">
                        <div class="d-flex mb-4 me-4">
                            <svg class="bi text-dark me-1" width="50" height="50" fill="currentColor">
                                <use xlink:href="util/icons/bootstrap-icons.svg#apple" />
                            </svg>
                            <div>
                                <small>Consíguela en</small>
                                <p class="fw-bold mb-0">Apple</p>
                            </div>
                        </div>
                        <div class="d-flex mb-4">
                            <svg class="bi text-dark me-1" width="50" height="50" fill="currentColor">
                                <use xlink:href="util/icons/bootstrap-icons.svg#google-play" />
                            </svg>
                            <div>
                                <small>Consíguela en</small>
                                <p class="fw-bold mb-0">Apple</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 d-flex" style="background-color: rgba(0, 0, 0, .009);">
                <div class="content mx-auto align-self-center my-5">
                    <img src="img/banco.png" alt="Logo" class="img-fluid mb-4">
                </div>
            </div>
        </div>
    </div>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="content my-5 mx-auto align-self-center">
                        <img src="img/celular.webp" alt="imagen prueba" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-6 d-flex">
                    <div class="align-self-center">
                        <h1 class="display-4 fw-bold">Haz que crezca tu dinero.</h1>
                        <ul class="list-unstyled">
                            <li class="d-flex mb-4">
                                <p class="text-primary lead fw-bold step">1</p>
                                <div class="ms-3">
                                    <p class="lead fw-bolder">Crea tu cuenta<span class="text-primary">.</span></p>
                                    <p>Es muy sencillo, ingresa tu celular y listo.</p>
                                </div>
                            </li>
                            <li class="d-flex mb-4">
                                <p class="text-primary lead fw-bold step">2</p>
                                <div class="ms-3">
                                    <p class="lead fw-bolder">Solicita tu tarjeta personalizada.
                                    <p>Selecciona el coloe que más te guste para tu tarjeta, la enviaremos a tu domicio.
                                    </p>
                                </div>
                            </li>
                            <li class="d-flex mb-4">
                                <p class="text-primary lead fw-bold">3</p>
                                <div class="ms-3">
                                    <p class="lead fw-bolder">Activa tu tarjeta.</p>
                                    <p>Iiciar sesión en la app e ingresa el número de tarjeta</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="d-flex">
        <div class="container align-self-center">
            <div class="call-to-action my-4 bg-light">
                <div class="row">
                    <div class="col-lg-7 d-flex align-content-end">
                        <div class="mx-5 mt-5 align-self-center">
                            <h2 class="display-4 fw-bold my-4 my-lg-0 mb-4">Controle y retire su dinero al instante.
                            </h2>
                            <p class="lead mb-4">Tu dinero está seguro en todo momento, puedes consultar todos los
                                movimientos de tu cuenta directamente desde tu celular.</p>
                            <a href="login.html" class="btn btn-primary text-white fw-bolder">Abre tu cuenta hoy</a>
                        </div>
                    </div>
                    <div class="col-lg-5 d-flex py-5">
                        <div class="mx-auto align-self-center">
                            <img src="img/final.png" alt="Imagen 2" class="img-fluid">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="d-flex pt-3 p-0 mb-0 h-100">
        <div class="container align-self-center">
            <div class="row mb-3">
                <div class="col-lg-3 col-sm-6 my-4">
                    <h5 class="fw-bold d-flex align-items-center">
                        <ion-icon class="me-1" name="bag-handle-outline"></ion-icon>Productos
                    </h5>
                    <ul class="list-unstyled">
                        <li class="mb-3"><a href="#" class="text-decoration-none text-dark">Tarjetas de credito</a>
                        </li>
                        <li class="mb-3"><a href="#" class="text-decoration-none text-dark">Tarjetas de debito</a>
                        </li>
                        <li class=""><a href="#" class="text-decoration-none text-dark">Credito hipotecario</a></li>
                    </ul>

                </div>
                <div class="col-lg-3 col-sm-6 my-4">
                    <h5 class="fw-bold d-flex align-items-center">
                        <ion-icon class="me-1" name="business-outline"></ion-icon>Empresa
                    </h5>
                    <ul class="list-unstyled">
                        <li class="mb-3"><a href="#" class="text-decoration-none text-dark">Acerca de nosotros</a></li>
                        <li class="mb-3"><a href="#" class="text-decoration-none text-dark">Misión y visión</a></li>
                        <li class=""><a href="#" class="text-decoration-none text-dark">Historia</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6 my-4">
                    <h5 class="fw-bold d-flex align-items-center">
                        <ion-icon class="me-1" name="help-circle-outline"></ion-icon>Centros de ayuda
                    </h5>
                    <ul class="list-unstyled">
                        <li class="mb-3"><a href="#" class="text-decoration-none text-dark">Sede centro</a></li>
                        <li class="mb-3"><a href="#" class="text-decoration-none text-dark">Sede chapinero</a></li>
                        <li class=""><a href="#" class="text-decoration-none text-dark">Soporte en linea</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-sm-6 my-4">
                    <h5 class="fw-bold d-flex align-items-center">
                        <ion-icon class="me-1" name="ribbon-outline"></ion-icon>Banco digital
                    </h5>
                    <ul class="list-unstyled">
                        <li class="mb-3">Avenida centenario #54 - 35</li>
                        <li>
                            <ul class="list-inline">
                                <li class="list-inline-item me-3"><a href="" class="lead text-dark"><i
                                            class="fab fa-facebook lead"></i></a></li>
                                <li class="list-inline-item me-3"><a href="" class="lead text-dark"><i
                                            class="fab fa-instagram lead"></i></a></li>
                                <li class="list-inline-item me-3"><a href="" class="lead text-dark"><i
                                            class="fab fa-linkedin lead"></i></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="border-top py-4">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <small>2022. Banco digital SW. Todos los derechos reservados</small>
                    </div>
                    <div class="col-lg-6 col-md-12">
                        <ul class="list-inline text-lg-end">
                            <li class="list-inline-item"><a href=""
                                    class="text-dark text-decoration-none"><small>Términos y condiciones</small></a>
                            </li>
                            <li class="list-inline-item"><a href="" class="text-dark text-decoration-none"><small>Aviso
                                        de privacidad</small></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="util/js/sweetalert.js"></script>
    <script src="util/js/popper.min.js"></script>
    <script src="util/js/jquery.min.js"></script>
    <script src="util/js/bootstrap.min.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>