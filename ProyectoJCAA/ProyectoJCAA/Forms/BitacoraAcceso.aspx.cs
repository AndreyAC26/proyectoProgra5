using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ProyectoJCAA.Data.BLL;

namespace ProyectoJCAA.Forms
{
    public partial class BitacoraAcceso : System.Web.UI.Page
    {
        Data.DAL.DsProyecto.Bitacora_AccesoDataTable mtaBitacora;
        Data.BLL.clsP5Bitacora mBitacora = new Data.BLL.clsP5Bitacora();

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarDatos();
        }

        private void CargarDatos()
        {
            clsP5Bitacora mBitacora = new clsP5Bitacora();
            mtaBitacora = mBitacora.GetBitacoras();
            gridBitacora.DataSource = mtaBitacora;
            gridBitacora.DataBind();
        }


    }
}