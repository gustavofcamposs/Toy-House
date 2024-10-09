<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Home/home.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Home/homeResponsivo.css">


    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">
    <title>ToyHouse</title>
</head>

<body>
<script src="<%= request.getContextPath() %>/Script/Home/headerHamburguer.js"></script>
<header class="header" id="header">
    <nav class="nav_header">
        <!-- Logotipo com link para a página inicial -->
        <a href="${pageContext.request.contextPath}/Pages/Home/home.jsp" class="logo">
            <img class="imagem" src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg" alt="Logotipo da ToyHouse">
        </a>

        <!-- Formulário de busca -->
        <form action="${pageContext.request.contextPath}/search" method="GET" class="container_search">

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

        <div class="container_icon">
            <span id="Icone_ClickBurguer" class="material-icons" onclick="clickMenu()">menu</span>
        </div>

        <ul class="itens_nav">
            <li><a href="Pages/CadastroCliente/cadastroCliente.jsp">Cadastrar</a></li>
        </ul>
    </nav>
</header>
<div class="container_menu_hamburguer">
    <header class="header-hamburguer" id="hamburguer"></header>
</div>
</body>

</html>