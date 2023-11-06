<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProjetoPratico.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Exemplo do Panel em ASP.NET</title>
    <style type="text/css">

        body
        {
            background-color: wheat;
            display:flex;
            justify-content:center;
            max-height: 100vh;
            max-width:100vw;
        }
        form
        {
            background-color:cornflowerblue;
            height:fit-content;
            width: 30vw;
            height: 40vh;
            margin-top: 100px;
            border-radius: 10px;
            display:flex;
            justify-content:center;
        }

        .titulo, .descricaoCampo, .texto, .buttonVoltar, .alerta
        {
            font-family: Arial, Helvetica, sans-serif;
        }

        .titulo, .descricaoCampo, .buttonVoltar, .buttonProximo, .alerta
        {
            color: white;
            font-weight: bold;
        }
        .titulo, .buttonVoltar, .buttonProximo, .alerta
        {
            text-align:center;
        }
        .panelPrincipal
        {
            width:95%;
            height:95%;
            align-self:center;

        }
        .panel
        {
            display:flex;
            justify-content:center;
        }
        .formulario
        {
            width:100%;
        }
        .buttonVoltar, .buttonProximo
        {
            background-color: green;
            padding:  5px 10px;
            margin-top: 15px;
            margin-bottom: 10px;
            box-shadow: 7px 5px 7px -2px rgba(0,0,0,0.61);
        }

        .alerta
        {
            
        }
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            color: white;
            font-weight: bold;
            width: 50%;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
            color: white;
            font-weight: bold;
            width: 18%;
        }
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
            color: white;
            font-weight: bold;
            width: 11%;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="panelPrincipal">
            <tr>
                <td colspan="5" class ="titulo">Exemplo do Panel em ASP.NET</td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:Panel ID="Panel1" runat="server">
                        <asp:Panel ID="Panel2" runat="server" CssClass="panel">
                            <table class="formulario">
                                <tr>
                                    <td colspan="2" class ="titulo">Informações pessoais</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="txtNome" runat="server" Width="100%" ToolTip="Nome"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><asp:Label ID="lblSobrenome" runat="server" Text="Sobrenome"></asp:Label></td></td>
                                    <td>
                                        <asp:TextBox ID="txtSobrenome" runat="server" Width="100%" ToolTip="Sobrenome"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><asp:Label ID="lblGenero" runat="server" Text="Gênero"></asp:Label></td></td>
                                    <td>
                                        <asp:DropDownList ID="ddlGenero" runat="server" Width="102%" ToolTip="Masculino / Feminino" CssClass="texto">
                                            <asp:ListItem Value="0">-- Selecione --</asp:ListItem>
                                            <asp:ListItem Value="1">Masculino</asp:ListItem>
                                            <asp:ListItem Value="2">Feminino</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><asp:Label ID="lblCelular" runat="server" Text="Celular"></asp:Label></td></td>
                                    <td>
                                        <asp:TextBox ID="txtCelular" runat="server" Width="100%" ToolTip="Número do Celular com DDD, sem o zero." MaxLength="11"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" ><asp:Button ID="btnProximoPanel1" runat="server" Text="Próximo" OnClick="btnProximoPanel1_Click" CssClass="buttonProximo"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblPanel2" runat="server" BackColor="White" ForeColor="Red" CssClass="alerta"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server" Visible="False">
                            <table style="width: 100%;">
                                <tr>
                                    <td colspan="2" class="titulo">Detalhes do endereço</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"><asp:Label ID="lblEndereco" runat="server" Text="Endereço"></asp:Label></td></td>
                                    <td>
                                        <asp:TextBox ID="txtEndereco" runat="server" Width="100%" ValidationGroup="Rua, número, complemento e bairro"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"><asp:Label ID="lblCidade" runat="server" Text="Cidade"></asp:Label></td></td>
                                    <td>
                                        <asp:TextBox ID="txtCidade" runat="server" Width="100%" ValidationGroup="Cidade"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3"><asp:Label ID="lblCEP" runat="server" Text="CEP"></asp:Label></td></td>
                                    <td class="auto-style1">
                                        <asp:TextBox ID="txtCEP" runat="server" Width="100%" ToolTip="00000-000"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><asp:Button ID="btnVoltarPanel2" runat="server" Text="Voltar" OnClick="btnVoltarPanel2_Click" CssClass="buttonVoltar"/>
                                    <asp:Button ID="btnProximoPanel2" runat="server" Text="Próximo" OnClick="btnProximoPanel2_Click" CssClass="buttonProximo" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblPanel3" runat="server" BackColor="White" ForeColor="Red" CssClass="alerta"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                            <asp:Panel ID="Panel4" runat="server" Visible="False">
                            <table style="width: 100%;">
                                <tr>
                                    <td colspan="2" class="titulo">Área de login</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><asp:Label ID="lblLogin" runat="server" Text="Login"></asp:Label></td></td>
                                    <td>
                                        <asp:TextBox ID="txtLogin" runat="server" Width="100%" ToolTip="Digite um nome de usuário"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"><asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label></td></td>
                                    <td>
                                        <asp:TextBox ID="txtSenha" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Button ID="btnVoltarPanel3" runat="server" Text="Voltar" OnClick="btnVoltarPanel3_Click" CssClass="buttonVoltar"/>
                                        <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="buttonProximo"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="lblRespostaEnvio" runat="server" Text="" CssClass="alerta"></asp:Label>
                                        <asp:Label ID="lblPanel4" runat="server" BackColor="White" ForeColor="Red" CssClass="alerta"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
