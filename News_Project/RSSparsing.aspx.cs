using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;
using System.Data;
using System.Net;
using System.Xml.Linq;

namespace News_Project
{
    public partial class RSSparsing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int news_id = 0;

            //Open SQL Connection
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["News_DatabaseConnectionString4"].ConnectionString);
            conn.Open();

            //Read XML
            var xmlURL = "http://ajans.dha.com.tr/dha_public_rss.php";

            XmlDocument doc1 = new XmlDocument();
            doc1.Load(xmlURL);
            XmlElement root = doc1.DocumentElement;
            XmlNodeList nodes = root.SelectNodes("channel/item");

            string url = "";
            ArrayList my_news_list = new ArrayList();
            News mynews;

            try
            {
                foreach (XmlNode node in nodes)
                {
                    //Insert news to the database
                    string insertQuery = "INSERT INTO tblnews2 (NewsID,Title,Description,Category,Author,PubDate,ImageUrl) VALUES (@newsid,@title,@description,@category,@author,@pubdate,@imageurl)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);

                    if (node["image"] == null)
                    {
                        url = "";
                    }
                    else { url = node["image"].InnerText; }
                    mynews = new News(news_id, node["title"].InnerText,
                                           node["description"].InnerText,
                                           node["category"].InnerText,
                                           node["author"].InnerText,
                                           node["pubDate"].InnerText,
                                           url);
                    my_news_list.Add(mynews);

                    cmd.Parameters.AddWithValue("@newsid", news_id);
                    cmd.Parameters.AddWithValue("@title", mynews.Title);
                    cmd.Parameters.AddWithValue("@description", mynews.Description);
                    cmd.Parameters.AddWithValue("@category", mynews.Category);
                    cmd.Parameters.AddWithValue("@author", mynews.Author);
                    cmd.Parameters.AddWithValue("@pubdate", mynews.PubDate);
                    cmd.Parameters.AddWithValue("@imageurl", mynews.ImageUrl);
                    cmd.ExecuteNonQuery();
                    news_id++;
                };

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            finally
            {
                conn.Close();
                Response.Redirect("Home.aspx");
            }



        }
    }
}