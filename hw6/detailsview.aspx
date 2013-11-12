<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="detailsview.aspx.vb" Inherits="hw6.detailsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_hw6 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="bID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="161px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="bTitle" HeaderText="Title" SortExpression="bTitle" />
                <asp:BoundField DataField="bAuthor" HeaderText="Author" SortExpression="bAuthor" />
                <asp:BoundField DataField="bISBN" HeaderText="ISBN" SortExpression="bISBN" />
                <asp:BoundField DataField="bPages" HeaderText="Pages" SortExpression="bPages" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
