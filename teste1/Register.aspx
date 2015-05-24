<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="teste1_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HEAD" Runat="Server">
           <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="menu">
                        <img src="images/mini_logo.jpg" 
				        <ul>
					        <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialties.aspx">Specialties</asp:HyperLink></li>
                            <li><asp:HyperLink ID="schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li>
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
            
            <h2 style="color:#424242">Register</h2>
            <asp:Label ID="InvalidCredentialMessage" runat="server" Text="Username already exists! Try another one!" Visible="false"></asp:Label>
            <br />
            <asp:ValidationSummary ID="validation_register" runat="server" ValidationGroup="register"/>
            <table>
                <tr>
                    <td style="text-align:right"><asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqName" ControlToValidate="txt_name" runat="server" ErrorMessage="Please enter your name!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpName" runat="server" ControlToValidate="txt_name" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid Name" Text="*"></asp:RegularExpressionValidator>
                    </td>

                </tr>
                
                <tr>
                    <td style="text-align:right"><asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqPass" ControlToValidate="txt_password" runat="server" ErrorMessage="Please enter your password" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpPass" runat="server" ControlToValidate="txt_password" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{6,10})$" ErrorMessage="Please insert a password between 6-10 characters "  Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

            <tr>
                    <td style="text-align:right"><asp:Label ID="Label3" runat="server" Text="District: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_district" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqDistrict" ControlToValidate="txt_district" runat="server" ErrorMessage="Please enter your district" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpDistrict" runat="server" ControlToValidate="txt_district" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid District "  Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td style="text-align:right"><asp:Label ID="Label4" runat="server" Text="Phone Number: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqPhone" ControlToValidate="txt_phone" runat="server" ErrorMessage="Please enter your phone number" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpPhone" runat="server" ControlToValidate="txt_phone" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{3}$" ErrorMessage="Invalid Phone Number"  Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

                <tr>
                    <td style="text-align:right"><asp:Label ID="Label5" runat="server" Text="Address: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqAddress" ControlToValidate="txt_address" runat="server" ErrorMessage="Please enter your address" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpAdress" runat="server" ControlToValidate="txt_address" ValidationExpression="^[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]*$" ErrorMessage="Invalid Address"  Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                
                <tr>
                    <td style="text-align:right"><asp:Label ID="Label6" runat="server" Text="E-mail: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqMail" ControlToValidate="txt_email" runat="server" ErrorMessage="Please enter your e-mail" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpMail" runat="server" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid e-mail"  Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>

                <tr>
                    <td style="text-align:right"><asp:Label ID="Label7" runat="server" Text="NIF: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_nif" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="register" ID="reqNif" ControlToValidate="txt_nif" runat="server" ErrorMessage="Please enter your NIF" Text="*" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="register" ID="regexpNif" runat="server" ControlToValidate="txt_nif" ValidationExpression="^[0-9]?\d{9}$" ErrorMessage="Invalid NIF"  Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>                
            
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="CleanButton" runat="server" Text="Limpar" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="AcceptButton" ValidationGroup="register" CausesValidation="true" runat="server" Text="Concluir" OnClick="Button2_Click" /> 
                    </td>
                </tr>
            
            </table>
 
        </section>
    </section>


</asp:Content>

