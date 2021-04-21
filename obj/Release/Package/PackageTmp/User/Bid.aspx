<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bid.aspx.cs" Inherits="FinalProj.Bid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Buy a car here</h1>
    <div>
        <table>
            <tr>
                <th class="tableInformation">Date: </th>
                <th>
                    <asp:TextBox ID="txtDate" runat="server" Type="date" Width="250px"></asp:TextBox>
                </th>
                <th>&nbsp</th>
            </tr>
            
             <tr>
                <th class="tableInformation">Car Model:</th>
                <th>
                    <asp:DropDownList ID="txtCarBox" runat="server" Width="250px" Height="30px">
                      <asp:ListItem Selected="True" Value="None">Select Car</asp:ListItem>
                    </asp:DropDownList>     
                 </th>
                   <th>&nbsp</th>
             </tr>
            <tr>
                <th class="tableInformation">MSRP: </th>
                <th> <asp:Label ID="MSRPLabel" runat="server" Text="MSRP"></asp:Label> </th>
                
            </tr>
             <tr>
                <th class="tableInformation">Ticket Bid:</th>
                <th>
                    <asp:TextBox ID="txtBid" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>&nbsp</th>
            </tr>
        </table>
    </div>
    <h3>Contact Information</h3>
    <div>
        <table>
            <tr>
                <th>Same as account?</th>
                <th>
                    <asp:CheckBox ID="ShippingButton" text=" " runat="server" CssClass="radio-button" AutoPostBack="true"/>
                </th>
            </tr>
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
            <tr>
                <th style="height: 60px;"></th>
                <th style="height: 60px;">
                    <asp:Button CssClass="submitButton2" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:Button CssClass="submitButton2" ID="ClearButton" runat="server" Text="Clear" />
                </th>
            </tr>
            <tr>
                <th>&nbsp</th>
                <th>
                    <asp:Label ID="feedbackLabel" runat="server" Text="Submit a bid" />
                </th>
            </tr>
           
        </table>


    </div>
</asp:Content>
