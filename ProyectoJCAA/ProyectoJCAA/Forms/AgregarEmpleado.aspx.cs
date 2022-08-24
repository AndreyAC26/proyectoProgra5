using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoJCAA.Data.BLL;

namespace ProyectoJCAA.Forms
{
    public partial class AgregarEmpleado : System.Web.UI.Page
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
            ddlListaJefe.DataSource = mEmpleados;
            ddlListaJefe.DataBind();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            fnAgregarEmpleado();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empleados");
        }

        private void fnAgregarEmpleado()
        {
            try
            {
                clsP5Empleado mEmpleado = new clsP5Empleado();
                int mIdJefe = int.Parse(ddlListaJefe.SelectedItem.Value);
                mEmpleado.agregarEmpleado(txtNumero_Identificacion.Text.Trim(), txtApellidos.Text.Trim(), txtNombre.Text.Trim(), txtFechaNacimiento.Text.Trim(),
                    txtDepartamento.Text.Trim(), txtEstadoCivil.Text.Trim(), txtTipo.Text.Trim(), mIdJefe, txtEstado.Text.Trim(),
                    txtCorreo.Text.Trim());
                Response.Redirect("Empleados");
            }
            catch
            {


            }
        }

        protected void ddlListaJefe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}