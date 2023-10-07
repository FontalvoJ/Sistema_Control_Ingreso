using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ROLES
{
    public partial class frm_retirar_rol1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_retirarrrol_Click(object sender, EventArgs e)
        {
            cls_retirar_rol objRol = new cls_retirar_rol();

            string usuario = txt_usuario.Text;
           

            if (int.TryParse(ddl_rol.SelectedValue, out int rol))
            {
                objRol.fnt_retirarpersona(usuario, rol);
                lbl_mensaje.Text = objRol.getMensaje();
            }
            else
            {
                lbl_mensaje.Text = "Error: Los valores de rol no son números enteros válidos.";
            }
        }

        protected void btn_nuevo_Click(object sender, EventArgs e)
        {
            txt_usuario.Text = string.Empty;
            txt_usuario.Focus();
            ddl_rol.SelectedIndex = 0;
            lbl_mensaje.Text = string.Empty;
        }
    }
}