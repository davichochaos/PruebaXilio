using Negocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestXilio
{
    public partial class EmpleadosView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListaEmpleados.DataSource = new LogicaEmpleados().ObtenerEmpleados();
                ListaEmpleados.DataBind();
            }
        }

        protected void BtnGuardarEmpleado_Click(object sender, EventArgs e)
        {
            string[] respuesta = new string[2];
            respuesta = new LogicaEmpleados().GuardarEmpleado(new Entidad.Employed { Area = TxtArea.Text, Cargo = TxtCargo.Text, Cedula = TxtCedula.Value, Nombre = TxtNombre.Text });
            if (respuesta[0] == "0")
            {
                WlblMsm.Attributes.Add("class", "alert alert-danger");
                WlblMsm.InnerHtml = respuesta[1];
                return;
            }
            WlblMsm.Attributes.Add("class", "alert alert-success");
            WlblMsm.InnerHtml = "Se ha guardado los estados con éxito";
        }

        protected void LkBtnAsignacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TestXilio/MaquinariaView.aspx");
        }
    }
}