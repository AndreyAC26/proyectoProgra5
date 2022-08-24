using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoJCAA.Data.BLL;
using ProyectoJCAA.Data.DAL;
using ProyectoJCAA.Data.DAL.DsProyectoTableAdapters;

namespace ProyectoJCAA.Forms
{
    public partial class Acceso : System.Web.UI.Page
    {
        string mIdEmpleado;
        string mIdentificacion;
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
                
                    CargarDdl();
                    try
                    {   
                        string identificaion = txtNumero_Identificacion.Text.Trim();
                        var ms = Session["Numero_Identificacion"].ToString();
                        mIdEmpleado = ms;
                        CargarDatos();
                        if(identificaion == null)
                        {
                        Response.Redirect("Registro");
                        }
                        else
                        { 
                            
                        }
                    }
                    catch
                    {

                    }

                
            }
        }

        private void CargarDatos()
        {

            DsProyecto.EmpleadosRow empleadosRow = mEmpleado1.cargarXnumero_Identificacion(mIdEmpleado);
            if (empleadosRow != null)
            {
                txtNumero_Identificacion.Text = empleadosRow.Numero_Identificacion.Trim();
                txtApellidos.Text = empleadosRow.Apellidos.Trim();
                txtNombre.Text = empleadosRow.Nombre.Trim();
                txtTipo.Text = empleadosRow.Tipo.Trim();
                txtFechaIngreso.Text = empleadosRow.Estado.Trim();
                ddlListaJefe.SelectedValue = empleadosRow.Jefe_Directo.ToString();
                

            }
        }

        private void CargarDdl()
        {
            mEmpleados = mEmpleado.getEmpleados();
            ddlListaJefe.DataSource = mEmpleados;
            ddlListaJefe.DataBind();
        }



        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login");

        }

        protected void ddlListaJefe_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            
            fnAgregarABiracora();
        }

        private void fnAgregarABiracora()
        {
            DateTime fecha_Ingreso = DateTime.Now;
            try
            {
                clsP5Bitacora mBitacora = new clsP5Bitacora();
                int Guia = int.Parse(ddlListaJefe.SelectedItem.Value);
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