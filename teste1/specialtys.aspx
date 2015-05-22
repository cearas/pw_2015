<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="specialtys.aspx.cs" Inherits="specialtys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HEAD" Runat="Server">
        <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="menu">
                        <img src="images/mini_logo.jpg" 
				        <ul>
					        <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li class="current_page_item" ><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialtys.aspx">Specialties</asp:HyperLink></li>
                            <li ><asp:HyperLink ID="schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li> </ul>
                            <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Client/Booking.aspx">Booking</asp:HyperLink></li>
                            <li><asp:HyperLink ID="ViewPets" runat="server" NavigateUrl="~/Client/ViewPets.aspx">ViewPets</asp:HyperLink></li>
                            
                        </ul>
                        <img src="images/hr.jpg"/>
			        </div>
		        </div>
	        </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

    <section id="main">
        <section id="one">
            <h2 style="color:#424242">Service Set Basic Preventive Care and Routine:</h2> <br />
                <ul>
                   <li>Vaccination</li>
                    <li>Analysis Clinics</li>
                    <li>Placement Microchips</li>
                    <li>Wound Care</li><br />
                    <li>Assisted reproduction in birth</li>
                    <li>Appointments</li>
                    <li>Surgeries</li>
                    <li>Treatment of Stomatology</li>
                    <li>Dermatology</li><br />
                    <li>Otorhinolaringology</li>
                    <li>Ortepedia</li>
                    <li>Obstetrics</li>
                    <li>Gynecology</li>
                </ul>
        </section>
    </section>
</asp:Content>

