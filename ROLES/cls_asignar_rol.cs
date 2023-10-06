using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ROLES
{
    public class cls_asignar_rol
    {
        private string str_mensaje;
        private string str_usuario;
        private int int_rol;
        private string str_fecha;

        public void fnt_agregarpersona(string usuario, int rol, string fecha)
        {
            try
            {
                cls_conexion objConecta = new cls_conexion();
                SqlCommand con = new SqlCommand("SP_Asignar_Rol", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@usuario", usuario);
                con.Parameters.AddWithValue("@rol", rol);
                con.Parameters.AddWithValue("@fecha_caduca", fecha);
                objConecta.connection.Open();
                con.ExecuteNonQuery();
                objConecta.connection.Close();
                str_mensaje = "Persona  y Rol registrados con éxito";
            }
            catch (Exception ex)
            {
                str_mensaje = "Error: " + ex.Message;
            }


        }


        public string getMensaje() { return this.str_mensaje; }
        public string getUsuario() { return this.str_usuario; }
        public string getFecha() { return this.str_fecha; }
        public int getRol() { return this.int_rol; }
    }
}