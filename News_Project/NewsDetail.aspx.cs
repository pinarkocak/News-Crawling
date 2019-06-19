using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_Project
{
    public partial class NewsDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            News news = (News)Session["NewsDetail"];
            img_newsDetail.ImageUrl = news.ImageUrl;
            hdr_NewsTitle.InnerText = news.Title.ToUpper();
            div_detail.InnerHtml = news.Description;
            lbl_Author.Text = news.Author;
            lbl_Category.Text = news.Category;
            lbl_Date.Text =Convert.ToString(news.PubDate);
        }
    }
}