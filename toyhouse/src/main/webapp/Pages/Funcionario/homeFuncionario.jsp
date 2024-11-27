<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Funcionario/homeFuncionario.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/Style/Funcionario/homeFuncionarioResponsivo.css">

    <title>Home Funcionário</title>
</head>

<body>
<div class="container">
    <header class="header">


        <div class="radio-inputs">
            <label class="radio">
                <input type="radio" name="radio">
                <a href="<%= request.getContextPath()%>/Pages/Funcionario/GerenciarProdutos/gerenciarProdutos.jsp"><span class="name">Pesquisar Produto</span></a>
            </label>
            <label class="radio">
                <input type="radio" name="radio">
                <a href="<%= request.getContextPath()%>/Pages/CadastroProduto/cadastroProduto.jsp"><span class="name">Cadastrar Novo Produto</span></a>
            </label>

            <label class="radio">
                <input type="radio" name="radio">
                <a href="./RelatorioDeVendas/relatorioDeVendas.jsp"><span class="name">Relatório de Vendas</span></a>
            </label>

            <label class="radio">
                <input type="radio" name="radio">
                <a href="/toyhouse_war"><span class="name">Sair</span></a>
            </label>
        </div>


    </header>
    <main class="main">
    </main>
</div>
</body>

</html>
