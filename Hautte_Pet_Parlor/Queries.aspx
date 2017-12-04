<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Queries.aspx.cs" Inherits="Hautte_Pet_Parlor.Queries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p class="text-center">
    <img alt="" src="ROLLY2.jpg" style="width: 554px; height: 368px" /></p>
<h2 style="color: #000000" class="text-center">Execute Queries.</h2>
    <p style="color: #000000" class="text-center">Try &#39;em out.</p>
<p style="color: #000000" class="text-center">
    <strong>Query 1: </strong>SELECT C.Cus_Fname, C.Cus_Lname, C.Cus_ID, P.Pet_ID, E.Emp_Fname, E.Emp_LName, E.EMP_ID, A.App_ID FROM Customer as C, Pet as P, Employee as E, Appointment as A WHERE C.Cus_ID = P.Cus_ID AND C.Cus_ID = A.Cus_ID AND E.Emp_ID = A.Emp_ID AND E.EMP_ID = &#39;1700&#39;</p>
<p style="color: #000000" class="text-center">
    <strong>Query 2:</strong> SELECT Cus_Fname, Cus_LName, Cus_Address, Cus_City FROM CUSTOMER WHERE Cus_City like &#39;%heights%&#39; ORDER BY Cus_Fname DESC</p>
<p style="color: #000000" class="text-center">
    <strong>Query 3: </strong>SELECT Cus_Fname, Cus_Lname, CC_Type FROM Customer, Credit_Card WHERE CC_Type = &#39;Discover&#39; AND Customer.Cus_ID = Credit_Card.Cus_ID Order By Cus_Fname desc</p>
<p style="color: #000000" class="text-center">
    <strong>Query 4:</strong> SELECT I.Invoice_ID, PL.Product_Line_Total, SL.Serv_OrderPRice, sum(Product_Line_Total + Serv_OrderPrice) as &#39;Total Invoice&#39; FROM Invoice as I, Product_Line as PL, Service_Line as SL WHERE I.Invoice_ID = PL.Invoice_ID AND I.Invoice_ID = SL.Invoice_ID GROUP BY I.Invoice_ID, PL.Product_Line_Total, SL.Serv_OrderPrice ORDER BY Invoice_ID</p>
<p style="color: #000000" class="text-center">
    <strong>Query 5:</strong> SELECT C.Cus_ID, C.Cus_Fname, C.Cus_Lname, P.Pet_Name, P.Pet_Gender FROM Customer as C, Pet as P WHERE C.Cus_ID = P.Cus_ID</p>
<p style="color: #000000">
    <% //Andrew Alisa rewrote this code because I chose C# instead of VB.NET %>
    <form action="Default.aspx" method="post">
        <div class="text-left">
        <input name="SQLQueryCode" size="150" type="text" value="" />
        <br />
        <br />
        <input type="submit" value="Get Results" />
        <br />
        <br />
        </div>
    </form>


    <%
        //Andrew Alisa rewrote this in C#

        //Declaring Variables
        String strSQL = Request["SQLQueryCode"];
        //Getting the values in SQLQueryCode (our name of the textbox)
        System.Data.SqlClient.SqlConnection dbConnect;
        System.Data.SqlClient.SqlCommand dbCmd;
        System.Data.SqlClient.SqlDataReader dbReader;

        //Checking if the string strSQL is not empty
        if (!String.IsNullOrEmpty(strSQL))
        {
            try
            {
                //Creating a connection object to the data source (local SQLSever) and the database (ABCTools).
                //If connecting to the default SQL Server data source in your client machine, then leave
                //the data source as null (i.e., "data source=; & ...)

                //Connecting to our SQL Database (Hautte Pet Parlor)
                dbConnect = new System.Data.SqlClient.SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=HauttePetParlor;Integrated Security=SSPI");

                //Opening the database connection
                dbConnect.Open();

                //Now set up the SQL statement that should be executed
                dbCmd = new System.Data.SqlClient.SqlCommand(strSQL, dbConnect);

                //Retrieve the results of executing the SQL query
                dbReader = dbCmd.ExecuteReader();
            }
            catch(Exception ex)
            {
                Response.Write("Entry error! Please check your SQL query!");
                return;
            }

            //Reporting number of rows found
            if (dbReader.HasRows)
            {
                Response.Write("<table border=3>");

                //Writing column headers
                Response.Write("<tr>");

                for (int i = 0; i < dbReader.FieldCount; i++)
                {
                    Response.Write("<th>" + dbReader.GetName(i) + "</th>");
                }

                Response.Write("</tr>");

                //Writing Rows
                while (dbReader.Read())
                {
                    Response.Write("<tr>");

                    for (int i = 0; i < dbReader.FieldCount; i++)
                    {
                        Response.Write("<td>" + dbReader[i] + "</td>");
                    }

                    Response.Write("</tr>");
                }

                Response.Write("SQL Query: " + strSQL);
                Response.Write("<br /><br />");
                Response.Write("</table>");

                //Closing the reader
                dbReader.Close();
                //Closing the connection
                dbConnect.Close();
            }
        }



         %>
  
</asp:Content>
