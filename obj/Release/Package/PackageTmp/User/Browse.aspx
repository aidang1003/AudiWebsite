<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="FinalProj.Browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Browse our inventory of cars</h1>
    <p>Here will be the location of the database for users to view</p>
    <asp:GridView ID="BrowseGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="1221px" DataKeyNames="CarDataID" CellSpacing="3" PageSize="20">
        <Columns>
            <asp:BoundField DataField="CarDataID" HeaderText="CarDataID" SortExpression="CarDataID" ReadOnly="True" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" DataFormatString="{0:C}"/>
            <asp:BoundField DataField="FuelEconomy" HeaderText="FuelEconomy" SortExpression="FuelEconomy" DataFormatString="{0} MPG"/>
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:BoundField DataField="CurbWeight" HeaderText="CurbWeight" SortExpression="CurbWeight" DataFormatString="{0} Lbs."/>
            <asp:BoundField DataField="HorsePower" HeaderText="HorsePower" SortExpression="HorsePower" />
            <asp:BoundField DataField="Drivetrain" HeaderText="Drivetrain" SortExpression="Drivetrain" />
            <asp:BoundField DataField="EPAClass" HeaderText="EPAClass" SortExpression="EPAClass" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000099" />
        <HeaderStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000099" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000099" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_CarData]"></asp:SqlDataSource>
</asp:Content>
