<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Vet_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="color:#424242">Manage Tasks</h2>
    <br />

    <asp:GridView 
            ID="gv" Font-Names="Arial" Font-Size="Smaller"  AutoGenerateSelectButton="True"
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="SqlDataSource1"
            runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanging="gv_SelectedIndexChanging" AllowPaging="True" DataKeyNames="Id_apoint">
            
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>

            
                <%--DATA BOUND COLUMNS--%>
                 
                 <asp:CommandField ShowDeleteButton="True" />
                 
                 <asp:BoundField DataField="Id_apoint" HeaderText="Id apoint" SortExpression="Id_apoint" InsertVisible="False" ReadOnly="True"  />
                 <asp:BoundField DataField="apoint_date" HeaderText="Date" SortExpression="apoint_date" />
                 <asp:BoundField DataField="apoint_subject" HeaderText="Subject" SortExpression="apoint_subject" />
                 <asp:BoundField DataField="apoint_type" HeaderText="Type" SortExpression="apoint_type" />  
                 <asp:BoundField DataField="apoint_specialty" HeaderText="Specialty" SortExpression="apoint_specialty" />
                 <asp:BoundField DataField="apoint_hour" HeaderText="Hour" SortExpression="apoint_hour" />
                 <asp:BoundField DataField="id_vet" Visible="true" HeaderText="Id vet"  SortExpression="id_vet" />
                               
                <asp:BoundField DataField="id_pet" HeaderText="Id pet" SortExpression="id_pet" />
                <asp:BoundField DataField="id_user" HeaderText="Id user" SortExpression="id_user" />
                               
            </Columns>

            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

            <asp:Label ID="Label5" runat="server" Visible="false" Text="Date: "></asp:Label>
            <asp:Label ID="lbl_date" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Visible="false" Text="Subject: "></asp:Label>
            <asp:Label ID="lbl_subject" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Visible="false" Text="Type: "></asp:Label>
            <asp:Label ID="lbl_type" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Visible="false" Text="Specialty: "></asp:Label>
            <asp:Label ID="lbl_specialty" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Visible="false" Text="Hour: "></asp:Label>
            <asp:Label ID="lbl_hour" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="lbl_idpet" runat="server" Visible="false" Text=""></asp:Label>
            <asp:Label ID="lbl_idvet" runat="server" Visible="false" Text=""></asp:Label><br />
            <asp:Label ID="lbl_iduser" runat="server" Visible="false" Text=""></asp:Label>
            
        
        <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Review: "></asp:Label></td>
                    <td><asp:TextBox ID="txt_review" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" ValidationGroup="addmed" ControlToValidate="txt_review" runat="server" ErrorMessage="Please enter your name!" Text="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexpName" ValidationGroup="addmed" runat="server" ControlToValidate="txt_review" ValidationExpression="^[a-zA-Z'.\s]{3,40}$" ErrorMessage="Invalid Name" Text="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
  
                <tr>
                    <asp:DropDownList ID="droplist_status" AutoPostBack="true" runat="server" >
                            <asp:ListItem Text="Select status" Value="0"></asp:ListItem>
                             <asp:ListItem Text="Active" Value="1"></asp:ListItem>
                             <asp:ListItem Text="Conclude" Value="2"></asp:ListItem>
                        </asp:DropDownList>
                </tr>  
                                <tr>
                    <asp:DropDownList ID="droplist_med" AutoPostBack="true" runat="server">
                        </asp:DropDownList>
                </tr> 
                 
                <tr>
                    <td><asp:Button ID="CleanButton" runat="server" Text="Limpar" OnClick="CleanButton_Click" /></td>
                    <td><asp:Button ID="AcceptButton" ValidationGroup="addmed" CausesValidation="true" runat="server" Text="Concluir" OnClick="AcceptButton_Click" /></td>
                </tr>
            
            </table>
            
    

    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [apoint] WHERE [Id_apoint] = @Id_apoint" 
        InsertCommand="INSERT INTO [apoint] ([apoint_date], [apoint_subject], [apoint_type], [apoint_specialty], [apoint_hour], [id_vet], [id_pet], [id_user]) VALUES (@apoint_date, @apoint_subject, @apoint_type, @apoint_specialty, @apoint_hour, @id_vet, @id_pet, @id_user)" 
        SelectCommand="SELECT * FROM [apoint]" 
        UpdateCommand="UPDATE [apoint] SET [apoint_date] = @apoint_date, [apoint_subject] = @apoint_subject, [apoint_type] = @apoint_type, [apoint_specialty] = @apoint_specialty, [apoint_hour] = @apoint_hour, [id_vet] = @id_vet, [id_pet] = @id_pet, [id_user] = @id_user WHERE [Id_apoint] = @Id_apoint">
        
        
        
        <DeleteParameters>
            <asp:Parameter Name="Id_apoint" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="apoint_date" />
            <asp:Parameter Name="apoint_subject" Type="String" />
            <asp:Parameter Name="apoint_type" Type="String" />
            <asp:Parameter Name="apoint_specialty" Type="String" />
            <asp:Parameter DbType="Time" Name="apoint_hour" />
            <asp:Parameter Name="id_vet" Type="Int32" />
            <asp:Parameter Name="id_pet" Type="Int32" />
            <asp:Parameter Name="id_user" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="apoint_date" />
            <asp:Parameter Name="apoint_subject" Type="String" />
            <asp:Parameter Name="apoint_type" Type="String" />
            <asp:Parameter Name="apoint_specialty" Type="String" />
            <asp:Parameter DbType="Time" Name="apoint_hour" />
            <asp:Parameter Name="id_vet" Type="Int32" />
            <asp:Parameter Name="id_pet" Type="Int32" />
            <asp:Parameter Name="id_user" Type="Int32" />
            <asp:Parameter Name="Id_apoint" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    

    

</asp:Content>

