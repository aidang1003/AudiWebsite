<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bid.aspx.cs" Inherits="FinalProj.CarRanker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Selest a model and year to make a bid</h1>
    <hr />
    <div class="row">
        <div class="col-md-4" style="left: 0px; top: 0px">
            <asp:GridView ID="YearGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Width="327px" AllowPaging="True" DataKeyNames="CarDataID" OnSelectedIndexChanged="YearGridView_SelectedIndexChanged" PageSize="20">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="CarDataID" HeaderText="ID" SortExpression="CarDataID" ReadOnly="True" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="MSRP" HeaderText="MSRP" SortExpression="MSRP" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CarDataID], [Model], [Year], [MSRP] FROM [ag_CarData]"></asp:SqlDataSource>
        </div>
        <div class="col-md-8">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="363px" AutoGenerateRows="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" DataKeyNames="CarDataID" DataSourceID="SqlDataSource3" style="margin-right: 27px">
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="CarDataID" HeaderText="CarDataID" ReadOnly="True" SortExpression="CarDataID" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_CarData] WHERE ([CarDataID] = @CarDataID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="YearGridView" Name="CarDataID" PropertyName="SelectedValue" Type="Int32" DefaultValue="1" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    <br /><hr />
    <div class="row">
       <div class="col-md-8">
        <table class="table table-dark">
            <thead>
                <th scope="row" style="width: 249px">Enter Bid Fields Here</th>
            </thead>
            <tbody>
            <tr>
                <th scope="row" style="width: 249px">Model: </th>
                <th style="width: 717px"><asp:TextBox ID="txtModel" runat="server" ReadOnly="true"></asp:TextBox></th>      
            </tr>
            <tr>
                <th scope="row" style="width: 249px">Year: </th>
                <th style="width: 717px"><asp:TextBox ID="txtYear" runat="server" ReadOnly="true"></asp:TextBox></th>      
            </tr>
            <tr>
                <th scope="row" style="width: 249px">MSRP: </th>
                <th style="width: 717px"><asp:TextBox ID="txtMSRP" runat="server" ReadOnly="true"></asp:TextBox></th>
            </tr>
            <tr>
                <th scope="row" style="width: 249px">Date: </th>
                <th style="width: 717px"><asp:TextBox ID="txtDate" runat="server" ReadOnly="true"></asp:TextBox></th>
            </tr>
            <tr>
                <th scope="row" style="width: 249px">Bid Amount: </th>
                <th style="width: 717px"><asp:TextBox ID="txtBid" runat="server" ></asp:TextBox></th>
            </tr>
            <tr>
                <th scope="row" style="width: 249px">&nbsp;</th>
                <th style="width: 717px"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></th>
            </tr>
            <tr>
                <th>&nbsp</th>
                <th style="width: 717px"><asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label></th>
            </tr>
            </tbody>
        </table>  
    </div>
    <div class="col-mid-4">
            <img src="~/Images/audiInterior.jpg" alt="Audi Interior" runat="server" style="width:252px; height:159px;"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="UserData" Visible="false">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="UserData" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserID], [Email] FROM [ag_User] WHERE ([Email] = @Email)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="UserLabel" Name="Email" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="BidID" DataSourceID="SqlDataSource4" Width="116px" Visible="False" AllowPaging="True" PageSize="2">
                <Columns>
                    <asp:BoundField DataField="BidID" HeaderText="BidID" ReadOnly="True" SortExpression="BidID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ag_BidDetail] WHERE [BidID] = @original_BidID" InsertCommand="INSERT INTO [ag_BidDetail] ([BidID]) VALUES (@BidID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [BidID] FROM [ag_BidDetail] ORDER BY [BidID] DESC">
                <DeleteParameters>
                    <asp:Parameter Name="original_BidID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="BidID" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Label ID="UserLabel" runat="server" Text="Label" Visible="false"></asp:Label>
            <asp:Label ID="CarDataLabel" runat="server" Text="Label" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>
