<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="News_Project.News1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="../styles/layout.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<div class="wrapper col1">
  <div id="header">
    <div id="topnav">
      <ul>
        <li><a href="#">Kategoriler</a><span></span>
          <ul>
            <li><a href="News.aspx?kategori=Genel">Genel</a></li>
            <li><a href="News.aspx?kategori=Egitim">Eğitim</a></li>
            <li><a href="News.aspx?kategori=Politika">Politika</a></li>
            <li><a href="News.aspx?kategori=IsDunyasi">İş Dünyası</a></li>
            <li><a href="News.aspx?kategori=Spor">Spor</a></li>
            <li><a href="News.aspx?kategori=Saglik">Sağlık</a></li>
            <li><a href="News.aspx?kategori=Guvenlik">Güvenlik</a></li>
            <li><a href="News.aspx?kategori=KulturSanat">Kültür-Sanat</a></li>
            <li><a href="News.aspx?kategori=Ekonomi">Ekonomi</a></li>
          </ul>
        </li>
        <li class="active"><a href="Home.aspx">Ana Sayfa</a><span></span></li>
      </ul>
    </div>
    <div id="logo">
      <h1><a href="Home.aspx"><strong>T</strong>he <strong>N</strong>ews</a></h1>
      <p>En Güncel Haber Sitesi</p>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div class="container">
    <div class="content">
      <div id="latestnews">
        <h2>Haberler</h2>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
    </form>
</body>
</html>
