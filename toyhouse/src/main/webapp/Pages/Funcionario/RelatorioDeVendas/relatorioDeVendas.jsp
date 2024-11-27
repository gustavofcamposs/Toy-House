
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Funcionario/RelatorioDeVendas/relatorioDeVendas.css">

    <!--Importando o Componente-->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Components/FormContainer/container.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Components/FormContainer/responsivo.css">


    <title>Relatório de Vendas</title>
</head>
<body>

<header class="header">
    <div class="header_content">
        <div class="logo">
            <a href="<%= request.getContextPath() %>/Pages/Funcionario/homeFuncionario.jsp">
                <img class="imagem" src="<%= request.getContextPath() %>/Images/LogoToyHouse/ToyHouseLogo.jpg" alt="Logotipo ToyHouse">
            </a>
        </div>
    </div>
</header>
<div class="container">
    <div class="content" id="content_personalizado">
        <div class="logo_content">
            <img class="imagem" src="/Images/LogoToyHouse/ToyHouseLogo.jpg" alt="Logotipo ToyHouse">
        </div>

        <div class="container_filtro">

            <a href="../homeFuncionario.html">
                <button class="btn-class-name">
                    <span class="back"></span>
                    <span class="front"></span>
                </button>
            </a>

            <form class="forms-data" action="">

                <div id="dateDiv">
                    <input type="text" id="dateInput" class="dateInput"
                           placeholder="Até:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DD/MM/AAAA"
                           required pattern="\d{2}/\d{2}/\d{4}" />
                </div>

                <div id="dateDiv">
                    <input type="text" id="dateInput" class="dateInput"
                           placeholder="Até:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DD/MM/AAAA"
                           required pattern="\d{2}/\d{2}/\d{4}" />
                </div>

                <script>
                    // Seleciona todos os inputs com a classe "dateInput"
                    const dateInputs = document.querySelectorAll('.dateInput');

                    // Adiciona o evento de input a cada elemento
                    dateInputs.forEach(dateInput => {
                        dateInput.addEventListener('input', (e) => {
                            let value = e.target.value.replace(/\D/g, ''); // Remove tudo que não for número
                            if (value.length > 2) value = value.replace(/^(\d{2})(\d)/, '$1/$2'); // Adiciona a primeira "/"
                            if (value.length > 5) value = value.replace(/^(\d{2}\/\d{2})(\d)/, '$1/$2'); // Adiciona a segunda "/"
                            e.target.value = value.slice(0, 10); // Limita a 10 caracteres (DD/MM/AAAA)
                        });
                    });
                </script>

            </form>
        </div>

        <main class="main">

            <div class="main-container">
                <div class="box">
                    <div class="item">
                        <div class="info">
                            <p>Nome: </p>
                            <p>Data: </p>
                            <p>Valor: </p>
                        </div>
                        <div class="opcao-radio">
                            <label class="radio-button">
                                <input type="radio" name="example-radio" value="option1">
                                <span class="radio"></span>
                                Mostrar mais
                            </label>
                        </div>
                    </div>

                    <div class="item"></div>

                    <div class="item"></div>

                    <div class="item"></div>
                </div>

                <div class="box" id="box2_personalizada">
                    <div class="item" id="item2-personalizado">
                        <div class="info">
                            <p>Nome: </p>
                            <p>Cod: </p>
                            <p>Quantidade: </p>
                            <p>Valor: </p>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container_valor_total">
                <div class="conteudo">
                    <h1>Valor total do Período: </h1>
                    <p>R$ </p>
                </div>
            </div>

        </main>
    </div>
</div>
</body>
</html>