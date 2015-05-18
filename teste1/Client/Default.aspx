<%@ Page Title="" Language="C#" MasterPageFile="~/Client/MP_Client.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Client_Profile" %>

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
					        <li class="current_page_item"><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Client/Booking.aspx">Booking</asp:HyperLink></li>
                            <li><asp:HyperLink ID="ViewPets" runat="server" NavigateUrl="~/Client/ViewPets.aspx">ViewPets</asp:HyperLink></li>
                            <li><asp:HyperLink ID="History" runat="server" NavigateUrl="~/Client/History.aspx">History</asp:HyperLink></li>
				        </ul>
                        <img src="../images/hr.jpg"/>
			        </div>
		        </div>
	        </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section id="main">
        <section id="special">
            
            <h2 style="color:#424242">Profile</h2>

            <table>
                <tr>
                    <td style="height: 21px"><asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label></td>
                    <td style="height: 21px"><asp:Label ID="lbl_name" runat="server" Text="null"></asp:Label></td>
                </tr>

            <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="District: "></asp:Label></td>
                     <td><asp:Label ID="lbl_district" runat="server" Text=""></asp:Label></td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Phone Number: "></asp:Label></td>
                   <td><asp:Label ID="lbl_phone" runat="server" Text=""></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Address: "></asp:Label></td>
                    <td><asp:Label ID="lbl_address" runat="server" Text=""></asp:Label></td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="E-mail: "></asp:Label></td>
                   <td><asp:Label ID="lbl_email" runat="server" Text=""></asp:Label></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="NIF: "></asp:Label></td>
                    <td><asp:Label ID="lbl_nif" runat="server" Text=""></asp:Label></td>
                </tr>                
            
                <tr>
                    <td><asp:Button ID="ChangeButton" runat="server" Text="Change" OnClick="ChangeButton_Click" /></td>
                    
                </tr>
            
            </table>
            

            

        </section>
    </section>

</asp:Content>

