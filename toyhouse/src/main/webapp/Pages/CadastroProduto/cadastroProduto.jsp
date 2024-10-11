<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/CadastroProduto/cadastroProduto.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/CadastroProduto/cadastroProdutoResponsivo.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
          rel="stylesheet">
    <title>Cadastro Produto</title>
</head>
<body>

<header class="header">
    <div class="header_container">
        <div class="logo">
            <a href="./home.html"><img class="imagem" src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg"
                                       alt="Logotipo ToyHouse"></a>
        </div>
    </div>
</header>
<div class="container">
    <div class="container_formulario">
        <div class="logo_formulario">
            <a href="./home.html"><img class="imagem" src="<%= request.getContextPath() %>/Images/Home/ToyHouseLogo.jpg"
                                       alt="Logotipo ToyHouse"></a>
        </div>
        <div class="titulo">
            <h1>Cadastro de Produto</h1>
        </div>


        <form class="container_inputs" action="cadastroProduto" method="post">
            <div class="wave-group">
                <input class="input" type="text" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">N</span>
                    <span style="--index: 1" class="label-char">o</span>
                    <span style="--index: 2" class="label-char">m</span>
                    <span style="--index: 3" class="label-char">e</span>
                    <span style="--index: 3" class="label-char"></span>
                    <span style="--index: 3" class="label-char"></span>
                    <span style="--index: 3" class="label-char"></span>
                </label>
            </div>


            <div class="wave-group">
                <input class="input" type="text" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">C</span>
                    <span style="--index: 1" class="label-char">a</span>
                    <span style="--index: 2" class="label-char">t</span>
                    <span style="--index: 3" class="label-char">e</span>
                    <span style="--index: 3" class="label-char">g</span>
                    <span style="--index: 3" class="label-char">o</span>
                    <span style="--index: 3" class="label-char">r</span>
                    <span style="--index: 3" class="label-char">i</span>
                    <span style="--index: 3" class="label-char">a</span>
                </label>
            </div>


            <button class="open-file">
                  <span class="file-wrapper">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 71 67">
                      <path
                              stroke-width="5"
                              stroke="black"
                              d="M41.7322 11.7678L42.4645 12.5H43.5H68.5V64.5H2.5V2.5H32.4645L41.7322 11.7678Z"
                      ></path>
                    </svg>
                    <span class="file-front"></span>
                  </span>
                Open file
            </button>


            <div class="wave-group">
                <input class="input" type="text" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">D</span>
                    <span style="--index: 1" class="label-char">e</span>
                    <span style="--index: 2" class="label-char">s</span>
                    <span style="--index: 3" class="label-char">c</span>
                    <span style="--index: 4" class="label-char">r</span>
                    <span style="--index: 5" class="label-char">i</span>
                    <span style="--index: 6" class="label-char">ç</span>
                    <span style="--index: 7" class="label-char">ã</span>
                    <span style="--index: 8" class="label-char">o</span>
                </label>
            </div>


            <div class="wave-group">
                <input class="input" type="number" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">P</span>
                    <span style="--index: 1" class="label-char">r</span>
                    <span style="--index: 2" class="label-char">e</span>
                    <span style="--index: 3" class="label-char">ç</span>
                    <span style="--index: 4" class="label-char">o</span>
                </label>
            </div>


            <div class="wave-group">
                <input class="input" type="number" required=""/>
                <span class="bar"></span>
                <label class="label">
                    <span style="--index: 0" class="label-char">E</span>
                    <span style="--index: 1" class="label-char">s</span>
                    <span style="--index: 2" class="label-char">t</span>
                    <span style="--index: 3" class="label-char">o</span>
                    <span style="--index: 3" class="label-char">q</span>
                    <span style="--index: 3" class="label-char">u</span>
                    <span style="--index: 3" class="label-char">e</span>
                </label>
            </div>
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