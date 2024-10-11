<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                <img class="imagem" src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg"
                     alt="Logotipo ToyHouse">
            </a>
        </div>
    </div>
</header>
<div class="container">
    <div class="container_formulario">
        <div class="logo_formulario">
            <a href="/toyhouse_war/"><img class="imagem"
                                          src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg"
                                          alt="Logotipo ToyHouse"></a>
        </div>

        <div class="titulo">
            <h1>Criar uma conta</h1>
        </div>

        <form class="container_inputs" action="cadastroCliente" method="post">
            <div class="wave-group">
                <input class="input" type="text" name="nome" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">N</span>
                    <span style="--index: 1" class="label-char">o</span>
                    <span style="--index: 2" class="label-char">m</span>
                    <span style="--index: 3" class="label-char">e</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="email" name="email" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">E</span>
                    <span style="--index: 1" class="label-char">-</span>
                    <span style="--index: 2" class="label-char">m</span>
                    <span style="--index: 3" class="label-char">a</span>
                    <span style="--index: 4" class="label-char">i</span>
                    <span style="--index: 5" class="label-char">l</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="password" name="senha" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">S</span>
                    <span style="--index: 1" class="label-char">e</span>
                    <span style="--index: 2" class="label-char">n</span>
                    <span style="--index: 3" class="label-char">h</span>
                    <span style="--index: 4" class="label-char">a</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="password" name="confirmar" required=""/>
                <% String erroSenhaConfirmar = (String) request.getAttribute("erroSenhaConfirmar"); %>
                <% if (erroSenhaConfirmar != null) { %><p><%= erroSenhaConfirmar %>
            </p><% } %>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">C</span>
                    <span style="--index: 1" class="label-char">o</span>
                    <span style="--index: 2" class="label-char">n</span>
                    <span style="--index: 3" class="label-char">f</span>
                    <span style="--index: 4" class="label-char">i</span>
                    <span style="--index: 5" class="label-char">r</span>
                    <span style="--index: 6" class="label-char">m</span>
                    <span style="--index: 7" class="label-char">a</span>
                    <span style="--index: 8" class="label-char">r</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="cpf" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">C</span>
                    <span style="--index: 1" class="label-char">P</span>
                    <span style="--index: 2" class="label-char">F</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="tel" name="tel" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">T</span>
                    <span style="--index: 1" class="label-char">e</span>
                    <span style="--index: 2" class="label-char">l</span>
                    <span style="--index: 3" class="label-char">e</span>
                    <span style="--index: 4" class="label-char">f</span>
                    <span style="--index: 5" class="label-char">o</span>
                    <span style="--index: 6" class="label-char">n</span>
                    <span style="--index: 7" class="label-char">e</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="cep" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">C</span>
                    <span style="--index: 1" class="label-char">E</span>
                    <span style="--index: 2" class="label-char">P</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="cep" required="" readonly/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">B</span>
                    <span style="--index: 1" class="label-char">a</span>
                    <span style="--index: 2" class="label-char">i</span>
                    <span style="--index: 3" class="label-char">r</span>
                    <span style="--index: 4" class="label-char">r</span>
                    <span style="--index: 5" class="label-char">o</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="cep" required="" readonly/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">L</span>
                    <span style="--index: 1" class="label-char">o</span>
                    <span style="--index: 2" class="label-char">g</span>
                    <span style="--index: 3" class="label-char">r</span>
                    <span style="--index: 4" class="label-char">a</span>
                    <span style="--index: 5" class="label-char">d</span>
                    <span style="--index: 6" class="label-char">o</span>
                    <span style="--index: 7" class="label-char">u</span>
                    <span style="--index: 8" class="label-char">r</span>
                    <span style="--index: 9" class="label-char">o</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="cep" required="" readonly/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">E</span>
                    <span style="--index: 1" class="label-char">s</span>
                    <span style="--index: 2" class="label-char">t</span>
                    <span style="--index: 1" class="label-char">a</span>
                    <span style="--index: 1" class="label-char">d</span>
                    <span style="--index: 1" class="label-char">o</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="cep" required="" readonly/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">C</span>
                    <span style="--index: 1" class="label-char">i</span>
                    <span style="--index: 2" class="label-char">d</span>
                    <span style="--index: 1" class="label-char">a</span>
                    <span style="--index: 1" class="label-char">d</span>
                    <span style="--index: 1" class="label-char">e</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="number" name="numero" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">N</span>
                    <span style="--index: 1" class="label-char">°</span>
                </label>
            </div>

            <div class="wave-group">
                <input class="input" type="text" name="numero" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">C</span>
                    <span style="--index: 1" class="label-char">o</span>
                    <span style="--index: 2" class="label-char">m</span>
                    <span style="--index: 3" class="label-char">p</span>
                    <span style="--index: 4" class="label-char">l</span>
                    <span style="--index: 5" class="label-char">e</span>
                    <span style="--index: 6" class="label-char">m</span>
                    <span style="--index: 7" class="label-char">e</span>
                    <span style="--index: 8" class="label-char">m</span>
                    <span style="--index: 9" class="label-char">t</span>
                    <span style="--index: 10" class="label-char">o</span>
                </label>
            </div>


            <!-- Botão de Submit -->
            <div class="container_botao">
                <button type="submit" class="button">
                    <span>Cadastrar-se</span>
                </button>

                <a href="/toyhouse_war/">
                    <button type="button" class="button">
                        <span>Cancelar</span>
                    </button>
                </a>
            </div>

        </form>
    </div>
</div>
</body>

</html>