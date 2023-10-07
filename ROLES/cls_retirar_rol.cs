using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ROLES
{
    public class cls_retirar_rol
    {
        private string str_mensaje;
        private string str_usuario;
        private int int_rol;

        public void fnt_retirarpersona(string usuario, int rol)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_Retirar_Rol", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@usuario", usuario);
                con.Parameters.AddWithValue("@rol", rol);
                objConecta.connection.Open();
                con.ExecuteNonQuery();
                objConecta.connection.Close();
                str_mensaje = "Rol retirado con éxito";
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }
        }

        public string getMensaje() { return this.str_mensaje; }
        public string getUsuario() { return this.str_usuario; }
        public int getRol() { return this.int_rol; }
    }
}