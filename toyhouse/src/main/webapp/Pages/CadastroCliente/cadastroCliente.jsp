<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/CadastroCliente/cadastroCliente.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/CadastroCliente/cadastroClienteResponsivo.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
          rel="stylesheet">
    <title>Cadastro Cliente</title>
</head>
<body>

<header class="header">
    <div class="header_container">
        <div class="logo">
            <a href="/toyhouse_war/"> <!-- Link para a página inicial -->
                <img class="imagem" src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg" alt="Logotipo ToyHouse">
            </a>
        </div>
    </div>
</header>
<div class="container">
    <div class="container_formulario">
        <div class="logo_formulario">
            <a href="/toyhouse_war/"><img class="imagem" src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg" alt="Logotipo ToyHouse"></a>
        </div>

        <div class="titulo">
            <h1>Criar uma conta</h1>
        </div>
        <form class="container_inputs" action="/toyhouse_war/clienteCadastro" method="post">

            <div class="input-container">
                <input required="" type="text">
                <label class="label" >Nome</label>
                <div class="underline"></div>
                <div class="sideline"></div>
                <div class="upperline"></div>
                <div class="line"></div>
            </div>

            <div class="input-container">
                <input required=""  type="email">
                <label class="label" >E-mail</label>
                <div class="underline"></div>
                <div class="sideline"></div>
                <div class="upperline"></div>
                <div class="line"></div>
            </div>

            <div class="input-container">
                <input required=""  type="tel">
                <label class="label">Telefone</label>
                <div class="underline"></div>
                <div class="sideline"></div>
                <div class="upperline"></div>
                <div class="line"></div>
            </div>

            <div class="input-container">
                <input required="" type="text">
                <label class="label">CPF</label>
                <div class="underline"></div>
                <div class="sideline"></div>
                <div class="upperline"></div>
                <div class="line"></div>
            </div>

            <div class="input-container">
                <input required=""  type="password">
                <label class="label">Senha</label>
                <div class="underline"></div>
                <div class="sideline"></div>
                <div class="upperline"></div>
                <div class="line"></div>
            </div>

            <div class="input-container">
                <input required=""  type="password">
                <label class="label" >Confirmar senha</label>
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
                    <a href="/toyhouse_war/">Cancelar</a>
                </button>
            </div>

        </form>
    </div>
</div>
</body>

</html>