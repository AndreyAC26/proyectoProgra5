using ProyectoJCAA.Data.BLL;
using ProyectoJCAA.Data.DAL;
using System;

namespace ProyectoJCAA.Forms
{
    public partial class Login : System.Web.UI.Page
    {
        int mIdEmpleado;
        clsP5Empleado mEmpleado1 = new clsP5Empleado();
        Data.DAL.DsProyecto.VisitantesDataTable mVisitantes;
        Data.BLL.clsP5Visitante mVisitante = new Data.BLL.clsP5Visitante();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void traerXIdentificacion()
        {
            DsProyecto.EmpleadosRow empleadoRow = mEmpleado1.getEmpleadoXIdEmpleado(mIdEmpleado);
            clsP5Empleado vEmpleado = new clsP5Empleado();

            if (vEmpleado.cargarXnumero_Identificacion(txtNumero_Identificacion.Text.Trim()) != null)
            {
                var ms = Session["Numero_Identificacion"];

                if (ms != null) 
                {
                    Response.Redirect("Acceso");
                }
            }
            else
            {
                Response.Redirect("Registro");
            }

       
        }
        

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            traerXIdentificacion();
        }

        protected void txtNumero_Identificacion_TextChanged(object sender, EventArgs e)
        {
            Session["Numero_Identificacion"] = txtNumero_Identificacion.Text.Trim();
        }
    }
}