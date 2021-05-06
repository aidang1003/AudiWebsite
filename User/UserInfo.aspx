<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInfo.aspx.cs" Inherits="FinalProj.User.UserInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Edit user info here</h1>

    <table>
        <tr>
                <th class="tableInformation">First Name: </th>
                <th>
                    <asp:TextBox ID="txtFirstName" runat="server" Width="250px"></asp:TextBox>
                </th>
               <th>&nbsp</th>
            </tr>
             <tr>
                <th class="tableInformation">Last Name: </th>
                <th>
                    <asp:TextBox ID="txtLastName" runat="server" Width="250px"></asp:TextBox>
                 </th>
                <th>&nbsp</th>
            </tr>
             <tr>
                <th class="tableInformation">Email: </th>
                <th>
                    <asp:TextBox ID="txtEmail" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>&nbsp</th>
            </tr>
            <tr>
                <th class="tableInformation">Confirm Email: </th>
                <th>
                    <asp:TextBox ID="txtEmailConfirm" runat="server" Width="250px"></asp:TextBox>
                </th>
                <th>&nbsp</th>
            </tr>
             <tr>
                <th class="tableInformation">Phone Number:</th>
                <th>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>&nbsp</th>
            </tr>
            <tr>
                <th class="tableInformation">Address: </th>
                <th>
                    <asp:TextBox ID="txtAddress" runat="server" Width="250px"></asp:TextBox>
                </th>
                <th>&nbsp</th>
            </tr>
             <tr>
                <th class="tableInformation">City: </th>
                 <th>
                    <asp:TextBox ID="txtCity" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>&nbsp</th>
            </tr>
             <tr>
                <th class="tableInformation">State: </th>
                 <th>
                    <asp:TextBox ID="txtState" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>&nbsp</th>
            </tr>
             <tr>
                <th class="tableInformation">Zip Code:</th>
                <th>
                    <asp:TextBox ID="txtZipCode" runat="server" Width="250px"></asp:TextBox>
                </th>
                <th>&nbsp</th>
            </tr>
    </table>



</asp:Content>
