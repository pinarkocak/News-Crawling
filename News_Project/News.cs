using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace News_Project
{
    public class News
    {
        public int NewsID;
        public string Title;
        public string Description;
        public string Category;
        public string Author;

        public DateTime PubDate;
        public string ImageUrl;

        public News(int NewsID, string Title, string Description, string Category, string Author, string PubDate, string ImageUrl)
        {
            this.NewsID = NewsID;
            this.Title = Title;
            this.Description = Description;
            this.Category = Category;
            this.Author = Author;
            this.PubDate = Convert.ToDateTime(PubDate);
            this.ImageUrl = ImageUrl;
        }
    }
}