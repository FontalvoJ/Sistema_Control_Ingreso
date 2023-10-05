using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace ROLES
{
    public class cls_roles
    {
     
            private string str_mensaje;
            private string str_pnombre;
            private string str_snombre;
            private string str_papellido;
            private string str_sapellido;
            private string str_contacto;
            private string str_correo;
            private int int_sexo;

            public void fnt_agregarpersona(string id, string pnombre, string snombre, string papellido, string sapellido, string contacto, string correo, int sexo)
            {
                try
                {
                    cls_conexion objConecta = new cls_conexion();
                    SqlCommand con = new SqlCommand("SP_Registrar", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@id", id);
                    con.Parameters.AddWithValue("@p_nombre", pnombre);
                    con.Parameters.AddWithValue("@s_nombre", snombre);
                    con.Parameters.AddWithValue("@p_apellido", papellido);
                    con.Parameters.AddWithValue("@s_apellido", sapellido);
                    con.Parameters.AddWithValue("@contacto", contacto);
                    con.Parameters.AddWithValue("@correo", correo);
                    con.Parameters.AddWithValue("@fkcodigo_tbl_sexo", sexo);
                    objConecta.connection.Open();
                    con.ExecuteNonQuery();
                    objConecta.connection.Close();
                    str_mensaje = "Persona registrada con éxito";
                }
                catch (Exception ex)
                {
                    str_mensaje = "Error: " + ex.Message;
                }


            }
         public string getMensaje() { return this.str_mensaje; }
            public string getPnombre() { return this.str_pnombre; }
            public string getSnombre() { return this.str_snombre; }
            public string getPapellido() { return this.str_papellido; }
            public string getSapellido() { return this.str_sapellido; }
            public string getContacto() { return this.str_contacto; }
            public string getCorreo() { return this.str_correo; }
            public int getSexo() { return this.int_sexo; }
        }
    }