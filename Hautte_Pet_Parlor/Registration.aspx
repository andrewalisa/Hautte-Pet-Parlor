<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hautte_Pet_Parlor.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Registration</h1>
<h2>Customer Registration</h2>
<p>
    New to Hautte Pet Parlor? Register here!</p>
<p>
    Keep your Customer ID Handy.</p>
<p>
    &nbsp;</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Cus_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="61px" OnItemInserted="DetailsView1_ItemInserted" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="413px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Cus_ID" HeaderText="Cus_ID" ReadOnly="True" SortExpression="Cus_ID" />
            <asp:BoundField DataField="Cus_Fname" HeaderText="Cus_Fname" SortExpression="Cus_Fname" />
            <asp:BoundField DataField="Cus_Lname" HeaderText="Cus_Lname" SortExpression="Cus_Lname" />
            <asp:BoundField DataField="Cus_Email" HeaderText="Cus_Email" SortExpression="Cus_Email" />
            <asp:BoundField DataField="Cus_Address" HeaderText="Cus_Address" SortExpression="Cus_Address" />
            <asp:BoundField DataField="Cus_City" HeaderText="Cus_City" SortExpression="Cus_City" />
            <asp:BoundField DataField="Cus_Zipcode" HeaderText="Cus_Zipcode" SortExpression="Cus_Zipcode" />
            <asp:BoundField DataField="Cus_Phone" HeaderText="Cus_Phone" SortExpression="Cus_Phone" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HauttePetParlorConnectionString2 %>" DeleteCommand="DELETE FROM [Customer] WHERE [Cus_ID] = @original_Cus_ID AND [Cus_Fname] = @original_Cus_Fname AND [Cus_Lname] = @original_Cus_Lname AND [Cus_Email] = @original_Cus_Email AND [Cus_Address] = @original_Cus_Address AND [Cus_City] = @original_Cus_City AND [Cus_Zipcode] = @original_Cus_Zipcode AND [Cus_Phone] = @original_Cus_Phone" InsertCommand="INSERT INTO [Customer] ([Cus_ID], [Cus_Fname], [Cus_Lname], [Cus_Email], [Cus_Address], [Cus_City], [Cus_Zipcode], [Cus_Phone]) VALUES (@Cus_ID, @Cus_Fname, @Cus_Lname, @Cus_Email, @Cus_Address, @Cus_City, @Cus_Zipcode, @Cus_Phone)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer] ORDER BY [Cus_ID], [Cus_Fname]" UpdateCommand="UPDATE [Customer] SET [Cus_Fname] = @Cus_Fname, [Cus_Lname] = @Cus_Lname, [Cus_Email] = @Cus_Email, [Cus_Address] = @Cus_Address, [Cus_City] = @Cus_City, [Cus_Zipcode] = @Cus_Zipcode, [Cus_Phone] = @Cus_Phone WHERE [Cus_ID] = @original_Cus_ID AND [Cus_Fname] = @original_Cus_Fname AND [Cus_Lname] = @original_Cus_Lname AND [Cus_Email] = @original_Cus_Email AND [Cus_Address] = @original_Cus_Address AND [Cus_City] = @original_Cus_City AND [Cus_Zipcode] = @original_Cus_Zipcode AND [Cus_Phone] = @original_Cus_Phone">
        <DeleteParameters>
            <asp:Parameter Name="original_Cus_ID" Type="Int32" />
            <asp:Parameter Name="original_Cus_Fname" Type="String" />
            <asp:Parameter Name="original_Cus_Lname" Type="String" />
            <asp:Parameter Name="original_Cus_Email" Type="String" />
            <asp:Parameter Name="original_Cus_Address" Type="String" />
            <asp:Parameter Name="original_Cus_City" Type="String" />
            <asp:Parameter Name="original_Cus_Zipcode" Type="String" />
            <asp:Parameter Name="original_Cus_Phone" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cus_ID" Type="Int32" />
            <asp:Parameter Name="Cus_Fname" Type="String" />
            <asp:Parameter Name="Cus_Lname" Type="String" />
            <asp:Parameter Name="Cus_Email" Type="String" />
            <asp:Parameter Name="Cus_Address" Type="String" />
            <asp:Parameter Name="Cus_City" Type="String" />
            <asp:Parameter Name="Cus_Zipcode" Type="String" />
            <asp:Parameter Name="Cus_Phone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cus_Fname" Type="String" />
            <asp:Parameter Name="Cus_Lname" Type="String" />
            <asp:Parameter Name="Cus_Email" Type="String" />
            <asp:Parameter Name="Cus_Address" Type="String" />
            <asp:Parameter Name="Cus_City" Type="String" />
            <asp:Parameter Name="Cus_Zipcode" Type="String" />
            <asp:Parameter Name="Cus_Phone" Type="String" />
            <asp:Parameter Name="original_Cus_ID" Type="Int32" />
            <asp:Parameter Name="original_Cus_Fname" Type="String" />
            <asp:Parameter Name="original_Cus_Lname" Type="String" />
            <asp:Parameter Name="original_Cus_Email" Type="String" />
            <asp:Parameter Name="original_Cus_Address" Type="String" />
            <asp:Parameter Name="original_Cus_City" Type="String" />
            <asp:Parameter Name="original_Cus_Zipcode" Type="String" />
            <asp:Parameter Name="original_Cus_Phone" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Cus_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="20" Width="1023px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Cus_ID" HeaderText="Cus_ID" ReadOnly="True" SortExpression="Cus_ID" />
            <asp:BoundField DataField="Cus_Fname" HeaderText="Cus_Fname" SortExpression="Cus_Fname" />
            <asp:BoundField DataField="Cus_Lname" HeaderText="Cus_Lname" SortExpression="Cus_Lname" />
            <asp:BoundField DataField="Cus_Email" HeaderText="Cus_Email" SortExpression="Cus_Email" />
            <asp:BoundField DataField="Cus_Address" HeaderText="Cus_Address" SortExpression="Cus_Address" />
            <asp:BoundField DataField="Cus_City" HeaderText="Cus_City" SortExpression="Cus_City" />
            <asp:BoundField DataField="Cus_Zipcode" HeaderText="Cus_Zipcode" SortExpression="Cus_Zipcode" />
            <asp:BoundField DataField="Cus_Phone" HeaderText="Cus_Phone" SortExpression="Cus_Phone" />
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
</p>
<p>
    &nbsp;</p>
