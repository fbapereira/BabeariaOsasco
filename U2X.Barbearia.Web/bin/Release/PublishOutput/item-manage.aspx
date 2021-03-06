﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="item-manage.aspx.cs" Inherits="U2X.Barbearia.Web.item_manage" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <title>Starter Template - Materialize</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
</head>

<body>
    <nav class="green" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="#" class="brand-logo">Barbearia Osasco</a>
            <ul class="right hide-on-med-and-down">
                <li>
                    <a href="#">Minhas Marcacoes</a>
                    <a href="#">Histórico</a>
                </li>
            </ul>

            <ul id="nav-mobile" class="side-nav">
                <li>
                    <a href="#">Minhas Marcacoes</a>
                    <a href="#">Histórico</a>
                </li>
            </ul>
            <a href="#" data-activates="nav-mobile" class="button-collapse">
                <i class="material-icons">menu</i>
            </a>
        </div>
    </nav>
    <div class="section no-pad-bot" id="index-banner">
        <div class="container">
            <br>
            <br>

            <div class="row">
                <div class="input-field col s8 offset-s2">
                    <input id="first" type="text" class="validate" value="Fabu" disabled>
                    <label for="first">Profissional</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s8 offset-s2">
                    <select>
                        <option value="" disabled selected>Escolha</option>
                        <option value="1">Barba - R$25,00</option>
                        <option value="2">Cabelo - R$25,00</option>
                        <option value="3">Bigode - R$ 10,00</option>
                    </select>
                    <label>Serviço realizado</label>
                </div>
            </div>
            <div class="row">
                <div class="col s8 offset-s2">
                    <a class="btn-large waves-effect waves-light green" href="dashboard.html" style="width: 100%">Salvar</a>
                </div>
            </div>
            <br>
            <br>
        </div>
    </div>



    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="js/materialize.js"></script>
    <script src="js/init.js"></script>

</body>
<script>
    $(document).ready(function () {
        $('select').material_select();
    });
</script>

</html>
