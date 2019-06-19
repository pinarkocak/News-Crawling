<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RSSparsing.aspx.cs" Inherits="News_Project.RSSparsing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:News_DatabaseConnectionString4 %>" SelectCommand="SELECT * FROM [news]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
