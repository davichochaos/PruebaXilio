using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;

namespace Negocios
{
    public class LogicaEmpleados
    {
        private TestDataContext dc = new TestDataContext();
        public List<Employed> ObtenerEmpleados()
        {
            var listado = (from e in dc.Empleados select new Employed
            {
                Area = e.Area,
                Cargo = e.Cargo,
                Cedula = e.Cedula,
                Nombre = e.Nombre,
                IdEmpleado = e.Id,
            }).ToList();
            return listado;
        }

        public string[] GuardarEmpleado(Employed emp)
        {
            string[] retorna = new string[2];
            try
            {
                Empleado data = new Empleado();
                data.Area = emp.Area;
                data.Cargo = emp.Cargo;
                data.Nombre = emp.Nombre;
                data.Cedula = emp.Cedula;
                dc.Empleados.InsertOnSubmit(data);
                dc.SubmitChanges();
                retorna[0] = "1";
                retorna[1] = "";
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
                retorna[0] = "0";
                retorna[1] = "Error:" + ex.Message;
            }
            return retorna;
        }
    }
}
