using FARMACIA_.DATOS;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FARMACIA_.LOGICA
{
    public class LSucursal
    {
        Sucursal sucursal = new Sucursal();
        public static String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
        SqlConnection conexion = new SqlConnection(s); 

        public void Crear(string nombre, string ubicacion, string correo, string telefono)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" INSERT INTO SUCURSAL VALUES( '" + nombre + "','" + ubicacion + "','" + correo + "','" + telefono+ "')", conexion);
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }

            conexion.Close();
        }
    
        public void Eliminar(int id)
        {
            try
            {
                conexion.Open();
                SqlCommand comando = new SqlCommand(" DELETE SUCURSAL WHERE ID = '" + id + "'", conexion);
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            conexion.Close();
        }
    }
}