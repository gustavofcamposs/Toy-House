<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Home/home.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Home/homeResponsivo.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Components/PopUp/popUp.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Components/PopUp/popUpResponsivo.css">
    <script src="<%= request.getContextPath()%>/Components/PopUp/homePopUp.js"></script>

    <link rel="icon" href="../Image/ToyHouseLogo.jpg" type="image/x-icon">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

    <title>Toy House Brinquedos - Quantos mais Brincadeira, Melhor!</title>

</head>

<body>
<header class="header" id="header">
    <nav class="nav_header">
        <!-- Logotipo com link para a página inicial -->
        <a href="./home.html" class="logo">
            <img class="imagem" src="<%= request.getContextPath() %>/Images/LogoToyHouse/ToyHouseLogo.jpg">
        </a>

        <!-- Formulário de busca -->
        <form action="" method="GET" class="container_search">

            <div class="input__container">
                <div class="shadow__input"></div>
                <button class="input__button__shadow">
                    <svg fill="none" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" height="20px"
                         width="20px">
                        <path
                                d="M4 9a5 5 0 1110 0A5 5 0 014 9zm5-7a7 7 0 104.2 12.6.999.999 0 00.093.107l3 3a1 1 0 001.414-1.414l-3-3a.999.999 0 00-.107-.093A7 7 0 009 2z"
                                fill-rule="evenodd" fill="#17202A"></path>
                    </svg>
                </button>
                <input type="text" name="text" class="input__search" placeholder="Um mundo de diversões?">
            </div>

        </form>

        <div class="itens_nav">
            <nav class="menu">
                <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open">
                <label class="menu-open-button" for="menu-open">
                    <span class="lines line-1"></span>
                    <span class="lines line-2"></span>
                    <span class="lines line-3"></span>
                </label>

                <a href="#" class="menu-item blue"> <img src="<%= request.getContextPath() %>/Images/Home/IconPerfil.webp" height="65px" width="65px"
                                                         alt=""> <i class="fa fa-anchor"></i> </a>
                <a  class="menu-item green" onclick="showPopup()"> <img src="<%= request.getContextPath() %>/Images/Home/IconBuy.png" height="65px" width="65px"
                                                                        alt=""> <i class="fa fa-coffee"></i> </a>
                <a href="#" class="menu-item red"> <img src="<%= request.getContextPath() %>/Images/Home/IconConfig.png" height="65px" width="65px"> <i
                        class="fa fa-heart"></i> </a>
                <a  class="menu-item purple" onclick="showPopup1()"> <img src="<%= request.getContextPath() %>/Images/Home/IconEntrar.webp" height="65px"
                                                                         width="65px"> <i class="fa fa-microphone"></i> </a>
                <a href="#" class="menu-item orange">
                    <!--<img src="../Image/IconSair.png" height="65px" width="65px">--> <i class="fa fa-star"></i>
                </a>
                <a href="#" class="menu-item lightblue"> <i class="fa fa-diamond"></i> </a>


                <!--PopUp Carrinho de Compra-->
                <div id="popupContainer" class="popup-container">
                    <div class="popup-content">
                        <div class="container-carrinho">

                            <div class="item-carrinho">
                                <div class="imagem">
                                    <img src="./Image/BrinquedoTeste2.webp" alt="">
                                </div>
                                <div class="descricao">

                                    <h1>Titulo Produto</h1>

                                    <div class="number-control">
                                        <div class="number-left"></div>
                                        <input type="number" name="number" class="number-quantity">
                                        <div class="number-right"></div>
                                    </div>

                                </div>
                            </div>

                            <div class="item-carrinho">
                                <div class="imagem">
                                    <img src="./Image/BrinquedoTeste5.webp" alt="">
                                </div>
                                <div class="descricao">

                                    <h1>Titulo Produto</h1>

                                    <div class="number-control">
                                        <div class="number-left"></div>
                                        <input type="number" name="number" class="number-quantity">
                                        <div class="number-right"></div>
                                    </div>

                                </div>
                            </div>

                            <div class="item-carrinho"></div>
                        </div>

                        <div class="botao-compra">
                            <button class="botao" id="button1">
                                <span class="circle1"></span>
                                <span class="circle2"></span>
                                <span class="circle3"></span>
                                <span class="circle4"></span>
                                <span class="circle5"></span>
                                <span class="text">Comprar</span>
                            </button>
                        </div>
                    </div>
                </div>

                <!--PopUp Login-->
                <div id="popupContainer1" class="popup-container">
                    <div class="popup-content">
                        <div class="popup-titulo">
                            <h1>Seja bem-vindo</h1>
                        </div>
                        <div class="popup-input">
                            <div class="input-container">
                                <input required="" type="email">
                                <label class="label">E-mail</label>
                                <div class="underline"></div>
                                <div class="sideline"></div>
                                <div class="upperline"></div>
                                <div class="line"></div>
                            </div>

                            <div class="input-container">
                                <input required="" type="password">
                                <label class="label">Senha</label>
                                <div class="underline"></div>
                                <div class="sideline"></div>
                                <div class="upperline"></div>
                                <div class="line"></div>
                            </div>
                        </div>
                        <div class="popup-response">

                        </div>
                        <div class="popuo-botao">
                            <button>
                                <a href="<%= request.getContextPath() %>/Pages/Funcionario/homeFuncionario.jsp">Login</a>
                            </button>
                            <button>
                                <a href="<%= request.getContextPath() %>/Pages/CadastroCliente/cadastroCliente.jsp">Criar uma conta</a>
                            </button>
                        </div>
                    </div>
                </div>
                <script src="<%= request.getContextPath() %>/Components/PopUp/homePopUp.js"></script>
            </nav>
        </div>
    </nav>
