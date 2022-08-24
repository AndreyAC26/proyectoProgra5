<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="ProyectoJCAA.Forms.Empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="jumbotron text-center text-warning">
        <h3><strong>Empleados</strong></h3>
    </div>
    <div class="col-md-12 col-lg-12 col-xl-12 col-xs-12 col-sm-12" style="margin-bottom: 10px; margin-top:20px">
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
        <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" />
        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" />
    </div>
        

    <div class="container-fluid">
        <asp:GridView ID="gridEmpleados" runat="server" Width="100%" AutoGenerateSelectButton="True" AutoGenerateColumns="False" OnSelectedIndexChanged="gridEmpleados_SelectedIndexChanged" >
            <Columns>
                <asp:BoundField DataField="IdEmpleado" HeaderText="IdEmpleado" />
                <asp:BoundField DataField="Numero_Identificacion" HeaderText="N. Identificacion" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Departamento" HeaderText="Departamento" />
                <asp:BoundField DataField="Jefe_Directo" HeaderText="Jefe Directo" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
