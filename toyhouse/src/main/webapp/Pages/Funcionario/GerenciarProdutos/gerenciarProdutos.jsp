<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Importando Components de Forms e PopUp -->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Components/FormContainer/container.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Components/FormContainer/responsivo.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Components/PopUp/popUp.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Components/PopUp/popUpResponsivo.css">

    <!--Css do Produto já responsivo para deixar o conteúdo do Popup Responsivo-->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Style/CadastroProduto/cadastroProduto.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Style/CadastroProduto/cadastroProdutoResponsivo.css">

    <script src="<%= request.getContextPath()%>/Components/PopUp/homePopUp.js"></script>

    <link rel="stylesheet" href="<%= request.getContextPath()%>/Style/Funcionario/GerenciarProdutos/gerenciarProduto.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Style/Funcionario/GerenciarProdutos/gerenciarProdutoResponsivo.css">

    <title>Gerenciamento de Produtos ToyHouse</title>
</head>

<body>
<!---->
<header class="header">
    <div class="header_content">
        <div class="logo">
            <a href="<%= request.getContextPath()%>/Pages/Funcionario/homeFuncionario.jsp">
                <img class="imagem" src="<%= request.getContextPath()%>/Images/LogoToyHouse/ToyHouseLogo.jpg" alt="Logotipo ToyHouse">
            </a>
        </div>
    </div>
