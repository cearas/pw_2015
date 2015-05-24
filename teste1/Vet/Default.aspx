<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Vet_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="color:#424242">Manage Tasks</h2>
    <br />

    <asp:GridView 
            ID="gv" Font-Names="Arial" Font-Size="Smaller"  AutoGenerateSelectButton="True"
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="pet"
            runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanging="gv_SelectedIndexChanging" DataKeyNames="id_pet">
            
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField> 
                    <ItemTemplate>
                        <asp:LinkButton ID="insert_comment" runat="server" OnClick="insert_comment" CommandName="Insert">Insert</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            
                <%--DATA BOUND COLUMNS--%>
                 
                 <asp:BoundField DataField="id_pet" HeaderText="id_pet" Visible="false" SortExpression="id_pet" InsertVisible="False" ReadOnly="True"  />
                 <asp:BoundField DataField="pet_name" HeaderText=" Name " SortExpression="pet_name" />
                 <asp:BoundField DataField="pet_age" HeaderText=" Age " SortExpression="pet_age" />
                 <asp:BoundField DataField="pet_race" HeaderText=" Breed " SortExpression="pet_race" />  
                 <asp:BoundField DataField="pet_gender" HeaderText=" Gender " SortExpression="pet_gender" />
                 <asp:BoundField DataField="pet_photo" Visible="false" HeaderText="pet_photo" SortExpression="pet_photo" />
                 <asp:BoundField DataField="user_name" Visible="true" HeaderText=" Dono " ReadOnly="True"  SortExpression="user_name" />
                               
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
    

    

</asp:Content>

