<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDatabase.aspx.cs" Inherits="FinalProj.AdminDatabase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Here the admin has SCRUD abilities over the database</h1>
    <p>This will only be available to the admin</p>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CarDataID" DataSourceID="SqlDataSource1" Width="1261px" CellSpacing="3" PageSize="20">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CarDataID" HeaderText="CarDataID" ReadOnly="True" SortExpression="CarDataID" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" />
            <asp:BoundField DataField="FuelEconomy" HeaderText="Fuel Economy" SortExpression="FuelEconomy" />
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:BoundField DataField="CurbWeight" HeaderText="Curb Weight" SortExpression="CurbWeight" />
            <asp:BoundField DataField="HorsePower" HeaderText="Horsepower" SortExpression="HorsePower" />
            <asp:BoundField DataField="Drivetrain" HeaderText="Drivetrain" SortExpression="Drivetrain" />
            <asp:BoundField DataField="EPAClass" HeaderText="EPA Class" SortExpression="EPAClass" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#000099" Font-Bold="True" ForeColor="White" BorderColor="#000099" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000099" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ag_CarData] WHERE [CarDataID] = @original_CarDataID AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([MSRP] = @original_MSRP) OR ([MSRP] IS NULL AND @original_MSRP IS NULL)) AND (([FuelEconomy] = @original_FuelEconomy) OR ([FuelEconomy] IS NULL AND @original_FuelEconomy IS NULL)) AND (([Engine] = @original_Engine) OR ([Engine] IS NULL AND @original_Engine IS NULL)) AND (([CurbWeight] = @original_CurbWeight) OR ([CurbWeight] IS NULL AND @original_CurbWeight IS NULL)) AND (([HorsePower] = @original_HorsePower) OR ([HorsePower] IS NULL AND @original_HorsePower IS NULL)) AND (([Drivetrain] = @original_Drivetrain) OR ([Drivetrain] IS NULL AND @original_Drivetrain IS NULL)) AND (([EPAClass] = @original_EPAClass) OR ([EPAClass] IS NULL AND @original_EPAClass IS NULL))" InsertCommand="INSERT INTO [ag_CarData] ([CarDataID], [Model], [Year], [MSRP], [FuelEconomy], [Engine], [CurbWeight], [HorsePower], [Drivetrain], [EPAClass]) VALUES (@CarDataID, @Model, @Year, @MSRP, @FuelEconomy, @Engine, @CurbWeight, @HorsePower, @Drivetrain, @EPAClass)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ag_CarData]" UpdateCommand="UPDATE [ag_CarData] SET [Model] = @Model, [Year] = @Year, [MSRP] = @MSRP, [FuelEconomy] = @FuelEconomy, [Engine] = @Engine, [CurbWeight] = @CurbWeight, [HorsePower] = @HorsePower, [Drivetrain] = @Drivetrain, [EPAClass] = @EPAClass WHERE [CarDataID] = @original_CarDataID AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([MSRP] = @original_MSRP) OR ([MSRP] IS NULL AND @original_MSRP IS NULL)) AND (([FuelEconomy] = @original_FuelEconomy) OR ([FuelEconomy] IS NULL AND @original_FuelEconomy IS NULL)) AND (([Engine] = @original_Engine) OR ([Engine] IS NULL AND @original_Engine IS NULL)) AND (([CurbWeight] = @original_CurbWeight) OR ([CurbWeight] IS NULL AND @original_CurbWeight IS NULL)) AND (([HorsePower] = @original_HorsePower) OR ([HorsePower] IS NULL AND @original_HorsePower IS NULL)) AND (([Drivetrain] = @original_Drivetrain) OR ([Drivetrain] IS NULL AND @original_Drivetrain IS NULL)) AND (([EPAClass] = @original_EPAClass) OR ([EPAClass] IS NULL AND @original_EPAClass IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_Model" Type="String" />
            <asp:Parameter Name="original_Year" Type="Int32" />
            <asp:Parameter Name="original_MSRP" Type="Double" />
            <asp:Parameter Name="original_FuelEconomy" Type="Double" />
            <asp:Parameter Name="original_Engine" Type="String" />
            <asp:Parameter Name="original_CurbWeight" Type="Double" />
            <asp:Parameter Name="original_HorsePower" Type="String" />
            <asp:Parameter Name="original_Drivetrain" Type="String" />
            <asp:Parameter Name="original_EPAClass" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarDataID" Type="Int32" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="MSRP" Type="Double" />
            <asp:Parameter Name="FuelEconomy" Type="Double" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="CurbWeight" Type="Double" />
            <asp:Parameter Name="HorsePower" Type="String" />
            <asp:Parameter Name="Drivetrain" Type="String" />
            <asp:Parameter Name="EPAClass" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="MSRP" Type="Double" />
            <asp:Parameter Name="FuelEconomy" Type="Double" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="CurbWeight" Type="Double" />
            <asp:Parameter Name="HorsePower" Type="String" />
            <asp:Parameter Name="Drivetrain" Type="String" />
            <asp:Parameter Name="EPAClass" Type="String" />
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_Model" Type="String" />
            <asp:Parameter Name="original_Year" Type="Int32" />
            <asp:Parameter Name="original_MSRP" Type="Double" />
            <asp:Parameter Name="original_FuelEconomy" Type="Double" />
            <asp:Parameter Name="original_Engine" Type="String" />
            <asp:Parameter Name="original_CurbWeight" Type="Double" />
            <asp:Parameter Name="original_HorsePower" Type="String" />
            <asp:Parameter Name="original_Drivetrain" Type="String" />
            <asp:Parameter Name="original_EPAClass" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="288px" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CarDataID" DataSourceID="SqlDataSource2" DefaultMode="Insert" OnPageIndexChanging="DetailsView1_PageIndexChanging1">
        <Fields>
            <asp:BoundField DataField="CarDataID" HeaderText="Car Data ID" ReadOnly="True" SortExpression="CarDataID" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" />
            <asp:BoundField DataField="FuelEconomy" HeaderText="Fuel Economy" SortExpression="FuelEconomy" />
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:BoundField DataField="CurbWeight" HeaderText="Curb Weight" SortExpression="CurbWeight" />
            <asp:BoundField DataField="HorsePower" HeaderText="Horsepower" SortExpression="HorsePower" />
            <asp:BoundField DataField="Drivetrain" HeaderText="Drivetrain" SortExpression="Drivetrain" />
            <asp:BoundField DataField="EPAClass" HeaderText="EPA Class" SortExpression="EPAClass" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#000099" ForeColor="White"/>
        <HeaderStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#000099" ForeColor="White" HorizontalAlign="Left" />
        <RowStyle BackColor="#000099" ForeColor="White"/>
        <CommandRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"/>
        <InsertRowStyle BackColor="White" ForeColor="#000099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ag_CarData] WHERE [CarDataID] = @original_CarDataID AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([MSRP] = @original_MSRP) OR ([MSRP] IS NULL AND @original_MSRP IS NULL)) AND (([FuelEconomy] = @original_FuelEconomy) OR ([FuelEconomy] IS NULL AND @original_FuelEconomy IS NULL)) AND (([Engine] = @original_Engine) OR ([Engine] IS NULL AND @original_Engine IS NULL)) AND (([CurbWeight] = @original_CurbWeight) OR ([CurbWeight] IS NULL AND @original_CurbWeight IS NULL)) AND (([HorsePower] = @original_HorsePower) OR ([HorsePower] IS NULL AND @original_HorsePower IS NULL)) AND (([Drivetrain] = @original_Drivetrain) OR ([Drivetrain] IS NULL AND @original_Drivetrain IS NULL)) AND (([EPAClass] = @original_EPAClass) OR ([EPAClass] IS NULL AND @original_EPAClass IS NULL))" InsertCommand="INSERT INTO [ag_CarData] ([CarDataID], [Model], [Year], [MSRP], [FuelEconomy], [Engine], [CurbWeight], [HorsePower], [Drivetrain], [EPAClass]) VALUES (@CarDataID, @Model, @Year, @MSRP, @FuelEconomy, @Engine, @CurbWeight, @HorsePower, @Drivetrain, @EPAClass)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ag_CarData]" UpdateCommand="UPDATE [ag_CarData] SET [Model] = @Model, [Year] = @Year, [MSRP] = @MSRP, [FuelEconomy] = @FuelEconomy, [Engine] = @Engine, [CurbWeight] = @CurbWeight, [HorsePower] = @HorsePower, [Drivetrain] = @Drivetrain, [EPAClass] = @EPAClass WHERE [CarDataID] = @original_CarDataID AND (([Model] = @original_Model) OR ([Model] IS NULL AND @original_Model IS NULL)) AND (([Year] = @original_Year) OR ([Year] IS NULL AND @original_Year IS NULL)) AND (([MSRP] = @original_MSRP) OR ([MSRP] IS NULL AND @original_MSRP IS NULL)) AND (([FuelEconomy] = @original_FuelEconomy) OR ([FuelEconomy] IS NULL AND @original_FuelEconomy IS NULL)) AND (([Engine] = @original_Engine) OR ([Engine] IS NULL AND @original_Engine IS NULL)) AND (([CurbWeight] = @original_CurbWeight) OR ([CurbWeight] IS NULL AND @original_CurbWeight IS NULL)) AND (([HorsePower] = @original_HorsePower) OR ([HorsePower] IS NULL AND @original_HorsePower IS NULL)) AND (([Drivetrain] = @original_Drivetrain) OR ([Drivetrain] IS NULL AND @original_Drivetrain IS NULL)) AND (([EPAClass] = @original_EPAClass) OR ([EPAClass] IS NULL AND @original_EPAClass IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_Model" Type="String" />
            <asp:Parameter Name="original_Year" Type="Int32" />
            <asp:Parameter Name="original_MSRP" Type="Double" />
            <asp:Parameter Name="original_FuelEconomy" Type="Double" />
            <asp:Parameter Name="original_Engine" Type="String" />
            <asp:Parameter Name="original_CurbWeight" Type="Double" />
            <asp:Parameter Name="original_HorsePower" Type="String" />
            <asp:Parameter Name="original_Drivetrain" Type="String" />
            <asp:Parameter Name="original_EPAClass" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarDataID" Type="Int32" />
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="MSRP" Type="Double" />
            <asp:Parameter Name="FuelEconomy" Type="Double" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="CurbWeight" Type="Double" />
            <asp:Parameter Name="HorsePower" Type="String" />
            <asp:Parameter Name="Drivetrain" Type="String" />
            <asp:Parameter Name="EPAClass" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Model" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="MSRP" Type="Double" />
            <asp:Parameter Name="FuelEconomy" Type="Double" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="CurbWeight" Type="Double" />
            <asp:Parameter Name="HorsePower" Type="String" />
            <asp:Parameter Name="Drivetrain" Type="String" />
            <asp:Parameter Name="EPAClass" Type="String" />
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_Model" Type="String" />
            <asp:Parameter Name="original_Year" Type="Int32" />
            <asp:Parameter Name="original_MSRP" Type="Double" />
            <asp:Parameter Name="original_FuelEconomy" Type="Double" />
            <asp:Parameter Name="original_Engine" Type="String" />
            <asp:Parameter Name="original_CurbWeight" Type="Double" />
            <asp:Parameter Name="original_HorsePower" Type="String" />
            <asp:Parameter Name="original_Drivetrain" Type="String" />
            <asp:Parameter Name="original_EPAClass" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
