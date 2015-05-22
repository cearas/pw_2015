<%@ Page Title="" Language="C#" MasterPageFile="~/Client/MP_Client.master" AutoEventWireup="true" CodeFile="AddPet.aspx.cs" Inherits="Client_AddPet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="menu">
                        <img src="../images/mini_logo.jpg" /> 
				        <ul>
					        <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialtys.aspx">Specialties</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li>
					        <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Client/Booking.aspx">Booking</asp:HyperLink></li>
                            <li><asp:HyperLink ID="ViewPets" runat="server" NavigateUrl="~/Client/ViewPets.aspx">ViewPets</asp:HyperLink></li>
                            
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
            <asp:LoginView ID="log_User" runat="server">
                <LoggedInTemplate>
                  <br />
                  You are logged in as
                  <asp:LoginName ID="logName" runat="server" />
                  .<br />
                  <br />
                  <asp:LoginStatus ID="logStatus" runat="server" />
                </LoggedInTemplate>
            </asp:LoginView>
            <h2 style="color:#424242">Add Pet</h2>
            <asp:ValidationSummary ID="validationPet" runat="server" />
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" ValidationGroup="addpet" ControlToValidate="txt_name" runat="server" ErrorMessage="Please enter your name!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpName" ValidationGroup="addpet" runat="server" ControlToValidate="txt_name" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid Name" Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Photo: "></asp:Label></td>
                    <td><asp:FileUpload ID="fp_photo" runat="server" /></td>                       
                </tr>  
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Age: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqAge" ValidationGroup="addpet" ControlToValidate="txt_age" runat="server" ErrorMessage="Please enter the age of your pet!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexAge" ValidationGroup="addpet" runat="server" ControlToValidate="txt_age" ValidationExpression="^[0-9]{1,2}$" ErrorMessage="Invalid Age" Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Breed: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_breed" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqBreed" ValidationGroup="addpet" ControlToValidate="txt_breed" runat="server" ErrorMessage="Please enter the breed of your pet!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexBreed" ValidationGroup="addpet" runat="server" ControlToValidate="txt_breed" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid Breed" Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Gender: "></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="droplist_Gender" runat="server">
                            <asp:ListItem Text="Select Gender" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="0" ValidationGroup="addpet" ID="Req_ID" Display="Dynamic" runat="server" ControlToValidate="droplist_Gender" Text="*" ErrorMessage="Invalid Option"></asp:RequiredFieldValidator>
                    </td>  
                </tr>              
                    
                <tr>
                    <td><asp:Button ID="CleanButton" runat="server" Text="Limpar" OnClick="CleanButton_Click" /></td>
                    <td><asp:Button ID="AcceptButton" ValidationGroup="addpet" CausesValidation="true" runat="server" Text="Concluir" OnClick="AcceptButton_Click" /></td>
                </tr>
            
            </table>

        </section>
    </section>

</asp:Content>

