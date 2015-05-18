<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HEAD" Runat="Server">
        <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="menu">
                        <img src="images/mini_logo.jpg" 
				        <ul>
					        <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialtys.aspx">Specialties</asp:HyperLink></li>
                            <li class="current_page_item" ><asp:HyperLink ID="schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li> </ul>
                            <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Client/Booking.aspx">Booking</asp:HyperLink></li>
                            <li><asp:HyperLink ID="ViewPets" runat="server" NavigateUrl="~/Client/ViewPets.aspx">ViewPets</asp:HyperLink></li>
                            <li><asp:HyperLink ID="History" runat="server" NavigateUrl="~/Client/History.aspx">History</asp:HyperLink></li>
                        <img src="images/hr.jpg"/>
			        </div>
		        </div>
	        </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">

  <section id="main">
        <section id="special">
            
            <h2 style="color:#424242">Opening hours</h2>
            <table style="width:100%; height:100%;">
                <tr>
                    <td>
                        
                    </td>
                    <td>
                        <h3>Provision of Services:</h3>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p><h4>Monday to Friday:</h4></p>
                        <ul>
                            <li>Morning: 9h às 13h</li>
                            <li>Afternoon: 14h às 20h</li>
                        </ul>
                        <p><h4>Saturday:</h4></p>
                        <ul>
                            <li> Morning: 9h às 13h</li>
                        </ul>
                    </td>
                    <td>
                        <p><h4>Daily:</h4></p>
                        <ul>
                            <li>Vaccination</li>
                            <li>Analysis Clinics</li>
                            <li>Placement Microchips</li>
                            <li>Wound Care</li>
                            <li>Assisted reproduction in birth</li>
                
                        </ul>
                        <p><h4>By appointment:</h4></p>
                        <ul>
                            <li>Appointments</li>
                            <li>Surgeries</li>
                            <li>Treatment of Stomatology</li>
                            <li>Dermatology</li>
                            <li>Otorhinolaringology</li>
                            <li>Ortepedia</li>
                            <li>Obstetrics</li>
                            <li>Gynecology</li>
                        </ul>
                    </td>
                </tr>
            </table>

        </section>
    </section>

</asp:Content>

