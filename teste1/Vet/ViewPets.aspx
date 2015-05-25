<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="ViewPets.aspx.cs" Inherits="Vet_ViewPets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="main">
        <section id="special">

            <h2 style="color:#424242">View Pets</h2>
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
                        <asp:LinkButton ID="insert_pet" runat="server" OnClick="insert_pet" CommandName="Insert">Insert</asp:LinkButton>
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
            <asp:Label ID="Label5" runat="server" Visible="false" Text="Photo: "></asp:Label>
            <asp:Image ID="img_pet" runat="server" Visible="false" ImageUrl="GetImage.ashx?id=12345" Height="150px" Width="165px" /><br />
            <asp:Label ID="Label1" runat="server" Visible="false" Text="Name: "></asp:Label>
            <asp:Label ID="lbl_name" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label2" runat="server" Visible="false" Text="Age: "></asp:Label>
            <asp:Label ID="lbl_age" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label3" runat="server" Visible="false" Text="Breed: "></asp:Label>
            <asp:Label ID="lbl_breed" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="Label4" runat="server" Visible="false" Text="Gender: "></asp:Label>
            <asp:Label ID="lbl_gender" runat="server" Visible="false" Text="Label"></asp:Label><br />
        
        
        <%--THE SQL DATA SOURCE CONNECTED WITH THE GRIDVIEW--%>
       <asp:SqlDataSource ID="pet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [id_pet], [pet_name] AS pet_name, [pet_age], [pet_race], [pet_gender], [pet_photo], user_name FROM [Pet] INNER JOIN [User] ON [Pet].id_user = [User].id_user "
            UpdateCommand="UPDATE [Pet] SET [pet_name] = @pet_name, [pet_age] = @pet_age, [pet_race] = @pet_race, [pet_gender] = @pet_gender WHERE [id_pet] = @id_pet"
            DeleteCommand="DELETE FROM [Pet] WHERE [id_pet] = @id_pet"
            InsertCommand="INSERT INTO [Pet] ([pet_name], [pet_age], [pet_race], [pet_gender], [pet_photo]) VALUES (@pet_name, @pet_age, @pet_race, @pet_gender, @pet_photo)">
           
           <UpdateParameters>
                <asp:Parameter Name="pet_name" Type="String" />
                <asp:Parameter Name="pet_age" Type="String" />
                <asp:Parameter Name="pet_race" Type="String" />
                <asp:Parameter Name="pet_gender" Type="String" />
                <asp:Parameter Name="pet_photo" Type="Object" /> 
                <asp:Parameter Name="id_pet" Type="Int32" />
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="id_pet" Type="Int32" /> 
            </DeleteParameters>
            
            <InsertParameters>
                <asp:Parameter Name="pet_name" Type="String" />
                <asp:Parameter Name="pet_age" Type="String" />
                <asp:Parameter Name="pet_race" Type="String" />
                <asp:Parameter Name="pet_gender" Type="String" />
                <asp:Parameter Name="pet_photo" Type="Object" />
            </InsertParameters>

        
        </asp:SqlDataSource>


        </section>
    </section>
</asp:Content>

