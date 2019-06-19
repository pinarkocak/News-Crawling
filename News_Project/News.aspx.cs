using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_Project
{
    public partial class News1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList my_news_list = new ArrayList();
            my_news_list = (ArrayList)Session["News"];
            int n=2;

            foreach (News news in my_news_list)
            {
                if (news.Category == "DHA-Güvenlik")
                {
                    System.Web.UI.HtmlControls.HtmlGenericControl createDiv =new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    createDiv.ID = "newsimage";
                    this.Controls.Add(createDiv);
                    System.Web.UI.HtmlControls.HtmlGenericControl createdivdetail = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    createdivdetail.ID = "newsinfo";
                    this.Controls.Add(createdivdetail);
                    // lbl_newsdescription1.Text = news.Title;
                    //img_newsSpor1.ImageUrl = news.ImageUrl;

                    Label[] labels = new Label[n];
                    Image image = new Image();
                    this.Controls.Add(image);
                    image.Height = 200;
                    image.Width = 150;
                    image.ImageUrl = news.ImageUrl;

                    for (int i = 0; i < n; i++)
                    {
                        labels[i] = new Label();
                        this.Controls.Add(labels[i]);
                    }

                    labels[0].Text =  news.Title + "<br />";
                    labels[1].Text =  news.Description + "<br />";

                }
            }
        }
    }
}