using FARMACIA_.LOGICA;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FARMACIA_.VISTAS
{
    public partial class Sucursales : System.Web.UI.Page
    {
        LSucursal lsucursal = new LSucursal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarGrid();
            }
        }


        //METODO QUE LLENA EL GRID CON LA INFORMACIÓN DE LOS RESULTADOS DE LAS VOTACIONES
        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM SUCURSAL"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridViewSucursales.DataSource = dt;
                            GridViewSucursales.DataBind();
                        }
                    }
                }
            }
        }

        protected void BAGREGAR_Click(object sender, EventArgs e)
        {
            string nombre = TNOMBRE.Text.Trim();
            string ubicacion = TUBICACION.Text.Trim();
            string correo = TCORREO.Text.Trim();
            string telefono = TTELEFONO.Text.Trim();

            lsucursal.Crear(nombre,ubicacion, correo, telefono);

            LlenarGrid();
        }

        protected void BELIMINAR_Click(object sender, EventArgs e)
        {
            int id = 0;
            int.TryParse(TID.Text.Trim(), out id);

            lsucursal.Eliminar(id);

            LlenarGrid();
        }
    }
}