<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="FinalProj.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="boldText"><%: Title %>Contact Us</h2>
    <div class="row">
        <div class="col-md-6">
            <h3>Dealership Location</h3>
            <address>
                21 E Market St<br />
                Iowa City, IA 52245<br />
                <abbr title="Phone">P:</abbr>
                319-888-8888
            </address>

            <address>
                <strong>Dealership:</strong>   <a href="mailto:Support@example.com">dealership@gmail.com</a><br />
                <strong>Developer:</strong> <a href="mailto:Marketing@example.com">aidan-gorny@uiowa.edu</a>
            </address>
        </div>
        <div class="col-md-6">
            <img src="Images/audiA4.jpg" alt="Audi A4" />
        </div>
    </div>

</asp:Content>
