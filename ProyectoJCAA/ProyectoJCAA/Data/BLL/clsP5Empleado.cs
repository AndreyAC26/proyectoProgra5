using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProyectoJCAA.Data.DAL;
using ProyectoJCAA.Data.DAL.DsProyectoTableAdapters;

namespace ProyectoJCAA.Data.BLL
{
    public class clsP5Empleado
    {
        private DsProyecto mds = new DsProyecto();
        private EmpleadosTableAdapter mEmpleado = new EmpleadosTableAdapter();

        public DsProyecto.EmpleadosDataTable getEmpleados()
        {
            mEmpleado.Fill(mds.Empleados);
            return mds.Empleados;

        }

        public DsProyecto.EmpleadosDataTable getEmpleadoXId(int vIdEmpleado)
        {
            mEmpleado.FillByIdEmpleado(mds.Empleados, vIdEmpleado);
            return mds.Empleados;
        }

        public DsProyecto.EmpleadosRow cargarXnumero_Identificacion(String vNumero_Identificacion)
        {
            mEmpleado.FillByNumero_Identificacion(mds.Empleados, vNumero_Identificacion);
            if(mds.Empleados.Rows.Count == 1)
            {
                return (DsProyecto.EmpleadosRow)mds.Empleados.Rows[0];
            }
            else
            {
                DsProyecto.EmpleadosRow mrow = (DsProyecto.EmpleadosRow)mds.Empleados.NewRow();
                return mrow;
            }
        }

        public DsProyecto.EmpleadosRow getEmpleadoXIdEmpleado(int vIdEmpleado)
        {
            mEmpleado.FillByIdEmpleado(mds.Empleados, vIdEmpleado);
            if (mds.Empleados.Rows.Count == 1)
            {
                return (DsProyecto.EmpleadosRow)mds.Empleados.Rows[0];
            }
            else
            {
                DsProyecto.EmpleadosRow mrow = (DsProyecto.EmpleadosRow)mds.Empleados.NewRow();
                return mrow;
            }
        }

        public bool agregarEmpleado(String Numero_Identificacion, String Apellidos, String Nombre,
            String Fecha_Nacimiento, String Departamento, String Estado_Civil, String Tipo,
            int Jefe_Directo, String Estado, String Correo)
        {
            try
            {
                mEmpleado.InsertarEmpleado(Numero_Identificacion, Apellidos, Nombre, Fecha_Nacimiento,
                    Departamento, Estado_Civil, Tipo, Jefe_Directo, Estado, Correo);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }


        public bool ActualizarEmpleado(String vNumero_Identificacion, String vApellidos, String vNombre,
            String vFecha_Nacimiento, String vDepartamento, String vEstado_Civil, String vTipo, int vJefe_Directo,
            String vEstado, String vCorreo, int vIdEmpleado)
        {
            try
            {
                mEmpleado.ActualizarQuery(vNumero_Identificacion, vApellidos, vNombre, vFecha_Nacimiento,
                    vDepartamento, vEstado_Civil, vTipo, vJefe_Directo, vEstado, vCorreo, vIdEmpleado);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }

        }

        public bool BorrarEmpleado(int vIdEmpleado)
        {
            try
            {
                mEmpleado.BorrarQuery(vIdEmpleado);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }




    }
}