using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoJCAA.Data.DAL;
using ProyectoJCAA.Data.DAL.DsProyectoTableAdapters;

namespace ProyectoJCAA.Data.BLL
{
    public class clsP5Visitante
    {
        private DsProyecto mds = new DsProyecto();
        private VisitantesTableAdapter mVisitante = new VisitantesTableAdapter();

        public DsProyecto.VisitantesDataTable getVisitantes()
        {
            mVisitante.Fill(mds.Visitantes);
            return mds.Visitantes;

        }

        public DsProyecto.VisitantesRow getEmpleadoXNumeroId(string vNumero_Identificacion)
        {
            mVisitante.FillByNumero_Identificacion(mds.Visitantes, vNumero_Identificacion);
            if (mds.Visitantes.Rows.Count == 1)
            {
                return (DsProyecto.VisitantesRow)mds.Visitantes.Rows[0];
            }
            else
            {
                DsProyecto.VisitantesRow mrow = (DsProyecto.VisitantesRow)mds.Visitantes.NewRow();
                return mrow;
            }
        }

        public DsProyecto.VisitantesRow getEmpleadoXIdVisitante(int vIdVisitante)
        {
            mVisitante.FillByIdVisitante(mds.Visitantes, vIdVisitante);
            if (mds.Visitantes.Rows.Count == 1)
            {
                return (DsProyecto.VisitantesRow)mds.Visitantes.Rows[0];
            }
            else
            {
                DsProyecto.VisitantesRow mrow = (DsProyecto.VisitantesRow)mds.Visitantes.NewRow();
                return mrow;
            }
        }

        public bool agregarVisitante(String vNumero_Identificacion, String vApellidos, String vNombre,
            String vTipo, int vEscolta)
        {
            try
            {
                mVisitante.InsertarVisitante(vNumero_Identificacion, vApellidos, vNombre, vTipo, vEscolta);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }




    }
}