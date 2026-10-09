using System;
using System.Collections.Generic;
using System.Web.Services;

namespace Contro_de_activos
{
   
    // Clase Activo
    public class Activo
    {
        public string Nombre { get; set; }

        public int Serie { get; set; }

        public string Marca { get; set; }

        public string Modelo { get; set; }

        public string Descripción { get; set; }
    }

    
    public partial class About : System.Web.UI.Page
    {
        // Lista de activos
        private static List<Activo> listaActivos = new List<Activo>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarActivos();
            }
        }


        // MÉTODO USANDO AJAX
        [WebMethod]
        public static bool ValidarNombre(string nombre)
        {
            if (string.IsNullOrWhiteSpace(nombre))
            {
                return false;
            }

            return true;
        }



        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Activo activo = new Activo();

            activo.Nombre = txtNombre.Text;
            activo.Serie = int.Parse(txtSerie.Text);
            activo.Descripción = txtDescript.Text;
            activo.Marca = txtMarca.Text;
            activo.Modelo = txtModelo.Text;

            listaActivos.Add(activo);

            Limpiar();
            MostrarActivos();
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }


        private void MostrarActivos()
        {
            dgvActivos.DataSource = listaActivos;
            dgvActivos.DataBind();
        }
       
        private void Limpiar()
        {
            txtNombre.Text = "";
            txtSerie.Text = "";
            txtDescript.Text = "";
            txtMarca.Text = "";
            txtModelo.Text = "";
        }


    }
    
}