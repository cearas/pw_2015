<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HEAD" Runat="Server">
    <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="logo">
                        <a href="Default.aspx">
                        <img src="images/logo.png" /> <br />
                        <h1 style="color: #5cc132">MobilVet</h1>
				        </a>
				        <span>We take care of your pet</span>
			        </div>
			        <div id="menu">
				        <ul>
                            <li class="current_page_item"><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialtys.aspx">Specialties</asp:HyperLink></li>
                            <li><asp:HyperLink ID="schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li> </ul>
				            <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Client/Booking.aspx">Booking</asp:HyperLink></li>
                            <li><asp:HyperLink ID="ViewPets" runat="server" NavigateUrl="~/Client/ViewPets.aspx">ViewPets</asp:HyperLink></li>
                            <li><asp:HyperLink ID="History" runat="server" NavigateUrl="~/Client/History.aspx">History</asp:HyperLink></li>
				        </ul>
			        </div>
                    
		        </div>
	        </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

</asp:Content>
