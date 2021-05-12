<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="FinalProj.Account.Manage" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div>
        <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
            <p class="text-success"><%: SuccessMessage %></p>
        </asp:PlaceHolder>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Change your account settings</h4>
                <hr />
                <p>Password:
                    <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                    <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Create]" Visible="false" ID="CreatePassword" runat="server" />
                </p>
                <br />
                <a runat="server" href="~/Account/Manage" title="Manage your account">Hello, <%: Context.User.Identity.GetUserName()  %> !</a>
                
                <br />
                <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>

                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="289px" AutoGenerateRows="False" BackColor="White" BorderColor="#000099" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="3" DataKeyNames="UserID" DataSourceID="UserInfo">
                    <EditRowStyle BackColor="#BCD98D" Font-Bold="True" ForeColor="#000099" />
                    <Fields>
                        <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                        <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                        <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Pnumber" HeaderText="Phone Number" SortExpression="Pnumber" />
                        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                        <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="White" ForeColor="#000099" />
                    <HeaderStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000099" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000099" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="UserInfo" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [ag_User] WHERE [UserID] = @original_UserID AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pnumber] = @original_Pnumber) OR ([Pnumber] IS NULL AND @original_Pnumber IS NULL)) AND (([Street] = @original_Street) OR ([Street] IS NULL AND @original_Street IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL))" InsertCommand="INSERT INTO [ag_User] ([UserID], [Fname], [Lname], [Email], [Pnumber], [Street], [City], [State], [Zip]) VALUES (@UserID, @Fname, @Lname, @Email, @Pnumber, @Street, @City, @State, @Zip)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ag_User] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [ag_User] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Pnumber] = @Pnumber, [Street] = @Street, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [UserID] = @original_UserID AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pnumber] = @original_Pnumber) OR ([Pnumber] IS NULL AND @original_Pnumber IS NULL)) AND (([Street] = @original_Street) OR ([Street] IS NULL AND @original_Street IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_Fname" Type="String" />
                        <asp:Parameter Name="original_Lname" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Pnumber" Type="String" />
                        <asp:Parameter Name="original_Street" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="Fname" Type="String" />
                        <asp:Parameter Name="Lname" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Pnumber" Type="String" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zip" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Label1" Name="Email" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Fname" Type="String" />
                        <asp:Parameter Name="Lname" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Pnumber" Type="String" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zip" Type="Int32" />
                        <asp:Parameter Name="original_UserID" Type="Int32" />
                        <asp:Parameter Name="original_Fname" Type="String" />
                        <asp:Parameter Name="original_Lname" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter Name="original_Pnumber" Type="String" />
                        <asp:Parameter Name="original_Street" Type="String" />
                        <asp:Parameter Name="original_City" Type="String" />
                        <asp:Parameter Name="original_State" Type="String" />
                        <asp:Parameter Name="original_Zip" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>

</asp:Content>
