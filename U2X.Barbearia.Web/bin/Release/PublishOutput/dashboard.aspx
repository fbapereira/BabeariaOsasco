<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="U2X.Barbearia.Web.dashboard" %>

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
        <div class="container">
            <ul class="collapsible" data-collapsible="accordion">
                <li>
                    <div class="collapsible-header active">
                        <i class="material-icons">storage</i>Resumo
                    </div>
                    <div class="collapsible-body">
                        <p>
                            <b>Valor em Cartão</b>: 
                            <label id="lblCartao" runat="server" />
                        </p>
                        <p>
                            <b>Valor em Dinheiro</b>: 
                            <label id="lblDinheiro" runat="server" />
                        </p>
                        <p>
                            <b>Valor total</b>:
                            <label id="lblTotal" runat="server" />
                        </p>
                        <p>
                            <b>valor a receber</b>: 
                            <label id="lblReceber" runat="server" />
                        </p>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header">
                        <i class="material-icons">search</i>Detalhe
                    </div>
                    <div class="collapsible-body">
                        <asp:Repeater ID="rptHistorico" runat="server">
                            <HeaderTemplate>
                                <table>
                                    <thead>
                                        <tr>
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
        </div>
    </div>

    <div class="fixed-action-btn">
        <a class="btn-floating green" href="add.html">
            <i class="material-icons">add</i>
        </a>
    </div>


    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="js/materialize.js"></script>
    <script src="js/init.js"></script>

</body>

</html>
