 <%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="insertVet.aspx.cs" Inherits="Admin_insertVet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h2>Insert Vet</h2>
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
                    <td style="text-align:right"><asp:Label ID="Label5" runat="server" Text="Specialties: "></asp:Label></td>
                    <td>

                        <asp:CheckBoxList ID="ckboxSpec" runat="server">
                            <asp:ListItem Value="Surgeries">Surgeries</asp:ListItem>
                            <asp:ListItem Value="Treatment">Treatment of Stomatology</asp:ListItem>
                            <asp:ListItem Value="Dermatology">Dermatology</asp:ListItem>
                            <asp:ListItem Value="Otorhinolaringology">Otorhinolaringology</asp:ListItem>
                            <asp:ListItem Value="Ortepedia">Ortepedia</asp:ListItem>
                            <asp:ListItem Value="Obstetrics">Obstetrics</asp:ListItem>
                            <asp:ListItem Value="Gynecology">Gynecology</asp:ListItem>
                            
                        </asp:CheckBoxList>

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
                    <td style="text-align:right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>                
            
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="CleanButton" runat="server" Text="Limpar" OnClick="Button1_Click" /> &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="AcceptButton" ValidationGroup="register" CausesValidation="true" runat="server" Text="Concluir" OnClick="Button2_Click" /> 
                    </td>
                </tr>
            
            </table>

</asp:Content>

