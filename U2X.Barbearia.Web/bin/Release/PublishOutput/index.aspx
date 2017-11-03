<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="U2X.Barbearia.Web.index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <title>Barbearia Osasco</title>
    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="css/style.css" type="text/css" rel="stylesheet"  />
    
</head>
<body>
    <nav class="green" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="#" class="brand-logo center">Barbearia Osasco</a>

        </div>
    </nav>
    <div class="section no-pad-bot" id="index-banner">
        <form runat="server" class="container">

            <div id="divMsgInvalido" runat="server" style="margin-bottom: 10px" visible="false" class="alert alert-error">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                <strong>Ops!</strong> Usuário ou senha inválidos.
            </div>
            <div id="divMsgDados" runat="server" style="margin-bottom: 10px" visible="false" class="alert alert-error">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                <strong>Ops!</strong> Favor preencher os campos usuario e senha.
            </div>


            <br>
            <br>
            <div class="row">
                <div class="input-field col s8 offset-s2">
                    <input id="txtLogin" runat="server" type="text" class="validate">
                    <label for="txtLogin">Login</label>
                </div>
            </div>
            <div class="row">
                <div class="input-field col s8 offset-s2">
                    <input id="txtPassword" runat="server" type="password" class="validate">
                    <label for="txtPassword">Senha</label>
                </div>
            </div>
            <div class="row">
                <div class="col s8 offset-s2">
                    <button id="btn_entrar" class="btn-large waves-effect waves-light green"
                        style="width: 100%" runat="server" onserverclick="btn_entrar_Click">
                        Entrar</button>
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
</html>
