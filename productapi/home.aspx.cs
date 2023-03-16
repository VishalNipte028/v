using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace productapi
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("show.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        { 

            int categoryid;
        String productname,categoryname;
             productname = TextBox5.Text;
             categoryid = Int32.Parse(TextBox6.Text);
            categoryname = TextBox7.Text;
            string url;
            url = "Data Source=DESKTOP-B49TTNK\\SQLEXPRESS;Initial Catalog=product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
        string k;
   
        k = "insert into products(productname,catagoryid,catagoryname )values('" + productname + "','" + categoryid + "','" + categoryname + "')";
                SqlCommand cmd = new SqlCommand(k, con);
            con.Open();
            cmd.ExecuteNonQuery();
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            Response.Write("<script>alert('record inserted')</script>");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int productid;
            productid = Int32.Parse(TextBox1.Text);
            string url;
            url = "Data Source=DESKTOP-B49TTNK\\SQLEXPRESS;Initial Catalog=product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
            string k;
            k = "delete from products where productid ='"+ productid +"'";
            SqlCommand cmd = new SqlCommand(k, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record deleted')</script>");
            TextBox1.Text = "";



        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            int productid, catagoryid;
            string productname, catagoryname;
            productname = TextBox5.Text;
            catagoryname = TextBox7.Text;
            productid = Int32.Parse(TextBox1.Text);
            catagoryid = Int32.Parse(TextBox6.Text);
            string url;
            url = "Data Source=DESKTOP-OTLPFNM\\SQLEXPRESS;Initial Catalog=Product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
            string k;
            k = "update Products set productname='" + productname + "',catagoryid='" + catagoryid + "',catagoryname='" + catagoryname + "' where productid='" + productid + "' ";
            SqlCommand cmd = new SqlCommand(k, con);
            con.Open();

            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

                Response.Write("<script>alert('Product Update')</script>");
            }
            else
            {
                Response.Write("<script>alert('Product Not Update')</script>");
            }

        }

       
        protected void Button5_Click(object sender, EventArgs e)
        {
            int productid;
            productid = Int32.Parse(TextBox1.Text);
            string url;
            url = "Data Source=DESKTOP-B49TTNK\\SQLEXPRESS;Initial Catalog=product;Integrated Security=true;";
            SqlConnection con = new SqlConnection(url);
            string k;
            k = "select * from products where productid='" + productid + "'";
            SqlCommand cmd = new SqlCommand(k, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Write("<script>alert'product Found'</script>");

                TextBox1.Text = reader["productid"].ToString();
                TextBox5.Text = reader["productname"].ToString();
                TextBox6.Text = reader["catagoryid"].ToString();
                TextBox7.Text = reader["catagoryname"].ToString();

            }
            else
            {
                Response.Write("<script>alert'product Not Found'</script>");
            }



        }

       

     
    }
}