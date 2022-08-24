<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="ProyectoJCAA.Forms.Acceso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="jumbotron text-center text-warning">
        <h3><strong>Acceso</strong></h3>
    </div>

    <div class="container">

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <strong>
                    <asp:Label ID="Label1" runat="server" Text="Identificacion:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <asp:TextBox ID="txtNumero_Identificacion" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <strong>
                    <asp:Label ID="Label2" runat="server" Text="Apellidos:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <asp:TextBox ID="txtApellidos" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>


        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <strong>
                    <asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <asp:TextBox ID="txtNombre" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>



        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <strong>
                    <asp:Label ID="Label8" runat="server" Text="Tipo:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <asp:TextBox ID="txtTipo" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>


        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <strong>
                    <asp:Label ID="Label9" runat="server" Text="Jefe:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <asp:DropDownList ID="ddlListaJefe" runat="server" DataValueField="IdEmpleado" Width="100%" DataTextField="Nombre" OnSelectedIndexChanged="ddlListaJefe_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>



        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <strong>
                    <asp:Label ID="Label10" runat="server" Text="Estado:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top: 5px;">
                <asp:TextBox ID="txtFechaIngreso" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

       <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12" style="padding-top: 10px; top: 10px; left: 0px;">
            <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" Width="100%" OnClick="btnAgregar_Click"  />
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12" style="padding-top: 10px; top: 10px; left: 0px;">
            <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
                <asp:Button ID="btnVolver" runat="server" Text="Volver" Width="100%" OnClick="btnVolver_Click" />
            </div>
        </div>

    </div>

</asp:Content>
