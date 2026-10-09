<%@ Page Title="Registrar Activo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Contro_de_activos.About" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Nuevo Activo</h2>

    <div>
        <asp:Label ID="lblNombre" runat="server" Text="Nombre:" TextMode="SingleLine"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" ></asp:TextBox>
         <!--VALIDACION-->
        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="⚠ Debe ingresar el nombre." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblSerie" runat="server" Text="Número Serie:" TextMode="Number"></asp:Label>
        <asp:TextBox ID="txtSerie" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSerie" ErrorMessage="⚠ Debe ingresar la serie." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblModelo" runat="server" Text="Modelo:" TextMode="SingleLine"></asp:Label>
        <asp:TextBox ID="txtModelo" runat="server" CssClass="form-control" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtModelo" ErrorMessage="⚠ Debe ingresar el modelo." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblMarca" runat="server" Text="Marca:" TextMode="SingleLine"></asp:Label>
        <asp:TextBox ID="txtMarca" runat="server" CssClass="form-control" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMarca" ErrorMessage="⚠ Debe ingresar la marca." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblDescript" runat="server" Text="Descripción:" TextMode="MultiLine"></asp:Label>
        <asp:TextBox ID="txtDescript" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescript" ErrorMessage="⚠ Debe ingresar una descripción." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-success" OnClick="btnAgregar_Click" />
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" CssClass="btn btn-primary" OnClick="btnLimpiar_Click" />
        
    </div>

        <hr />
    <div class="jumbotron">
        <h3>Lista de Activos Registrados</h3>
    <asp:GridView ID="dgvActivos" runat="server" CssClass="table table-bordered" AutoGenerateColumns="true"></asp:GridView>
    </div>

    <div>
        <p><a runat="server" href="~/Default" class="btn btn-primary btn-lg">Ir a Inicio</a></p>
    </div>
     
</asp:Content>