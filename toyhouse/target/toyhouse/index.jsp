<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="teste.css">
    <!--<script src="../javascript/api.js"></script>-->
    <title>custoFácil</title>
</head>

<body>
<div class="teste"></div>
<header class="header">
    <img src="../../image/Off-White-Logo.png" alt="Logo da nossa empresa" class="header__logo">
</header>

<main class="main-container">
    <div class="box-container">
        <section class="section-sign-in">

            <div class="titulo">
                <h2>Sign in to your account</h2>
            </div>

            <form class="container-realizar-login" action="/meu-ednpoint" method="post">
                <input type="email" autocomplete="off" name="text" class="input" placeholder="Username">
                <input type="password" autocomplete="off" name="text" class="input" placeholder="Password">
            </form>

            <div class="botao-container">
                <a href="../home/home.html"> <button class="botao">Login</button> </a>

            </div>

        </section>
        <section class="section-new-account">

            <div class="titulo">
                <h2>Register a new account</h2>
            </div>

            <form class="container-criar-conta" action="/meu-endpoint" method="post">
                <input type="text" autocomplete="off" name="text" class="input" placeholder="Username">
                <input type="email" autocomplete="off" name="text" class="input" placeholder="E-mail">
                <input type="tel" autocomplete="off" name="text" class="input" placeholder="Telefone">
                <input type="password" autocomplete="off" name="text" class="input" placeholder="Senha">
                <input type="password" autocomplete="off" name="text" class="input" placeholder="Confirmar senha">
            </form>

            <div class="botao-container">
                <a href="../home/exemplo.html"> <button class="botao"> Create account  </button>   </a>
            </div>

        </section>
    </div>

    <!-- <h1 id="funcionarios">qasd</h1> Id do Js - api -->
</main>
</body>

</html>