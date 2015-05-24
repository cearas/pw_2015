<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="managePet.aspx.cs" Inherits="Admin_managePet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView 
            ID="gv" Font-Names="Arial"  
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="pet"
<<<<<<< HEAD
            runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
=======
            runat="server" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
>>>>>>> origin/master
            
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            
            <Columns>
                <asp:TemplateField> 
                    <ItemTemplate>
                        <asp:LinkButton ID="insert_pet" runat="server" OnClick="insert_pet" CommandName="Insert">Insert</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            
                <%--DATA BOUND COLUMNS--%>
                <asp:CommandField ShowDeleteButton="True" />
                 <asp:BoundField DataField="pet_name_" HeaderText="Name" SortExpression="pet_name_" />
                 <asp:BoundField DataField="pet_age" HeaderText="Age" SortExpression="pet_age" />
                 <asp:BoundField DataField="pet_race" HeaderText="Breed" SortExpression="pet_race" />
                 <asp:BoundField DataField="pet_gender" HeaderText="Gender" SortExpression="pet_gender" />
      
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

        <%--THE SQL DATA SOURCE CONNECTED WITH THE GRIDVIEW--%>
       <asp:SqlDataSource ID="pet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [pet_name ] AS pet_name_, [pet_age], [pet_race], [pet_gender], [pet_photo] FROM [Pet]"
            UpdateCommand="UPDATE Pet SET pet_age = @Pet_Age, pet_race = @Pet_Race, pet_gender = @Pet_Gender, [pet_name ] = @Pet_Name"
            DeleteCommand="DELETE FROM Pet WHERE id_pet = @id_pet"
            InsertCommand="INSERT INTO [Pet] ([pet_name], [pet_age], [pet_race], [pet_gender], [pet_photo]) VALUES (@Pet_Name, @Pet_Age, @Pet_Race, @Pet_Gender, @Pet_Photo)">
           
           <UpdateParameters>
                <asp:Parameter Name="Pet_Age" />
                <asp:Parameter Name="Pet_Race" />
                <asp:Parameter Name="Pet_Gender" />
                <asp:Parameter Name="Pet_Name" />
                <asp:Parameter Name="Id_Pet" /> 
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="Id_Pet" /> 
            </DeleteParameters>
            
            <InsertParameters>
                <asp:Parameter Name="Pet_Name" />
                <asp:Parameter Name="Pet_Age" />
                <asp:Parameter Name="Pet_Race" />
                <asp:Parameter Name="Pet_Gender" />
                <asp:Parameter Name="Pet_Photo" />
            </InsertParameters>

        
        </asp:SqlDataSource>

</asp:Content>