<h2>
    Pet Registration</h2>
<p>
    Please only insert the Pet Information <strong>AFTER</strong> you create a Customer ID. If you already have a Customer ID, please proceed.</p>
<p>
    Got a new friend? Insert their infromation here!</p>
<p>
    <asp:RadioButton ID="rbDog" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Dog" GroupName="1" />
&nbsp;
    <asp:RadioButton ID="rbCat" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Cat" GroupName="1" />
</p>
<p>
    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Pet_ID" DataSourceID="SqlDataSource2" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="214px" OnItemInserted="DetailsView2_ItemInserted" OnPageIndexChanging="DetailsView2_PageIndexChanging" Width="485px" OnItemInserting="DetailsView2_ItemInserting">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Pet_ID" HeaderText="Pet_ID" ReadOnly="True" SortExpression="Pet_ID" />
            <asp:BoundField DataField="Pet_Name" HeaderText="Pet_Name" SortExpression="Pet_Name" />
            <asp:BoundField DataField="Pet_Gender" HeaderText="Pet_Gender" SortExpression="Pet_Gender" />
            <asp:BoundField DataField="Cus_ID" HeaderText="Cus_ID" SortExpression="Cus_ID" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Pet_ID" DataSourceID="SqlDataSource2" PageSize="20" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Pet_ID" HeaderText="Pet_ID" ReadOnly="True" SortExpression="Pet_ID" />
            <asp:BoundField DataField="Pet_Name" HeaderText="Pet_Name" SortExpression="Pet_Name" />
            <asp:BoundField DataField="Pet_Gender" HeaderText="Pet_Gender" SortExpression="Pet_Gender" />
            <asp:BoundField DataField="Cus_ID" HeaderText="Cus_ID" SortExpression="Cus_ID" />
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
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HauttePetParlorConnectionString2 %>" DeleteCommand="DELETE FROM [Pet] WHERE [Pet_ID] = @original_Pet_ID AND [Pet_Name] = @original_Pet_Name AND [Pet_Gender] = @original_Pet_Gender AND [Cus_ID] = @original_Cus_ID" InsertCommand="INSERT INTO [Pet] ([Pet_ID], [Pet_Name], [Pet_Gender], [Cus_ID]) VALUES (@Pet_ID, @Pet_Name, @Pet_Gender, @Cus_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Pet] ORDER BY [Pet_ID], [Pet_Name]" UpdateCommand="UPDATE [Pet] SET [Pet_Name] = @Pet_Name, [Pet_Gender] = @Pet_Gender, [Cus_ID] = @Cus_ID WHERE [Pet_ID] = @original_Pet_ID AND [Pet_Name] = @original_Pet_Name AND [Pet_Gender] = @original_Pet_Gender AND [Cus_ID] = @original_Cus_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_Pet_ID" Type="Int32" />
            <asp:Parameter Name="original_Pet_Name" Type="String" />
            <asp:Parameter Name="original_Pet_Gender" Type="String" />
            <asp:Parameter Name="original_Cus_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pet_ID" Type="Int32" />
            <asp:Parameter Name="Pet_Name" Type="String" />
            <asp:Parameter Name="Pet_Gender" Type="String" />
            <asp:Parameter Name="Cus_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pet_Name" Type="String" />
            <asp:Parameter Name="Pet_Gender" Type="String" />
            <asp:Parameter Name="Cus_ID" Type="Int32" />
            <asp:Parameter Name="original_Pet_ID" Type="Int32" />
            <asp:Parameter Name="original_Pet_Name" Type="String" />
            <asp:Parameter Name="original_Pet_Gender" Type="String" />
            <asp:Parameter Name="original_Cus_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server">
    </asp:EntityDataSource>
</p>
</asp:Content>
