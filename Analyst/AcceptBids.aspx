<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcceptBids.aspx.cs" Inherits="FinalProj.AcceptBids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Where Salespeople will be able to accept and decline bids</h1>
    <p>only available to those with salesperson role</p>
    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">First</th>
          <th scope="col">Last</th>
          <th scope="col">Car</th>
          <th scope="col">Bid</th>
          <th scope="col">&nbsp</th>
          <th scope="col">&nbsp</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope ="row">1</th>
          <th>Aidan</th>
          <th>Gorny</th>
          <th>Audi rs7</th>
          <th>$100,000</th>
          <th>
              <asp:Button ID="Accept" runat="server" Text="Accept" />
          </th>
          <th>
              <asp:Button ID="Reject" runat="server" Text="Reject" />
          </th>
        </tr>
          <tr>
          <th scope ="row">1</th>
          <th>Aidan</th>
          <th>Gorny</th>
          <th>Audi rs7</th>
          <th>$100,000</th>
          <th>
              <asp:Button ID="Button1" runat="server" Text="Accept" />
          </th>
          <th>
              <asp:Button ID="Button2" runat="server" Text="Reject" />
          </th>
        </tr>
      </tbody>
    </table>
</asp:Content>