</header>
<div class="container">
    <div class="content" id="contentInterface">
        <div class="logo_content">
            <img class="<%= request.getContextPath()%>/Images/LogoToyHouse/ToyHouseLogo.jpg" alt="Logotipo ToyHouse">
        </div>

        <div class="search">

            <a href="<%= request.getContextPath()%>/Pages/Funcionario/homeFuncionario.jsp">
                <button class="btn-class-name">
                    <span class="back"></span>
                    <span class="front"></span>
                </button>
            </a>

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
                <input type="text" name="text" class="input__search"
                       placeholder="Pesquise pelo nome ou ID do produto">
            </div>

        </div>

        <div class="container-box">
            <div class="box">
                <div class="content-box">
                    <div class="imagem">
                        <img class="imagem-produto" src="<%= request.getContextPath()%>/Images/Funcionario/GerenciadorProduto/brinquedoTeste.webp" alt="">
                    </div>
                    <div class="titulo-produto">
                        <p>Boneco Funko POP! Pokémon - Pikachu</p>
                    </div>
                </div>
                <div class="container-botao">
                    <button class="botao" onclick="showPopup1()" id="button1">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Editar</span>
                    </button>
                    <button class="botao" onclick="showPopup()" id="button2">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Excluir</span>
                    </button>

                    <!--POP UP Editar, importei o component do Form Container e coloquie no PopUp-->
                    <div id="popupContainer1" class="popup-container"> <!--ID para o JavaScript e CSS personalizado do Cadastro-->
                        <div class="content">
                            <div class="logo_content">
                                <img class="imagem" src="<%= request.getContextPath()%>/Images/LogoToyHouse/ToyHouseLogo.jpg">
                            </div>

                            <div class="titulo">
                                <h1>Editar Produto</h1>
                            </div>

                            <form class="container_input" action="" method="">

                                <div class="input-container">
                                    <input required="" type="text">
                                    <label class="label">Nome</label>
                                    <div class="underline"></div>
                                    <div class="sideline"></div>
                                    <div class="upperline"></div>
                                    <div class="line"></div>
                                </div>

                                <div class="form-group">
                                    <label for="textarea">Descrição do Produto</label>
                                    <textarea required="" cols="50" rows="10" id="textarea" name="textarea"> </textarea>
                                </div>

                                <!--img-->

                                <div class="input-container">
                                    <input required="" type="number">
                                    <label class="label">Preço</label>
                                    <div class="underline"></div>
                                    <div class="sideline"></div>
                                    <div class="upperline"></div>
                                    <div class="line"></div>
                                </div>

                                <div class="input-container">
                                    <input required="" type="number">
                                    <label class="label">Quantidade em estoque</label>
                                    <div class="underline"></div>
                                    <div class="sideline"></div>
                                    <div class="upperline"></div>
                                    <div class="line"></div>
                                </div>

                                <div class="input-container">
                                    <input required="" type="text">
                                    <label class="label">Categoria</label>
                                    <div class="underline"></div>
                                    <div class="sideline"></div>
                                    <div class="upperline"></div>
                                    <div class="line"></div>
                                </div>


                                <div class="container_botao">
                                    <button>
                                        <a href="#">Concluir</a>
                                    </button>

                                    <button>
                                        <a href="<%= request.getContextPath()%>/Pages/Funcionario/GerenciarProdutos/gerenciarProdutos.jsp">Cancelar</a>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!--POP UP Excluir-->
                    <div id="popupContainer" class="popup-container">
                        <div class="popup-content">
                            <div class="titulo">
                                <h1>Deseja mesmo excluir?</h1>
                            </div>
                            <div class="botoes">
                                <button class="botao" id="popUp-excluir1">
                                    <span class="circle1"></span>
                                    <span class="circle2"></span>
                                    <span class="circle3"></span>
                                    <span class="circle4"></span>
                                    <span class="circle5"></span>
                                    <span class="text">Sim</span>
                                </button>
                                <button class="botao" id="popUp-excluir2">
                                    <a href="<%= request.getContextPath()%>/Pages/Funcionario/GerenciarProdutos/gerenciarProdutos.jsp">
                                        <span class="circle1"></span>
                                        <span class="circle2"></span>
                                        <span class="circle3"></span>
                                        <span class="circle4"></span>
                                        <span class="circle5"></span>
                                        <span class="text">Não</span>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                    <script src="<%= request.getContextPath()%>/Components/PopUp/homePopUp.js"></script>
                </div>
            </div>
            <div class="box">
                <div class="content-box">
                    <div class="imagem">
                        <img class="imagem-produto" src="<%= request.getContextPath()%>/Images/Funcionario/GerenciadorProduto/BrinquedoTeste2.webp" alt="">
                    </div>
                    <div class="titulo-produto">
                        <p>Figura de Ação - 24 cm - Disney - Marvel - Avenges - Homem Aranha - Hasbro</p>
                    </div>
                </div>
                <div class="container-botao">
                    <button class="botao" id="button1">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Editar</span>
                    </button>
                    <button class="botao" id="button2">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Excluir</span>
                    </button>
                </div>
            </div>
            <div class="box">
                <div class="content-box">
                    <div class="imagem">
                        <img class="imagem-produto" src="<%= request.getContextPath()%>/Images/Funcionario/GerenciadorProduto/BrinquedoTeste3.webp" alt="">
                    </div>
                    <div class="titulo-produto">
                        <p>Funko Sasuke com Asas da Marca da Maldição, POP! Animation</p>
                    </div>
                </div>
                <div class="container-botao">
                    <button class="botao" id="button1">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Editar</span>
                    </button>
                    <button class="botao" id="button2">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Excluir</span>
                    </button>
                </div>
            </div>
            <div class="box">
                <div class="content-box">
                    <div class="imagem">
                        <img class="imagem-produto" src="<%= request.getContextPath()%>/Images/Funcionario/GerenciadorProduto/BrinquedoTeste4.webp" alt="">
                    </div>
                    <div class="titulo-produto">
                        <p>Boneco Articulado - Marvel - Homem Aranha - Armored Blindado - Hasbro</p>
                    </div>
                </div>
                <div class="container-botao">
                    <button class="botao" id="button1">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Editar</span>
                    </button>
                    <button class="botao" id="button2">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Excluir</span>
                    </button>
                </div>
            </div>
            <div class="box">
                <div class="content-box">
                    <div class="imagem">
                        <img class="imagem-produto" src="<%= request.getContextPath()%>/Images/Funcionario/GerenciadorProduto/BrinquedoTeste5.webp" alt="">
                    </div>
                    <div class="titulo-produto">
                        <p>Boneco De Vinil - Funko - POP Animation - One Piece - Luffy - Candide</p>
                    </div>
                </div>
                <div class="container-botao">
                    <button class="botao" id="button1">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Editar</span>
                    </button>
                    <button class="botao" id="button2">
                        <span class="circle1"></span>
                        <span class="circle2"></span>
                        <span class="circle3"></span>
                        <span class="circle4"></span>
                        <span class="circle5"></span>
                        <span class="text">Excluir</span>
                    </button>
                </div>
            </div>
            <div class="box"></div>
        </div>
    </div>
</div>
</body>

</html>