<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCarData.aspx.cs" Inherits="FinalProj.AddCarData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add Car Data</h1>
    <p>Only available to system admins</p>
    <div>
        <asp:Label ID="lblResult" runat="server" Text="Enter car information"></asp:Label>
        <table>
             <tr>
                <th class="tableInformation">Car Year:</th>
                <th>
                      <asp:TextBox ID="txtYear" runat="server" Width="250px"></asp:TextBox>  
                 </th>
                   <th>
                       <asp:RequiredFieldValidator ID="YearRequiredFieldValidator" runat="server" ErrorMessage="Required" ControlToValidate="txtYear" Display="Dynamic"></asp:RequiredFieldValidator>
                   </th>
             </tr>           
             <tr>
                <th class="tableInformation">Car Model:</th>
                <th>
                      <asp:TextBox ID="txtModel" runat="server" Width="250px"></asp:TextBox>  
                 </th>
                   <th>
                       <asp:RequiredFieldValidator ID="ModelRequiredFieldValidator" runat="server" ErrorMessage="Required" ControlToValidate="txtModel" Display="Dynamic"></asp:RequiredFieldValidator>
                   </th>
             </tr>
            <tr>
                <th class="tableInformation">MSRP: </th>
                <th> <asp:TextBox ID="txtMSRP" runat="server" Width="250px"></asp:TextBox> </th>
                <th>
                       <asp:RequiredFieldValidator ID="MSRPRequiredFieldValidator" runat="server" ErrorMessage="Required" ControlToValidate="txtMSRP" Display="Dynamic"></asp:RequiredFieldValidator>
                </th>
                
            </tr>
             <tr>
                <th class="tableInformation">Car Engine: </th>
                <th>
                    <asp:TextBox ID="txtEngine" runat="server" Width="250px"></asp:TextBox>
                </th>
                 <th>
                     <asp:RequiredFieldValidator ID="EngineRequiredFieldValidator" runat="server" ErrorMessage="Required" ControlToValidate="txtEngine" Display="Dynamic"></asp:RequiredFieldValidator>
                 </th>
            </tr>
            <tr>
                <th>&nbsp</th>
                <th>
                    <asp:Button CssClass="submitButton2" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                    <asp:Button CssClass="submitButton2" ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" />
                </th>
                <th>&nbsp</th>
            </tr>
        </table>
    </div>
</asp:Content>
