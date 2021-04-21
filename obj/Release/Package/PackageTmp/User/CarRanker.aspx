<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarRanker.aspx.cs" Inherits="FinalProj.CarRanker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Here users will be able to rank and sort cars in the database by features.</h1>
    <br />
    <div class="row">
        <div class="col-md-8">
            <h2>Rank</h2>
            <asp:GridView ID="RankerGridView" ShowHeader="true" runat="server"></asp:GridView>
        </div>
        <div class="col-md-4"> 
            <img runat="server" src="~/Images/audiInterior.jpg" alt="Audi interior" style="width:100%;">
        </div>
    </div>
 
</asp:Content>
