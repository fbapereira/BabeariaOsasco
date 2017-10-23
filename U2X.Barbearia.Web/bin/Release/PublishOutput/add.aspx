<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="U2X.Barbearia.Web.add" %>

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
        <form runat="server" class="container">
            <br>
            <br>

            <div class="row">
                <div class="input-field col s8 offset-s2">
                    <select id="slProfissional" runat="server" />
                    <label for="slProfissional">Profissional</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s8 offset-s2">
                    <select id="slServicos" runat="server" />
                    <label for="slServicos">Serviço realizado</label>
                </div>
            </div>
            <div class="row">
                <div class="col s8 offset-s2">
                    <input type="checkbox" id="ckCartao" runat="server" checked />
                    <label for="ckCartao">Pago com Cartão</label>
                </div>
            </div>

            <br />
            <br />
            <br />
            <div class="row">
                <div class="col s8 offset-s2">
                    <button id="btn_salvar" class="btn-large waves-effect waves-light green"
                        style="width: 100%" runat="server" onserverclick="btn_salvar_ServerClick">
                        Salvar</button>
                </div>
            </div>
            <br>
            <br>
        </form>
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
