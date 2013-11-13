<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="default.aspx.vb" Inherits="hw6.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bID" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="bTitle" HeaderText="Title" SortExpression="bTitle" />
        <asp:BoundField DataField="bAuthor" HeaderText="Author" SortExpression="bAuthor" />
        <asp:BoundField DataField="bISBN" HeaderText="ISBN" SortExpression="bISBN" />
        <asp:BoundField DataField="bPages" HeaderText="Pages" SortExpression="bPages" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_hw6 %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
</asp:Content>
