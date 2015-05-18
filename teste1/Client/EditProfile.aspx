<%@ Page Title="" Language="C#" MasterPageFile="~/Client/MP_Client.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Client_EditProfile" %>

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
					        <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
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
            
            <h2 style="color:#424242">Edit Profile</h2>
            <br />
            <asp:ValidationSummary ID="validation_register" runat="server" />
            <table>
                <tr>
                    <td style="text-align:right"><asp:Label ID="LabelName" runat="server" Text="Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" ValidationGroup="editprofile" ControlToValidate="txt_name" runat="server" ErrorMessage="Please enter your name!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpName" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_name" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid Name" Text="*"></asp:RegularExpressionValidator>
                    </td>

                </tr>
                
                <tr>
                    <td style="text-align:right"><asp:Label ID="LabelPassword" runat="server" Text="Password: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPass" ValidationGroup="editprofile" ControlToValidate="txt_password" runat="server" ErrorMessage="Please enter your password" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpPass" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_password" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,10})$" ErrorMessage="Please insert a password between 6-10 characters "  Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

            <tr>
                    <td style="text-align:right"><asp:Label ID="LabelDistrict" runat="server" Text="District: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_district" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqDistrict" ValidationGroup="editprofile" ControlToValidate="txt_district" runat="server" ErrorMessage="Please enter your district" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpDistrict" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_district" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid District "  Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td style="text-align:right"><asp:Label ID="LabelPhoneNumber" runat="server" Text="Phone Number: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPhone" ValidationGroup="editprofile" ControlToValidate="txt_phone" runat="server" ErrorMessage="Please enter your phone number" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpPhone" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_phone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{3}$" ErrorMessage="Invalid Phone Number"  Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

                <tr>
                    <td style="text-align:right"><asp:Label ID="LabelAddress" runat="server" Text="Address: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqAddress" ValidationGroup="editprofile" ControlToValidate="txt_address" runat="server" ErrorMessage="Please enter your address" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpAdress" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_address" ValidationExpression="^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$" ErrorMessage="Invalid Address"  Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td style="text-align:right"><asp:Label ID="LabelEmail" runat="server" Text="E-mail: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqMail" ValidationGroup="editprofile" ControlToValidate="txt_email" runat="server" ErrorMessage="Please enter your e-mail" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpMail" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid e-mail"  Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

                <tr>
                    <td style="text-align:right"><asp:Label ID="LabelNIF" runat="server" Text="NIF: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_nif" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqNif" ValidationGroup="editprofile" ControlToValidate="txt_nif" runat="server" ErrorMessage="Please enter your NIF" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpNif" ValidationGroup="editprofile" runat="server" ControlToValidate="txt_nif" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{3}$" ErrorMessage="Invalid NIF"  Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>                
            
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="CleanButton" runat="server" Text="Limpar"  /> &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="AcceptButton" ValidationGroup="editprofile" CausesValidation="true" runat="server" Text="Concluir" OnClick="AcceptButton_Click"  /> 
                    </td>
                </tr>
            
            </table>
 
        </section>
    </section>
</asp:Content>

