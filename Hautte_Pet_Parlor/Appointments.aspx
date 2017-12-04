<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="Hautte_Pet_Parlor.Appointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>View or Create Appointments</h1>
<p>
    You can view appointments, or create appointments here.
</p>
<p>
    <span style="color: #FF0000"><strong>Warning:</strong> </span>Before you create your appointment it is <strong>crucial</strong> that you already registered yourself and your pet(s).
</p>
<p>
    &nbsp;</p>
<p>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="App_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" OnItemInserted="DetailsView1_ItemInserted" Width="346px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="App_ID" HeaderText="App_ID" ReadOnly="True" SortExpression="App_ID" />
            <asp:BoundField DataField="App_Time" HeaderText="App_Time" SortExpression="App_Time" />
            <asp:BoundField DataField="App_Date" HeaderText="App_Date" SortExpression="App_Date" />
            <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" SortExpression="Emp_ID" />
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="App_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="25" Width="994px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="App_ID" HeaderText="App_ID" ReadOnly="True" SortExpression="App_ID" />
            <asp:BoundField DataField="App_Time" HeaderText="App_Time" SortExpression="App_Time" />
            <asp:BoundField DataField="App_Date" HeaderText="App_Date" SortExpression="App_Date" />
            <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" SortExpression="Emp_ID" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:HauttePetParlorConnectionString2 %>" DeleteCommand="DELETE FROM [Appointment] WHERE [App_ID] = @original_App_ID AND [App_Time] = @original_App_Time AND [App_Date] = @original_App_Date AND [Emp_ID] = @original_Emp_ID AND [Cus_ID] = @original_Cus_ID" InsertCommand="INSERT INTO [Appointment] ([App_ID], [App_Time], [App_Date], [Emp_ID], [Cus_ID]) VALUES (@App_ID, @App_Time, @App_Date, @Emp_ID, @Cus_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Appointment] ORDER BY [App_Date], [App_Time], [App_ID]" UpdateCommand="UPDATE [Appointment] SET [App_Time] = @App_Time, [App_Date] = @App_Date, [Emp_ID] = @Emp_ID, [Cus_ID] = @Cus_ID WHERE [App_ID] = @original_App_ID AND [App_Time] = @original_App_Time AND [App_Date] = @original_App_Date AND [Emp_ID] = @original_Emp_ID AND [Cus_ID] = @original_Cus_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_App_ID" Type="Int32" />
            <asp:Parameter DbType="Time" Name="original_App_Time" />
            <asp:Parameter DbType="Date" Name="original_App_Date" />
            <asp:Parameter Name="original_Emp_ID" Type="Int32" />
            <asp:Parameter Name="original_Cus_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="App_ID" Type="Int32" />
            <asp:Parameter DbType="Time" Name="App_Time" />
            <asp:Parameter DbType="Date" Name="App_Date" />
            <asp:Parameter Name="Emp_ID" Type="Int32" />
            <asp:Parameter Name="Cus_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Time" Name="App_Time" />
            <asp:Parameter DbType="Date" Name="App_Date" />
            <asp:Parameter Name="Emp_ID" Type="Int32" />
            <asp:Parameter Name="Cus_ID" Type="Int32" />
            <asp:Parameter Name="original_App_ID" Type="Int32" />
            <asp:Parameter DbType="Time" Name="original_App_Time" />
            <asp:Parameter DbType="Date" Name="original_App_Date" />
            <asp:Parameter Name="original_Emp_ID" Type="Int32" />
            <asp:Parameter Name="original_Cus_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
    &nbsp;</p>
</asp:Content>
