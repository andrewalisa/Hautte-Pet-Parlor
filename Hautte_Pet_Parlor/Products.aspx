<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Hautte_Pet_Parlor.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-left">
    <img alt="" src="Dogs%20with%20Hats.jpg" style="width: 380px; height: 382px" /></p>
<h2 class="text-left">View Products we have for Sale!</h2>
<p class="text-center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HauttePetParlorConnectionString %>" SelectCommand="SELECT [Prod_Name], [Prod_Descrp], [Prod_Price] FROM [Product] ORDER BY [Prod_Price]"></asp:SqlDataSource>
</p>
<p class="text-center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Prod_Name" HeaderText="Prod_Name" SortExpression="Prod_Name" />
            <asp:BoundField DataField="Prod_Descrp" HeaderText="Prod_Descrp" SortExpression="Prod_Descrp" />
            <asp:BoundField DataField="Prod_Price" HeaderText="Prod_Price" SortExpression="Prod_Price" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</p>
</asp:Content>