</header>
<div class="container">

    <div class="categoria">


        <section class="box-categoria">
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaLego.jpg" alt=""></div>
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaMarvel.webp" alt=""></div>
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaBabyAlive.webp" alt=""></div>
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaBarbie.webp" alt=""></div>

            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaDisney.png" alt=""></div>
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaNerf.png" alt=""></div>
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaRealBaby.webp" alt=""></div>
            <div class="item"><img src="<%= request.getContextPath() %>/Images/Home/CategoriaDc.png" alt=""></div>
        </section>
    </div>

    <main class="main-produto">

        <div class="card">
            <div class="card-img">
                <img src="./Image/brinquedoTeste.webp" alt="">
            </div>
            <div class="card-title">Product title</div>
            <div class="card-subtitle">Product description. Lorem ipsum dolor sit amet, consectetur adipisicing
                elit. lore</div>
            <hr class="card-divider">
            <div class="card-footer">
                <div class="card-price"><span>$</span> 123.45</div>
                <button class="card-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path
                                d="m397.78 316h-205.13a15 15 0 0 1 -14.65-11.67l-34.54-150.48a15 15 0 0 1 14.62-18.36h274.27a15 15 0 0 1 14.65 18.36l-34.6 150.48a15 15 0 0 1 -14.62 11.67zm-193.19-30h181.25l27.67-120.48h-236.6z">
                        </path>
                        <path
                                d="m222 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m368.42 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m158.08 165.49a15 15 0 0 1 -14.23-10.26l-25.71-77.23h-47.44a15 15 0 1 1 0-30h58.3a15 15 0 0 1 14.23 10.26l29.13 87.49a15 15 0 0 1 -14.23 19.74z">
                        </path>
                    </svg>
                </button>
            </div>
        </div>

        <div class="card">
            <div class="card-img">
                <img src="./Image/brinquedoTeste.webp" alt="">
            </div>
            <div class="card-title">Product title</div>
            <div class="card-subtitle">Product description. Lorem ipsum dolor sit amet, consectetur adipisicing
                elit. lore</div>
            <hr class="card-divider">
            <div class="card-footer">
                <div class="card-price"><span>$</span> 123.45</div>
                <button class="card-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path
                                d="m397.78 316h-205.13a15 15 0 0 1 -14.65-11.67l-34.54-150.48a15 15 0 0 1 14.62-18.36h274.27a15 15 0 0 1 14.65 18.36l-34.6 150.48a15 15 0 0 1 -14.62 11.67zm-193.19-30h181.25l27.67-120.48h-236.6z">
                        </path>
                        <path
                                d="m222 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m368.42 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m158.08 165.49a15 15 0 0 1 -14.23-10.26l-25.71-77.23h-47.44a15 15 0 1 1 0-30h58.3a15 15 0 0 1 14.23 10.26l29.13 87.49a15 15 0 0 1 -14.23 19.74z">
                        </path>
                    </svg>
                </button>
            </div>
        </div>


        <div class="card">
            <div class="card-img">
                <img src="./Image/brinquedoTeste.webp" alt="">
            </div>
            <div class="card-title">Product title</div>
            <div class="card-subtitle">Product description. Lorem ipsum dolor sit amet, consectetur adipisicing
                elit. lore</div>
            <hr class="card-divider">
            <div class="card-footer">
                <div class="card-price"><span>$</span> 123.45</div>
                <button class="card-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path
                                d="m397.78 316h-205.13a15 15 0 0 1 -14.65-11.67l-34.54-150.48a15 15 0 0 1 14.62-18.36h274.27a15 15 0 0 1 14.65 18.36l-34.6 150.48a15 15 0 0 1 -14.62 11.67zm-193.19-30h181.25l27.67-120.48h-236.6z">
                        </path>
                        <path
                                d="m222 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m368.42 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m158.08 165.49a15 15 0 0 1 -14.23-10.26l-25.71-77.23h-47.44a15 15 0 1 1 0-30h58.3a15 15 0 0 1 14.23 10.26l29.13 87.49a15 15 0 0 1 -14.23 19.74z">
                        </path>
                    </svg>
                </button>
            </div>
        </div>


        <div class="card">
            <div class="card-img">
                <img src="./Image/brinquedoTeste.webp" alt="">
            </div>
            <div class="card-title">Product title</div>
            <div class="card-subtitle">Product description. Lorem ipsum dolor sit amet, consectetur adipisicing
                elit. lore</div>
            <hr class="card-divider">
            <div class="card-footer">
                <div class="card-price"><span>$</span> 123.45</div>
                <button class="card-btn">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path
                                d="m397.78 316h-205.13a15 15 0 0 1 -14.65-11.67l-34.54-150.48a15 15 0 0 1 14.62-18.36h274.27a15 15 0 0 1 14.65 18.36l-34.6 150.48a15 15 0 0 1 -14.62 11.67zm-193.19-30h181.25l27.67-120.48h-236.6z">
                        </path>
                        <path
                                d="m222 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m368.42 450a57.48 57.48 0 1 1 57.48-57.48 57.54 57.54 0 0 1 -57.48 57.48zm0-84.95a27.48 27.48 0 1 0 27.48 27.47 27.5 27.5 0 0 0 -27.48-27.47z">
                        </path>
                        <path
                                d="m158.08 165.49a15 15 0 0 1 -14.23-10.26l-25.71-77.23h-47.44a15 15 0 1 1 0-30h58.3a15 15 0 0 1 14.23 10.26l29.13 87.49a15 15 0 0 1 -14.23 19.74z">
                        </path>
                    </svg>
                </button>
            </div>
        </div>
    </main>

</div>
</body>

</html>