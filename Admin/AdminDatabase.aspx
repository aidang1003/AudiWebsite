<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminDatabase.aspx.cs" Inherits="FinalProj.AdminDatabase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Here the admin will have SCRUD abilities over the database</h1>
    <p>This will only be available to the admin</p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CarDataID" DataSourceID="CarDataAdmin" Width="1240px">
        <Columns>
            <asp:BoundField DataField="CarDataID" HeaderText="CarDataID" ReadOnly="True" SortExpression="CarDataID" />
            <asp:BoundField DataField="YearID" HeaderText="YearID" SortExpression="YearID" />
            <asp:BoundField DataField="ModelID" HeaderText="ModelID" SortExpression="ModelID" />
            <asp:BoundField DataField="DrivetrainID" HeaderText="DrivetrainID" SortExpression="DrivetrainID" />
            <asp:BoundField DataField="EPAClassificationID" HeaderText="EPAClassificationID" SortExpression="EPAClassificationID" />
            <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" />
            <asp:BoundField DataField="FuelEconomy" HeaderText="FuelEconomy" SortExpression="FuelEconomy" />
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:BoundField DataField="CurbWeight" HeaderText="CurbWeight" SortExpression="CurbWeight" />
            <asp:BoundField DataField="HorsePower" HeaderText="HorsePower" SortExpression="HorsePower" />
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
    <asp:SqlDataSource ID="CarDataAdmin" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ag_CarData] WHERE [CarDataID] = @original_CarDataID AND [YearID] = @original_YearID AND [ModelID] = @original_ModelID AND [DrivetrainID] = @original_DrivetrainID AND [EPAClassificationID] = @original_EPAClassificationID AND (([MSRP] = @original_MSRP) OR ([MSRP] IS NULL AND @original_MSRP IS NULL)) AND (([FuelEconomy] = @original_FuelEconomy) OR ([FuelEconomy] IS NULL AND @original_FuelEconomy IS NULL)) AND (([Engine] = @original_Engine) OR ([Engine] IS NULL AND @original_Engine IS NULL)) AND (([CurbWeight] = @original_CurbWeight) OR ([CurbWeight] IS NULL AND @original_CurbWeight IS NULL)) AND (([HorsePower] = @original_HorsePower) OR ([HorsePower] IS NULL AND @original_HorsePower IS NULL))" InsertCommand="INSERT INTO [ag_CarData] ([CarDataID], [YearID], [ModelID], [DrivetrainID], [EPAClassificationID], [MSRP], [FuelEconomy], [Engine], [CurbWeight], [HorsePower]) VALUES (@CarDataID, @YearID, @ModelID, @DrivetrainID, @EPAClassificationID, @MSRP, @FuelEconomy, @Engine, @CurbWeight, @HorsePower)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ag_CarData]" UpdateCommand="UPDATE [ag_CarData] SET [YearID] = @YearID, [ModelID] = @ModelID, [DrivetrainID] = @DrivetrainID, [EPAClassificationID] = @EPAClassificationID, [MSRP] = @MSRP, [FuelEconomy] = @FuelEconomy, [Engine] = @Engine, [CurbWeight] = @CurbWeight, [HorsePower] = @HorsePower WHERE [CarDataID] = @original_CarDataID AND [YearID] = @original_YearID AND [ModelID] = @original_ModelID AND [DrivetrainID] = @original_DrivetrainID AND [EPAClassificationID] = @original_EPAClassificationID AND (([MSRP] = @original_MSRP) OR ([MSRP] IS NULL AND @original_MSRP IS NULL)) AND (([FuelEconomy] = @original_FuelEconomy) OR ([FuelEconomy] IS NULL AND @original_FuelEconomy IS NULL)) AND (([Engine] = @original_Engine) OR ([Engine] IS NULL AND @original_Engine IS NULL)) AND (([CurbWeight] = @original_CurbWeight) OR ([CurbWeight] IS NULL AND @original_CurbWeight IS NULL)) AND (([HorsePower] = @original_HorsePower) OR ([HorsePower] IS NULL AND @original_HorsePower IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_YearID" Type="Int32" />
            <asp:Parameter Name="original_ModelID" Type="Int32" />
            <asp:Parameter Name="original_DrivetrainID" Type="Int32" />
            <asp:Parameter Name="original_EPAClassificationID" Type="Int32" />
            <asp:Parameter Name="original_MSRP" Type="Double" />
            <asp:Parameter Name="original_FuelEconomy" Type="Double" />
            <asp:Parameter Name="original_Engine" Type="String" />
            <asp:Parameter Name="original_CurbWeight" Type="Double" />
            <asp:Parameter Name="original_HorsePower" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CarDataID" Type="Int32" />
            <asp:Parameter Name="YearID" Type="Int32" />
            <asp:Parameter Name="ModelID" Type="Int32" />
            <asp:Parameter Name="DrivetrainID" Type="Int32" />
            <asp:Parameter Name="EPAClassificationID" Type="Int32" />
            <asp:Parameter Name="MSRP" Type="Double" />
            <asp:Parameter Name="FuelEconomy" Type="Double" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="CurbWeight" Type="Double" />
            <asp:Parameter Name="HorsePower" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="YearID" Type="Int32" />
            <asp:Parameter Name="ModelID" Type="Int32" />
            <asp:Parameter Name="DrivetrainID" Type="Int32" />
            <asp:Parameter Name="EPAClassificationID" Type="Int32" />
            <asp:Parameter Name="MSRP" Type="Double" />
            <asp:Parameter Name="FuelEconomy" Type="Double" />
            <asp:Parameter Name="Engine" Type="String" />
            <asp:Parameter Name="CurbWeight" Type="Double" />
            <asp:Parameter Name="HorsePower" Type="String" />
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_YearID" Type="Int32" />
            <asp:Parameter Name="original_ModelID" Type="Int32" />
            <asp:Parameter Name="original_DrivetrainID" Type="Int32" />
            <asp:Parameter Name="original_EPAClassificationID" Type="Int32" />
            <asp:Parameter Name="original_MSRP" Type="Double" />
            <asp:Parameter Name="original_FuelEconomy" Type="Double" />
            <asp:Parameter Name="original_Engine" Type="String" />
            <asp:Parameter Name="original_CurbWeight" Type="Double" />
            <asp:Parameter Name="original_HorsePower" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
