using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoJCAA.Data.BLL;

namespace ProyectoJCAA.Forms
{
    public partial class Empleados : System.Web.UI.Page
    {
        int mIdEmpleado;
        Data.DAL.DsProyecto.EmpleadosDataTable mtaEmpleado;
        Data.BLL.clsP5Empleado mEmpleado = new Data.BLL.clsP5Empleado();

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }

        private void CargarDatos()
        {
            clsP5Empleado mEmpleado = new clsP5Empleado();
            mtaEmpleado = mEmpleado.getEmpleados();
            gridEmpleados.DataSource = mtaEmpleado;
            gridEmpleados.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarEmpleado");
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            try
            {
                var ms = Session["IdEmpleado"];
                if (ms != null)
                {
                    Response.Redirect("EditarEmpleado");
                }
            }
            catch
            {

            }


        }

        protected void gridEmpleados_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["IdEmpleado"] = gridEmpleados.SelectedRow.Cells[1].Text.ToString();
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            var ms = Session["IdEmpleado"];
            mIdEmpleado = int.Parse(ms.ToString());
            mEmpleado.BorrarEmpleado(mIdEmpleado);
            Response.Redirect("Empleados");
        }
    }
}