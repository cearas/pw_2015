<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Vet_Booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main">
        <section id="special">
            
            <h2 style="color:#424242">Booking</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabelUser" runat="server" Text="User: "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="droplist_users" runat="server"></asp:DropDownList>
                    </td>
                </tr>                
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Pet: "></asp:Label></td>
                    <td>
                        <asp:Button ID="bt_AddPet" runat="server" Text="Add Pet" OnClick="bt_AddPet_Click" />
                       
                        <asp:DropDownList ID="droplist_pets" runat="server"></asp:DropDownList>
                       
                    </td>  
                </tr>

                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Date: "></asp:Label></td>
                    <td>
                        <asp:Calendar ID="calendar_appoint" runat="server" OnSelectionChanged="calendar_appoint_SelectionChanged"></asp:Calendar>
                        <asp:CustomValidator ID="cust_calendar" ValidationGroup="booking" Display="Dynamic" OnServerValidate="cust_calendar_validate" runat="server" ErrorMessage="Selecione um dia no calendário"></asp:CustomValidator>
                         </td>
                </tr>
                 <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Hour: "></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="droplist_hour" runat="server" Visible="False">
                            <asp:ListItem Text="Select Hour" Value="0"></asp:ListItem>
                            <asp:ListItem Text="9:00" Value="1"></asp:ListItem>
                            <asp:ListItem Text="10:00" Value="2"></asp:ListItem>
                            <asp:ListItem Text="11:00" Value="3"></asp:ListItem>
                            <asp:ListItem Text="13:00" Value="4"></asp:ListItem>
                            <asp:ListItem Text="14:00" Value="5"></asp:ListItem>
                            <asp:ListItem Text="15:00" Value="6"></asp:ListItem>
                            <asp:ListItem Text="16:00" Value="7"></asp:ListItem>
                            <asp:ListItem Text="17:00" Value="8"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="booking" InitialValue="0" ID="RequiredFieldValidator3" Display="Dynamic" runat="server" ControlToValidate="droplist_hour" Text="*" ErrorMessage="Invalid Option"></asp:RequiredFieldValidator>
                    </td>                       
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Subject: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_subject" runat="server"></asp:TextBox></td>  
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Type: "></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="droplist_type" AutoPostBack="true" runat="server" OnSelectedIndexChanged="droplist_type_SelectedIndexChanged">
                            <asp:ListItem Text="Select Type" Value="0"></asp:ListItem>
                             <asp:ListItem Text="Daily" Value="1"></asp:ListItem>
                             <asp:ListItem Text="By Appointment" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="booking" InitialValue="0" ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ControlToValidate="droplist_type" Text="*" ErrorMessage="Invalid Option"></asp:RequiredFieldValidator>
                    </td>                       
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Specialties: "></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="droplist_specialties" runat="server" Visible="false">
                            <asp:ListItem Text="Select Specialty" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="booking" InitialValue="0" ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="droplist_specialties" Text="*" ErrorMessage="Invalid Option"></asp:RequiredFieldValidator>
                    </td>                       
                </tr>               
            
                <tr>
                    <td><asp:Button ID="CleanButton" runat="server" Text="Limpar"  /></td>
                    <td><asp:Button ID="AcceptButton" ValidationGroup="booking" CausesValidation="true" runat="server" Text="Concluir" OnClick="AcceptButton_Click"  /></td>
                </tr>
            
            </table>
        </section>
    </section>
</asp:Content>


