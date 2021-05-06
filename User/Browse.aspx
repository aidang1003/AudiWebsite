<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="FinalProj.Browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Browse our inventory of cars</h1>
    <p>Here will be the location of the database for users to view</p>
    <asp:GridView ID="BrowseGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="1221px" DataKeyNames="CarDataID">
        <Columns>
            <asp:BoundField DataField="CarDataID" HeaderText="CarDataID" SortExpression="CarDataID" ReadOnly="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_CarData]"></asp:SqlDataSource>
<br />
    <a class="btn btn-default" href="AddCarData">Add Data &raquo;</a>
</asp:Content>
