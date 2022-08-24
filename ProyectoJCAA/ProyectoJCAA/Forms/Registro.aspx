<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoJCAA.Forms.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center text-warning">
        <h3><strong>Registro</strong></h3>
    </div>


    <div class="container">

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label1" runat="server" Text="Identificacion:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtNumero_Identificacion" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label2" runat="server" Text="Apellidos:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtApellidos" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        
        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtNombre" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>
        
        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label8" runat="server" Text="Tipo:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtTipo" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        
        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label9" runat="server" Text="Escolta:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:DropDownList ID="ddlListaEscolta" runat="server" DataValueField="IdEmpleado" Width="100%" DataTextField="Nombre" OnSelectedIndexChanged="ddlListaEscolta_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12" style="padding-top:10px; top: 10px; left: 0px;">
            <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">   
                <asp:Button ID="btnGuardar" runat="server"  Text="Guardar" Width="100%" OnClick="btnGuardar_Click" />
            </div>
        </div>


    </div>

</asp:Content>
