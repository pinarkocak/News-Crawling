<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="News_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link rel="stylesheet" href="styles/layout.css" type="text/css" />
    <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
    <script type="text/javascript">
    $(function() {
        $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
            timeout: 5000,
            fx: 'fade',
            pager: '#fs_pagination',
            pause: 1,
            pauseOnPagerHover: 0
        });
    });
    </script>
</head>

<body id="top">
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
<div class="wrapper col2">
  <div id="featured_slide">
    <div class="featured_box">
     <div class="floater">
        <asp:Label runat="server" ID="lbl_news_slide1"></asp:Label>
      </div>
      <p class="readmore">
          <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Haberi Görüntüle »</asp:LinkButton>
      </p>
      <asp:Image  runat="server" ID="img_news_slide1" alt="" /> </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col3">
  <div class="container">
    <div class="content">
      <div id="latestnews">
        <h2>Haberler</h2>
        <ul>
          <li>
            <div class="imgholder">
                <asp:Image ID="img_news1" runat="server" ImageAlign="Middle" Width="125px" Height="125px" />
              </div>
            <div class="latestnews">
              <asp:Label runat="server" ID="lbl_news1"></asp:Label>
              <p class="readmore">
                  <asp:LinkButton ID="lbtn_detail" runat="server" OnClick="LinkButton1_Click">Haberi Görüntüle »</asp:LinkButton>
                </p>
            </div>
            <br class="clear" />
          </li>
            <li>
            <div class="imgholder">
                <asp:Image ID="img_news2" runat="server" ImageAlign="Middle" Width="125px" Height="125px" />
              </div>
            <div class="latestnews">
              <asp:Label runat="server" ID="lbl_news2"></asp:Label>
              <p class="readmore">
                  <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Haberi Görüntüle »</asp:LinkButton>
                </p>
            </div>
            <br class="clear" />
          </li>
            <li>
            <div class="imgholder">
                <asp:Image ID="img_news3" runat="server" ImageAlign="Middle" Width="125px" Height="125px" />
              </div>
            <div class="latestnews">
              <asp:Label runat="server" ID="lbl_news3"></asp:Label>
              <p class="readmore">
                  <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Haberi Görüntüle »</asp:LinkButton>
                </p>
            </div>
            <br class="clear" />
          </li>
            <li>
            <div class="imgholder">
                <asp:Image ID="img_news4" runat="server" ImageAlign="Middle" Width="125px" Height="125px" />
              </div>
            <div class="latestnews">
              <asp:Label runat="server" ID="lbl_news4"></asp:Label>
              <p class="readmore">
                  <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Haberi Görüntüle »</asp:LinkButton>
                </p>
            </div>
            <br class="clear" />
          </li>
          <li class="last">
            <div class="imgholder">
                <asp:Image ID="img_news5" runat="server" Height="125px" Width="125px" />
              </div>
            <div class="latestnews">
              <asp:Label runat="server" ID="lbl_news5"></asp:Label>
              <p class="readmore">
                  <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton5_Click">Haberi Görüntüle »</asp:LinkButton>
                </p>       
                  </div>
            <br class="clear" />
          </li>
        </ul>
      </div>
    </div>
    <div class="column">
      <div class="sponsors">
        <h2>Kategoriler</h2>
        <div class="b_125">
          <ul>
            <li><a href="News.aspx?kategori=Genel"><img src="images/genel.JPG" alt="" width="125" height="50" /></a></li>
            <li><a href="News.aspx?kategori=Politika"><img src="images/politika.JPG" alt="" width="125" height="50"/></a></li>
            <li><a href="News.aspx?kategori=Ekonomi"><img src="images/ekonomi.JPG" alt="" width="125" height="50"/></a></li>
            <li><a href="News.aspx?kategori=Saglik"><img src="images/saglik.JPG" alt="" width="125" height="50" /></a></li>
            <li><a href="News.aspx?kategori=Spor"><img src="images/spor.JPG" alt="" width="125" height="50""/></a></li>
            <li><a href="News.aspx?kategori=Egitim"><img src="images/egitim.JPG" alt="" width="125" height="50"/></a></li>
            <li><a href="News.aspx?kategori=Guvenlik"><img src="images/guvenlik.JPG" alt="" width="125" height="50" /></a></li>
            <li><a href="News.aspx?kategori=IsDunyasi"><img src="images/isdunyasi.JPG" alt="" width="125" height="50""/></a></li>
            <li class="last"><a href="News.aspx?kategori=KulturSanat"><img src="images/kultur-sanat.JPG" alt="" width="250" height="70" /></a></li>
          </ul>
          <div class="clear"></div>
        </div>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col4">
  <div id="footer">
    <div class="box1">
      <h2>Hakkında</h2>
      <img class="imgl" src="images/logo.JPG" alt="" width="125" height="125" />
      <p>Şirketimiz Türkiye'de ve Dünya'da olup biten bütün haberleri tek tıkla, en güncel, en doğru ve en tarafsız bir şekilde sizlere sunmak için çalışmaktadır.</p>
    </div>
    <div class="box contactdetails">
      <h2>İletişim</h2>
      <ul>
        <li>The News Company</li>
        <li>Tel: xxxxx xxxxxxxxxx</li>
        <li>Email: info@thenewscompany.com</li>
        <li class="last">LinkedIn: <a href="#">Company Profile</a></li>
      </ul>
    </div>
    <div>
    </div>
    <br class="clear" />
  </div>
</div>
    </form>
</body>
</html>
