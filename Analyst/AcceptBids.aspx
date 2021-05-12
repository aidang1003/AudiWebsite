<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcceptBids.aspx.cs" Inherits="FinalProj.AcceptBids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Where Salespeople will be able to accept and decline bids</h1>
    <p>Only available to those with analyst role</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" DataKeyNames="BidID" DataSourceID="SqlDataSource1" Width="888px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="BidID" HeaderText="BidID" ReadOnly="True" SortExpression="BidID" />
            <asp:BoundField DataField="CarDataID" HeaderText="CarDataID" SortExpression="CarDataID" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="BidAmt" HeaderText="BidAmt" SortExpression="BidAmt" DataFormatString="{0:C}"/>
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_BidDetail]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ag_BidDetail] WHERE [BidID] = @original_BidID AND [CarDataID] = @original_CarDataID AND [UserID] = @original_UserID AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([BidAmt] = @original_BidAmt) OR ([BidAmt] IS NULL AND @original_BidAmt IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [ag_BidDetail] ([BidID], [CarDataID], [UserID], [Date], [BidAmt], [Status]) VALUES (@BidID, @CarDataID, @UserID, @Date, @BidAmt, @Status)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ag_BidDetail] SET [CarDataID] = @CarDataID, [UserID] = @UserID, [Date] = @Date, [BidAmt] = @BidAmt, [Status] = @Status WHERE [BidID] = @original_BidID AND [CarDataID] = @original_CarDataID AND [UserID] = @original_UserID AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([BidAmt] = @original_BidAmt) OR ([BidAmt] IS NULL AND @original_BidAmt IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_BidID" Type="Int32" />
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_UserID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_Date" />
            <asp:Parameter Name="original_BidAmt" Type="Double" />
            <asp:Parameter Name="original_Status" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BidID" Type="Int32" />
            <asp:Parameter Name="CarDataID" Type="Int32" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="BidAmt" Type="Double" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CarDataID" Type="Int32" />
            <asp:Parameter Name="UserID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="BidAmt" Type="Double" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="original_BidID" Type="Int32" />
            <asp:Parameter Name="original_CarDataID" Type="Int32" />
            <asp:Parameter Name="original_UserID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="original_Date" />
            <asp:Parameter Name="original_BidAmt" Type="Double" />
            <asp:Parameter Name="original_Status" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
