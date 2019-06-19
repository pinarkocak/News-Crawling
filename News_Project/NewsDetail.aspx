<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="News_Project.NewsDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News Detail</title>
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
      <p>En Güncel En Güncel Haber Sitesi</p>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div class="container">
    <div class="content">
      <h1 runat="server" id="hdr_NewsTitle" style="font-family: Calibri; font-size: xx-large; font-style: normal; font-weight: bold"></h1>
        <div>
            <br />
            <asp:Label ID="lbl_Author" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Category" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_Date" runat="server"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Image ID="img_newsDetail" runat="server" Height="232px" Width="600px" />
&nbsp;<div runat="server" id="div_detail"
    >
        </div>
&nbsp;</div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
    <div class="box1">
      <h2>Hakk&#305;nda</h2>
      <img class="imgl" src="images/logo.JPG" alt="" width="125" height="125" />
      <p>&#350;irketimiz Türkiye'de ve Dünya'da olup biten bütün haberleri tek t&#305;kla, en güncel, en do&#287;ru ve en tarafs&#305;z bir &#351;ekilde sizlere sunmak için çal&#305;&#351;maktad&#305;r.</p>
    </div>
    <div class="box contactdetails">
      <h2>&#304;leti&#351;im</h2>
      <ul>
        <li>The News Company</li>
        <li>Tel: xxxxx xxxxxxxxxx</li>
        <li>Email: info@thenewscompany.com</li>
        <li class="last">LinkedIn: <a href="#">Company Profile</a></li>
      </ul>
    </div>
    <div>
    </div>
    <div class="box flickrbox">
      <div class="wrap">
        <div class="fix"></div>
        <div class="flickr_badge_image" id="flickr_badge_image1"><a href="#"><img src="images/facebook.png" alt="" width="40" height="40" /></a></div>
        <div class="flickr_badge_image" id="flickr_badge_image2"><a href="#"><img src="images/twitter.png" alt="" width="50" height="50"/></a></div>
        <div class="fix"></div>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
    </form>
</body>
</html>
