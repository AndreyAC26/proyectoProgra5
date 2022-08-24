using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoJCAA.Data.BLL;
using ProyectoJCAA.Data.DAL;

namespace ProyectoJCAA.Forms
{
    public partial class EditarEmpleado : System.Web.UI.Page
    {
        int mIdEmpleado;
        clsP5Empleado mEmpleado1 = new clsP5Empleado();
        Data.DAL.DsProyecto.EmpleadosDataTable mEmpleados;
        Data.BLL.clsP5Empleado mEmpleado = new Data.BLL.clsP5Empleado();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {


            }
            else
            {
                CargarDatos();
                try
                {
                    var ms = Session["IdEmpleado"].ToString();
                    mIdEmpleado = int.Parse(ms.ToString());
                    CargarEmpleado();
                }
                catch
                {

                }
            }           
        }


        private void CargarDatos()
        {

            mEmpleados = mEmpleado.getEmpleados();
            ddlListaJefe.DataSource = mEmpleados;
            ddlListaJefe.DataBind();
        }

        protected void ddlListaJefe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empleados");
        }

        private void CargarEmpleado()
        {
            DsProyecto.EmpleadosRow empleadosRow = mEmpleado1.getEmpleadoXIdEmpleado(mIdEmpleado);
            if (empleadosRow != null)
            {
                txtNumero_Identificacion.Text = empleadosRow.Numero_Identificacion.Trim();
                txtApellidos.Text = empleadosRow.Apellidos.Trim();
                txtNombre.Text = empleadosRow.Nombre.Trim();
                txtFechaNacimiento.Text = empleadosRow.Fecha_Nacimiento.Trim();
                txtDepartamento.Text = empleadosRow.Departamento.Trim();
                txtEstadoCivil.Text = empleadosRow.Estado_Civil.Trim();
                txtTipo.Text = empleadosRow.Tipo.Trim();
                ddlListaJefe.SelectedValue = empleadosRow.Jefe_Directo.ToString();
                txtEstado.Text = empleadosRow.Estado.Trim();
                txtCorreo.Text = empleadosRow.Correo.Trim();
            }
        }

        private void fnGuardarEmpleado()
        {
            try
            {
                var ms = Session["IdEmpleado"].ToString();
                mIdEmpleado = int.Parse(ms.ToString());
                int mJefe = int.Parse(ddlListaJefe.SelectedItem.Value);
                mEmpleado1.ActualizarEmpleado(txtNumero_Identificacion.Text.Trim(), txtApellidos.Text.Trim(),
                    txtNombre.Text.Trim(), txtFechaNacimiento.Text.Trim(), txtDepartamento.Text.Trim(),
                    txtEstadoCivil.Text.Trim(), txtTipo.Text.Trim(), mJefe, txtEstado.Text.Trim(), txtCorreo.Text.Trim(),
                    mIdEmpleado);
                Response.Redirect("Empleados");
            }
            catch
            {

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            fnGuardarEmpleado();
        }
    }
}