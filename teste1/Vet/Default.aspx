<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Vet_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 style="color:#424242">Manage Tasks</h2>
    <br />

    <asp:GridView 
            ID="gv" Font-Names="Arial" Font-Size="Smaller"  AutoGenerateSelectButton="True"
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="SqlDataSource1"
            runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" DataKeyNames="Id_apoint">
            
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>

                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField> 
                    <ItemTemplate>
                        <asp:LinkButton ID="insert_comments" runat="server" OnClick="insert_comments" CommandName="Insert">Insert Comment</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            
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

