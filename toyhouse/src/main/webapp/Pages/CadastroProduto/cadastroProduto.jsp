
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/CadastroProduto/cadastroProduto.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/CadastroProduto/cadastroProdutoResponsivo.css">


    <!--Importando o Componente-->
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Components/FormContainer/container.css">
    <link rel="stylesheet" href="<%= request.getContextPath()%>/Components/FormContainer/responsivo.css">

    <title>Cadastrar Produto</title>
</head>
<body>

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
    <div class="content">
        <div class="logo_content">
            <img class="imagem" src="<%= request.getContextPath()%>/Images/LogoToyHouse/ToyHouseLogo.jpg" alt="Logotipo ToyHouse">
        </div>

        <div class="titulo">
            <h1>Cadastrar novo Produto</h1>
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
                    <a href="#">Cadastrar-se</a>
                </button>

                <button>
                    <a href="<%= request.getContextPath()%>/Pages/Funcionario/homeFuncionario.jsp">Cancelar</a>
                </button>
            </div>
        </form>
    </div>
</div>
</body>
</html>