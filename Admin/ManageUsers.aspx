<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="FinalProj.Admin.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Read, Update, and Delete users here with admin privileges</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="UserID" DataSourceID="SCRUDUsers" Width="730px" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
            <asp:BoundField DataField="Fname" HeaderText="Fisrt Name" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Pnumber" HeaderText="Phone Number" SortExpression="Pnumber" />
            <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
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
    <asp:SqlDataSource ID="SCRUDUsers" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [ag_User]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ag_User] WHERE [UserID] = @original_UserID AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pnumber] = @original_Pnumber) OR ([Pnumber] IS NULL AND @original_Pnumber IS NULL)) AND (([Street] = @original_Street) OR ([Street] IS NULL AND @original_Street IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL))" InsertCommand="INSERT INTO [ag_User] ([UserID], [Fname], [Lname], [Email], [Pnumber], [Street], [City], [State], [Zip]) VALUES (@UserID, @Fname, @Lname, @Email, @Pnumber, @Street, @City, @State, @Zip)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ag_User] SET [Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [Pnumber] = @Pnumber, [Street] = @Street, [City] = @City, [State] = @State, [Zip] = @Zip WHERE [UserID] = @original_UserID AND (([Fname] = @original_Fname) OR ([Fname] IS NULL AND @original_Fname IS NULL)) AND (([Lname] = @original_Lname) OR ([Lname] IS NULL AND @original_Lname IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Pnumber] = @original_Pnumber) OR ([Pnumber] IS NULL AND @original_Pnumber IS NULL)) AND (([Street] = @original_Street) OR ([Street] IS NULL AND @original_Street IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([Zip] = @original_Zip) OR ([Zip] IS NULL AND @original_Zip IS NULL))">
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
</asp:Content>
