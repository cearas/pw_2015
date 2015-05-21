<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="manageClient.aspx.cs" Inherits="Admin_manageClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id_user" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
                <asp:TemplateField> 
                    <ItemTemplate>
                        <asp:LinkButton ID="insert_client" runat="server" OnClick="insert_client" CommandName="Insert">Insert</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id_user" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id_user" />
            <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" />
            <asp:BoundField DataField="user_district" HeaderText="District" SortExpression="user_district" />
            <asp:BoundField DataField="user_phone" HeaderText="Phone" SortExpression="user_phone" />
            <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
            <asp:BoundField DataField="user_mail" HeaderText="Email" SortExpression="user_mail" />
            <asp:BoundField DataField="user_nif" HeaderText="NIF" SortExpression="user_nif" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [id_user], [user_name], [user_district], [user_phone], [user_address], [user_mail], [user_nif] FROM [User] ORDER BY [id_user]"
        UpdateCommand="UPDATE [User] SET [user_name]=@user_name, [user_district] = @user_district, [user_phone] = @user_phone, [user_address] = @user_address, [user_mail] = @user_mail, [user_nif]=@user_nif"
        DeleteCommand="DELETE FROM [User] WHERE id_user = @id_user"
        InsertCommand="INSERT INTO [User] ([user_name], [user_district], [user_phone], [user_address], [user_mail], [user_nif]) VALUES (@user_name, @user_district, @user_phone, @user_address, @user_mail, @user_nif)">
           
           <UpdateParameters>
                <asp:Parameter Name="user_name" />
                <asp:Parameter Name="user_district" />
                <asp:Parameter Name="user_phone" />
                <asp:Parameter Name="user_address" />
                <asp:Parameter Name="user_mail" /> 
                <asp:Parameter Name="user_nif" /> 
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="id_user" /> 
            </DeleteParameters>
            
            <InsertParameters>
                <asp:Parameter Name="user_name" />
                <asp:Parameter Name="user_district" />
                <asp:Parameter Name="user_phone" />
                <asp:Parameter Name="user_address" />
                <asp:Parameter Name="user_mail" /> 
                <asp:Parameter Name="user_mail" /> 
                <asp:Parameter Name="user_nif" /> 
            </InsertParameters>

    </asp:SqlDataSource>
</asp:Content>

