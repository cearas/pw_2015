<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="AddMed.aspx.cs" Inherits="Vet_AddMed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main">
        <section id="special">
            <asp:LoginView ID="log_User" runat="server">
 
            </asp:LoginView>
            <h2 style="color:#424242">Add Med</h2>
            <asp:ValidationSummary ID="validationMed" runat="server" />
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" ValidationGroup="addmed" ControlToValidate="txt_name" runat="server" ErrorMessage="Please enter your name!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpName" ValidationGroup="addmed" runat="server" ControlToValidate="txt_name" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid Name" Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
  
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Quantidade: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_qtd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqAge" ValidationGroup="addmed" ControlToValidate="txt_qtd" runat="server" ErrorMessage="Please enter the quantity of medication!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexAge" ValidationGroup="addmed" runat="server" ControlToValidate="txt_qtd" ValidationExpression="^[0-9]{1,2}$" ErrorMessage="Invalid Age" Text="*"></asp:RegularExpressionValidator>
                    </td>  
                </tr>   
                <tr>
                    <td><asp:Button ID="CleanButton" runat="server" Text="Limpar" OnClick="CleanButton_Click" /></td>
                    <td><asp:Button ID="AcceptButton" ValidationGroup="addmed" CausesValidation="true" runat="server" Text="Concluir" OnClick="AcceptButton_Click" /></td>
                </tr>
            
            </table>

        </section>
    </section>
</asp:Content>


