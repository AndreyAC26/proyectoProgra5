<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BitacoraAcceso.aspx.cs" Inherits="ProyectoJCAA.Forms.BitacoraAcceso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center text-warning">
        <h3><strong>Bitacora de Acceso a la Compañia</strong></h3>
    </div>

       <div class="container-fluid">
        <asp:GridView ID="gridBitacora" runat="server" Width="100%" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="Numero_Identificacion" HeaderText="N. Identificacion" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Fecha_Ingreso" HeaderText="Fecha de ingreso" />
                <asp:BoundField DataField="Guia" HeaderText="Jefe Directo o Guia" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
