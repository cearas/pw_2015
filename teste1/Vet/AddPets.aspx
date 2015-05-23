<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="AddPets.aspx.cs" Inherits="Vet_AddPets" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main">
        <section id="special">
           
            <h2 style="color:#424242">Add Pet</h2>
            <asp:ValidationSummary ID="validationPet" runat="server" />
            <asp:Label ID="InvalidCredentialMessage" runat="server" Text="Please select an user!" Visible="false"></asp:Label>
            
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabelUser" runat="server" Text="User: "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="droplist_users" AutoPostBack="true" runat="server"></asp:DropDownList>
                    </td>
                </tr>
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


