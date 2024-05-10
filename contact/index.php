<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP2 | Evaluation IMSP</title>
    <link rel="shortcut icon" href="/assets/images/imsp.jpeg" type="image/x-icon">
    <link rel="stylesheet" href="../assets/style/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/style/style.css">
    <style>
        #contact {
            padding: 0 10%;
            margin-bottom: 50px;
            height: 90vh;
        }

        #contact form {
            background-color: #ffffff;
            margin: auto;
            display: flex;
            flex-direction: column;
            align-items: end;
            padding: 20px;
        }

        .left-right {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        .left-right .left,
        .left-right .right {
            padding: 0 2%;
            width: 50%;
            display: flex;
            flex-direction: column;
        }

        #contact form label {
            font-size: 14px;
            padding: 10px 0;
            font-weight: 600;
        }

        #contact form input {
            padding: 8px;
            outline: 0;
            border: 1px solid #999;
        }

        textarea {
            height: 150px;
            resize: none;
            outline: 0;
            width: 100%;
            padding: 10px;
        }

        #contact form input:focus,
        textarea:focus {
            border: 1px solid #29d9d5;
            box-shadow: 0 0 3px #29d9d5;
        }

        #contact button {
            width: fit-content;
            padding: 8px 40px;
            background-color: #111;
            border: 1px solid #111;
            color: #fff;
            cursor: pointer;
            transition: 0.5s;
        }

        #contact button:hover {
            letter-spacing: 1px;
        }

        footer {
            width: 100%;
            background-color: #222;
            padding: 10px 0;
            font-size: 14px;
            text-align: center;
        }

        footer p {
            color: #fff;
        }

        footer p span {
            color: #29d9d5;
        }
    </style>
</head>

<body>
    <header>
        <div class="container tete p-2">
            <span>
                <img src="../assets/images/uac.jpeg" alt="" width="50px">
            </span>
            <span class=" text-center h3">
                Institut de Mathématiques et de Sciences Physiques
            </span>
            <span>
                <img src="../assets/images/imsp.jpeg" alt="" width="50px">
            </span>
        </div>
        <nav class="navbar navbar-expand-lg bg-primary">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="/">Accueil</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Evaluation
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="/saisie/">Saisie Note</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="/consultation/">Consultation</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-warning fw-bold" href="/contact/">Contactez-nous !</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container corps">

        <section id="contact">
            <h1 class="title">Contact</h1>
            <form>
                <div class="left-right">
                    <div class="left">
                        <label>Nom complet</label>
                        <input type="text">
                        <label>Objet</label>
                        <input type="text" name="" id="">
                        <label>Email</label>
                        <input type="text">
                        <label>Message</label>
                        <textarea name="" id="" cols="10" rows="10"></textarea>
                    </div>
                    <div class="right">
                        <label>Numero</label>
                        <input type="text">
                        <label>Nom complet</label>
                        <input type="text">
                        <label>Autres</label>
                        <input type="text">
                        <label>Adresse</label>
                        <iframe src="" frameborder="0"></iframe>
                    </div>
                </div>
                <button>Envoyer</button>
            </form>
        </section>

    </div>
    <footer class=" bg-primary text-white text-center fw-bold p-3 ">
        <p>
            &copy; CopyRight - IMSP <span class="annee"></span> - Tout droit résevé !
        </p>
    </footer>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
</body>

</html>