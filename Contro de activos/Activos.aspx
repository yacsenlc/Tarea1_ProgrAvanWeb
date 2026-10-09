<%@ Page Title="Consulta Activo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="Contro_de_activos.About" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  
   <div class="jumbotron" style="background-color: cadetblue;">
    <h3>Consulta de Activos Registrados</h3>

    <!-- Buscador -->
    <div class="form-group">
        <input type="text" id="txtBuscar" class="form-control" placeholder="Buscar activo..." onkeyup="buscarActivo()" />
    </div>
    <!-- Tabla de activos -->
    <asp:GridView ID="dgvActivos" runat="server" CssClass="table table-bordered table-striped" AutoGenerateColumns="true"></asp:GridView>
</div>
    <!-- FUNCION QUE PERMITE PODER BUSCAR LOS ACTIVOS EN LA TABLA -->
    <script>
        function buscarActivo() {
            var input = document.getElementById("txtBuscar");
            var filtro = input.value.toLowerCase();

            var tabla = document.getElementById("<%= dgvActivos.ClientID %>");
            var filas = tabla.getElementsByTagName("tr");

            for (var i = 1; i < filas.length; i++) {
                var texto = filas[i].textContent.toLowerCase();

                if (texto.indexOf(filtro) > -1) {
                    filas[i].style.display = "";
                } else {
                    filas[i].style.display = "none";
                }
            }
        }
    </script>

     <div>
        <p><a runat="server" href="~/Default" class="btn btn-primary btn-lg">Ir a Inicio</a></p>
    </div>

</asp:Content>
