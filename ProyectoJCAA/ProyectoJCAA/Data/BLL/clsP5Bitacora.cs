using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoJCAA.Data.DAL;
using ProyectoJCAA.Data.DAL.DsProyectoTableAdapters;

namespace ProyectoJCAA.Data.BLL
{
    public class clsP5Bitacora
    {
        private DsProyecto mds = new DsProyecto();
        private Bitacora_AccesoTableAdapter mBitacora = new Bitacora_AccesoTableAdapter();

        public DsProyecto.Bitacora_AccesoDataTable GetBitacoras()
        {
            mBitacora.Fill(mds.Bitacora_Acceso);
            return mds.Bitacora_Acceso;

        }


        public DsProyecto.Bitacora_AccesoRow cargarXnumero_Iden(String vNumero_Identificacion)
        {
            mBitacora.FillByNumero_Identificacion(mds.Bitacora_Acceso, vNumero_Identificacion);
            if (mds.Bitacora_Acceso.Rows.Count == 1)
            {
                return (DsProyecto.Bitacora_AccesoRow)mds.Bitacora_Acceso.Rows[0];
            }
            else
            {
                DsProyecto.Bitacora_AccesoRow mrow = (DsProyecto.Bitacora_AccesoRow)mds.Bitacora_Acceso.NewRow();
                return mrow;
            }
        }

        public bool agregarBitacora(String Numero_Identificacion, String Apellidos, String Nombre,
            String Tipo, DateTime Fecha_Ingreso , int Guia)
        {
            try
            {
                mBitacora.InsertarAcceso(Numero_Identificacion, Apellidos, Nombre, Tipo, Fecha_Ingreso, Guia);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

    }
}