<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="gridview.aspx.vb" Inherits="hw6.gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_hw6 %>" DeleteCommand="DELETE FROM [Table] WHERE [bID] = @bID" InsertCommand="INSERT INTO [Table] ([bTitle], [bAuthor], [bISBN], [bPages]) VALUES (@bTitle, @bAuthor, @bISBN, @bPages)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [bTitle] = @bTitle, [bAuthor] = @bAuthor, [bISBN] = @bISBN, [bPages] = @bPages WHERE [bID] = @bID">
            <DeleteParameters>
                <asp:Parameter Name="bID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bTitle" Type="String" />
                <asp:Parameter Name="bAuthor" Type="String" />
                <asp:Parameter Name="bISBN" Type="String" />
                <asp:Parameter Name="bPages" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="bTitle" Type="String" />
                <asp:Parameter Name="bAuthor" Type="String" />
                <asp:Parameter Name="bISBN" Type="String" />
                <asp:Parameter Name="bPages" Type="Int32" />
                <asp:Parameter Name="bID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="bID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="155px" style="margin-bottom: 0px" Width="555px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="bTitle" HeaderText="Title" SortExpression="bTitle" />
                <asp:BoundField DataField="bAuthor" HeaderText="Author" SortExpression="bAuthor" />
                <asp:BoundField DataField="bISBN" HeaderText="ISBN" SortExpression="bISBN" />
                <asp:BoundField DataField="bPages" HeaderText="Pages" SortExpression="bPages" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </form>
</body>
</html>
