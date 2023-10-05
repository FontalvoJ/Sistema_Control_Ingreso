using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ROLES.cls_roles;

namespace ROLES
{
    public partial class frm_control_ingresos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            cls_roles objRol = new cls_roles();

            string id = txt_id.Text;
            string pnombre = txt_pnombre.Text;
            string snombre = txt_snombre.Text;
            string papellido = txt_papellido.Text;
            string sapellido = txt_sapellido.Text;
            string contacto = txt_contacto.Text;
            string correo = txt_correo.Text;

            if (int.TryParse(ddl_sexo.SelectedValue, out int sexo))
            {
            
                objRol.fnt_agregarpersona( id, pnombre, snombre, papellido, sapellido, contacto, correo, sexo);


                lbl_mensaje.Text = objRol.getMensaje();
            }
            else
            {
                lbl_mensaje.Text = "Error: Los valores de sexo no son números enteros válidos.";
            }
        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {
            txt_id.Text = string.Empty;
            txt_id.Focus();
            txt_pnombre.Text = string.Empty;
            txt_snombre.Text = string.Empty;
            txt_papellido.Text = string.Empty;
            txt_sapellido.Text = string.Empty;
            txt_contacto.Text = string.Empty;
            txt_correo.Text = string.Empty;
            ddl_sexo.SelectedIndex = 0; 
            lbl_mensaje.Text = string.Empty;
        }
    }
}