<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard-adm.aspx.cs" Inherits="U2X.Barbearia.Web.dashboardAdm" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
    <title>Starter Template - Materialize</title>

    <!-- CSS  -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link href="css/style.css" type="text/css" rel="stylesheet" />
</head>

<body>
    <nav class="green" role="navigation">
        <div class="nav-wrapper container">
            <a id="logo-container" href="dashboard.html" class="brand-logo">Barbearia Osasco</a>
            <ul class="right hide-on-med-and-down">
                <li>
                    <a href="historico.html">Histórico</a>
                </li>
            </ul>

            <ul id="nav-mobile" class="side-nav">
                <li>
                    <a href="historico.html">Histórico</a>
                </li>
            </ul>
            <a href="#" data-activates="nav-mobile" class="button-collapse">
                <i class="material-icons">menu</i>
            </a>
        </div>
    </nav>

    <div class="section no-pad-bot" id="index-banner">
        <form runat="server" class="container">
            <div id="divMsgServico" runat="server" style="margin-bottom: 10px" visible="false" class="alert alert-success">
                <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
                <strong>Sucesso!</strong> Servico registrado com sucesso.
            </div>
            <ul class="collapsible" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header active">
                        <i class="material-icons">search</i>Detalhe
                    </div>
                    <div class="collapsible-body">
                        <div class="row">
                            <div class="input-field col s6 offset-s2">
                                <select id="slProfissional" runat="server" />
                                <label for="slProfissional">Profissional</label>

                            </div>
                            <div class="col s2">
                                <a class="btn-large waves-effect waves-light green" runat="server" onserverclick="slProfissional_ServerChange">Filtrar</a>
                            </div>
                        </div>
                        <asp:Repeater ID="rptHistorico" runat="server">
                            <HeaderTemplate>
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Usuário</th>
                                            <th>Serviço</th>
                                            <th>valor</th>
                                            <th>Horário</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                    <td><%# DataBinder.Eval(Container.DataItem,"login") %></td>
                                    <td><%# DataBinder.Eval(Container.DataItem,"descricao") %></td>
                                    <td>R$ <%# DataBinder.Eval(Container.DataItem,"valor")%></td>
                                    <td><%# DataBinder.Eval(Container.DataItem,"date")%>    </td>
                                    <td><i class="material-icons">
                                        <%#Convert.ToBoolean(DataBinder.Eval(Container.DataItem,"isCartao"))?
                                            "credit_card":"attach_money"%>
                                    </i></td>
                                </tr>

                            </ItemTemplate>
                            <FooterTemplate>
                                </tbody>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </li>
            </ul>
        </form>
    </div>

    <div class="fixed-action-btn">
        <a class="btn-floating green" href="add.aspx">
            <i class="material-icons">add</i>
        </a>
    </div>


    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="js/materialize.js"></script>
    <script src="js/init.js"></script>
    <script>
        $(document).ready(function () {
            $('select').material_select();
        });
    </script>
</body>

</html>
