<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarEmpleado.aspx.cs" Inherits="ProyectoJCAA.Forms.EditarEmpleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="jumbotron text-center text-warning">
        <h3><strong>Editar Empleado</strong></h3>
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
                <strong><asp:Label ID="Label5" runat="server" Text="Fecha de Nacimiento:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtFechaNacimiento" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        
        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label6" runat="server" Text="Departamento:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtDepartamento" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        
        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label7" runat="server" Text="Estado Civil:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtEstadoCivil" runat="server" Width="100%"></asp:TextBox>
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
                <strong><asp:Label ID="Label9" runat="server" Text="Jefe:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:DropDownList ID="ddlListaJefe" runat="server" DataValueField="IdEmpleado" Width="100%" DataTextField="Nombre" OnSelectedIndexChanged="ddlListaJefe_SelectedIndexChanged" ></asp:DropDownList>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label10" runat="server" Text="Estado:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtEstado" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">
            <div class="col-md-2 col-lg-2 col-xl-2 col-sm-12 col-xs-12" style="padding-top:5px;">
                <strong><asp:Label ID="Label4" runat="server" Text="Correo:"></asp:Label></strong>
            </div>
            <div class="col-md-10 col-lg-10 col-xl-10 col-sm-12 col-xs-12" style="padding-top:5px;" >
                <asp:TextBox ID="txtCorreo" runat="server" Width="100%"></asp:TextBox>
            </div>
        </div>

        

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12" style="padding-top:10px; top: 10px; left: 0px;">
            <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">        
                <asp:Button ID="btnGuardar" runat="server"  Text="Guardar" Width="100%" OnClick="btnGuardar_Click" />
            </div>
        </div>

        <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12" style="padding-top:10px; top: 10px; left: 0px;">
            <div class="col-md-12 col-lg-12 col-xl-12 col-sm-12 col-xs-12">         
                <asp:Button ID="btnCancelar" runat="server"  Text="Cancelar" Width="100%" OnClick="btnCancelar_Click" />
            </div>
        </div>

    </div>

</asp:Content>
