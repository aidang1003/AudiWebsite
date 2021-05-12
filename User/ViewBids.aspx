<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewBids.aspx.cs" Inherits="FinalProj.ViewBids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> View and cancel your bids here</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" DataKeyNames="BidID" DataSourceID="YourBids" Width="798px" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="BidID" HeaderText="ID" ReadOnly="True" SortExpression="BidID" />
            <asp:BoundField DataField="CarDataID" HeaderText="Car ID" SortExpression="CarDataID" />
            <asp:BoundField DataField="UserID" HeaderText="User ID" SortExpression="UserID" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:d}"/>
            <asp:BoundField DataField="BidAmt" HeaderText="Bid Amount" SortExpression="BidAmt" DataFormatString="{0:C}"/>
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
    <asp:SqlDataSource ID="YourBids" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_BidDetail] WHERE ([UserID] = @UserID)" OldValuesParameterFormatString="original_{0}" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ag_BidDetail] WHERE [BidID] = @original_BidID AND [CarDataID] = @original_CarDataID AND [UserID] = @original_UserID AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([BidAmt] = @original_BidAmt) OR ([BidAmt] IS NULL AND @original_BidAmt IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" InsertCommand="INSERT INTO [ag_BidDetail] ([BidID], [CarDataID], [UserID], [Date], [BidAmt], [Status]) VALUES (@BidID, @CarDataID, @UserID, @Date, @BidAmt, @Status)" UpdateCommand="UPDATE [ag_BidDetail] SET [CarDataID] = @CarDataID, [UserID] = @UserID, [Date] = @Date, [BidAmt] = @BidAmt, [Status] = @Status WHERE [BidID] = @original_BidID AND [CarDataID] = @original_CarDataID AND [UserID] = @original_UserID AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([BidAmt] = @original_BidAmt) OR ([BidAmt] IS NULL AND @original_BidAmt IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL))" >
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
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="UserID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
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
    <br />
    <asp:Label ID="DataIDLabel" runat="server" Text="" Visible="false"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="583px" Visible="false" AutoGenerateRows="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" DataKeyNames="CarDataID" DataSourceID="BidDetail">
        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="CarDataID" HeaderText="Car Data ID" ReadOnly="True" SortExpression="CarDataID" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" DataFormatString="{0:C}"/>
            <asp:BoundField DataField="FuelEconomy" HeaderText="Fuel Economy" SortExpression="FuelEconomy" DataFormatString="{0} MPG"/>
            <asp:BoundField DataField="Engine" HeaderText="Engine" SortExpression="Engine" />
            <asp:BoundField DataField="CurbWeight" HeaderText="Curb Weight" SortExpression="CurbWeight" DataFormatString="{0} Lbs."/>
            <asp:BoundField DataField="HorsePower" HeaderText="Horsepower" SortExpression="HorsePower" />
            <asp:BoundField DataField="Drivetrain" HeaderText="Drivetrain" SortExpression="Drivetrain" />
            <asp:BoundField DataField="EPAClass" HeaderText="EPA Class" SortExpression="EPAClass" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#000099" />
        <HeaderStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000099" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000099" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="BidDetail" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_CarData] WHERE ([CarDataID] = @CarDataID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DataIDLabel" Name="CarDataID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" Visible="false">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserID], [Email] FROM [ag_User] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="Email" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
    </div>
</asp:Content>
