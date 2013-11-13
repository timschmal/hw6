<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="details.aspx.vb" Inherits="hw6.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="bID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="bID" HeaderText="Book ID" InsertVisible="False" ReadOnly="True" SortExpression="bID" />
            <asp:BoundField DataField="bTitle" HeaderText="Title" SortExpression="bTitle" />
            <asp:BoundField DataField="bAuthor" HeaderText="Author" SortExpression="bAuthor" />
            <asp:BoundField DataField="bISBN" HeaderText="ISBN" SortExpression="bISBN" />
            <asp:BoundField DataField="bPages" HeaderText="Pages" SortExpression="bPages" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_hw6 %>" DeleteCommand="DELETE FROM [Table] WHERE [bID] = @bID" InsertCommand="INSERT INTO [Table] ([bTitle], [bAuthor], [bISBN], [bPages]) VALUES (@bTitle, @bAuthor, @bISBN, @bPages)" SelectCommand="SELECT * FROM [Table] WHERE ([bID] = @bID)" UpdateCommand="UPDATE [Table] SET [bTitle] = @bTitle, [bAuthor] = @bAuthor, [bISBN] = @bISBN, [bPages] = @bPages WHERE [bID] = @bID">
        <DeleteParameters>
            <asp:Parameter Name="bID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="bTitle" Type="String" />
            <asp:Parameter Name="bAuthor" Type="String" />
            <asp:Parameter Name="bISBN" Type="String" />
            <asp:Parameter Name="bPages" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="bID" QueryStringField="bId" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="bTitle" Type="String" />
            <asp:Parameter Name="bAuthor" Type="String" />
            <asp:Parameter Name="bISBN" Type="String" />
            <asp:Parameter Name="bPages" Type="Int32" />
            <asp:Parameter Name="bID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


