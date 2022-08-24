using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoJCAA.Data.BLL;

namespace ProyectoJCAA.Forms
{
    public partial class Registro : System.Web.UI.Page
    {

        Data.DAL.DsProyecto.EmpleadosDataTable mEmpleados;
        Data.BLL.clsP5Empleado mEmpleado = new Data.BLL.clsP5Empleado();

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }

        private void CargarDatos()
        {
            mEmpleados = mEmpleado.getEmpleados();
            ddlListaEscolta.DataSource = mEmpleados;
            ddlListaEscolta.DataBind();
        }

        protected void ddlListaEscolta_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            fnAgregarABiracora();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro");
        }

        private void fnAgregarABiracora()
        {
            DateTime fecha_Ingreso = DateTime.Now;
            try
            {
                clsP5Bitacora mBitacora = new clsP5Bitacora();
                int Guia = int.Parse(ddlListaEscolta.SelectedItem.Value);
                mBitacora.agregarBitacora(txtNumero_Identificacion.Text.Trim(), txtApellidos.Text.Trim(), txtNombre.Text.Trim(),
                    txtTipo.Text.Trim(), fecha_Ingreso, Guia);
                Response.Redirect("BitacoraAcceso");
            }
            catch
            {


            }
        }
    }
}