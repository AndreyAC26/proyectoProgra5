<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoJCAA.Forms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center text-warning">
        <h3><strong>Inicio de Sesion</strong></h3>
    </div>

    <div class="container">
        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label1" runat="server" Text="Identificacion:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtNumero_Identificacion" runat="server" Width="100%" OnTextChanged="txtNumero_Identificacion_TextChanged"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12" style="padding-top:10px; top: 10px; left: 0px;">
            <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">         
                <asp:Button ID="btnIniciar" runat="server"  Text="Iniciar" Width="100%" OnClick="btnIniciar_Click"  />
            </div>
        </div>

    </div>




</asp:Content>
