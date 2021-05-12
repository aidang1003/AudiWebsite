<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProj._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-image: url(Images/audirs7.jpg); background-size: cover; height:500px;">
        <h1 style="color:aliceblue">Gorny's Car Dealership</h1>
        <p class="jumbo-subtext">Here at Gorny's car dealership we believe in selling quality Audi's of every kind to consumers. Click below to get registered with an account, and begin buying!</p>
        <p><a href="Account/Register" class="btn btn-primary btn-lg">Register Now &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                Browse our database below of Audi vehicles. Here you will find information on car specs such as engine type, speed stats, and safety features.
            </p>
            <p>
                <a class="btn btn-default" href="User/Browse">Browse Cars &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Place a bid</h2>
            <p>
                While all the MSRPs are listed Gorny's car dealership allows you to place offers on cars through a web form.
            </p>
            <p>
                <a class="btn btn-default" href="User/Bid">Bid Now &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>View Bids</h2>
            <p>
                See the status of you bids. When a bid is rejected a counter-offer becomes available so it is important to continuously moniter your bids!
            </p>
            <p>
                <a class="btn btn-default" href="User/ViewBids">View Bids &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
