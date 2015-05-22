<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="AddMed.aspx.cs" Inherits="Vet_AddMed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
             <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="menu">
                        <img src="../images/mini_logo.jpg" 
				        <ul>
					        <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialtys.aspx">Specialties</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li>
					        <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Vet/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Vet/Booking.aspx">Booking</asp:HyperLink></li>
                            <li class="current_page_item"><asp:HyperLink ID="AddMed" runat="server" NavigateUrl="~/Vet/AddMed.aspx">Add Meds</asp:HyperLink></li>
                            
				        </ul>
                        <img src="../images/hr.jpg"/>
			        </div>
		        </div>
	        </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

