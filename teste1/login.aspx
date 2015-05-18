<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
                            <li><asp:HyperLink ID="schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li> </ul>
				       
				        </ul>
                        <img src="images/hr.jpg"/>
			        </div>
		        </div>
	        </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <section id="main">
        <section id="special">
            <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                <td><asp:TextBox ID="user" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox ID="pw" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="log" runat="server" Text="Login" OnClick="log_Click" /></td>
            </tr>
            </table>
            <asp:HyperLink ID="HyperLinkRegister" runat="server" NavigateUrl="~/Register.aspx">Don't have an acount? please register.</asp:HyperLink>
        </section>
    </section>

    
</asp:Content>
