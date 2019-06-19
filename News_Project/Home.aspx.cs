using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;

namespace News_Project
{
    public partial class Home : System.Web.UI.Page
    {
        ArrayList my_news_list = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["News_DatabaseConnectionString4"].ConnectionString);
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT *FROM tblnews2", connection);
            SqlDataReader reader = command.ExecuteReader();
            

            while (reader.Read())
            {
                News news = new News((int)reader["NewsID"], (string)reader["Title"], (string)reader["Description"], (string)reader["Category"], (string)reader["Author"], reader["PubDate"].ToString(), (string)reader["ImageUrl"]);
                my_news_list.Add(news);
            }
            Session["News"] = my_news_list;
            connection.Close();
            lbl_news1.Text = ((News)(my_news_list[0])).Title.ToString();
            img_news1.ImageUrl = ((News)(my_news_list[0])).ImageUrl.ToString();

            lbl_news2.Text = ((News)(my_news_list[1])).Title.ToString();
            img_news2.ImageUrl = ((News)(my_news_list[1])).ImageUrl.ToString();

            lbl_news3.Text = ((News)(my_news_list[3])).Title.ToString();
            img_news3.ImageUrl = ((News)(my_news_list[3])).ImageUrl.ToString();

            lbl_news4.Text = ((News)(my_news_list[4])).Title.ToString();
            img_news4.ImageUrl = ((News)(my_news_list[4])).ImageUrl.ToString();

            lbl_news5.Text = ((News)(my_news_list[7])).Title.ToString();
            img_news5.ImageUrl = ((News)(my_news_list[7])).ImageUrl.ToString();

            lbl_news_slide1.Text = ((News)(my_news_list[13])).Title.ToString();
            img_news_slide1.ImageUrl = ((News)(my_news_list[13])).ImageUrl.ToString();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["NewsDetail"] = ((News)(my_news_list[0]));
            Response.Redirect("NewsDetail.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["NewsDetail"] = ((News)(my_news_list[1]));
            Response.Redirect("NewsDetail.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["NewsDetail"] = ((News)(my_news_list[2]));
            Response.Redirect("NewsDetail.aspx");
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["NewsDetail"] = ((News)(my_news_list[3]));
            Response.Redirect("NewsDetail.aspx");
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session["NewsDetail"] = ((News)(my_news_list[7]));
            Response.Redirect("NewsDetail.aspx");
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Session["NewsDetail"] = ((News)(my_news_list[13]));
            Response.Redirect("NewsDetail.aspx");
        }
    }
}