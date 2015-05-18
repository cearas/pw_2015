<%@ Page Title="" Language="C#" MasterPageFile="~/Client/MP_Client.master" AutoEventWireup="true" CodeFile="ViewPets.aspx.cs" Inherits="Client_ViewPets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <div id="wrapper1">
	        <div id="header-wrapper">
		        <div id="header" class="container">
			        <div id="menu">
                        <img src="../images/mini_logo.jpg" /> 
				        <ul>
					        <li><asp:HyperLink ID="default" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                            <li><asp:HyperLink ID="aboutus" runat="server" NavigateUrl="~/aboutus.aspx">About Us</asp:HyperLink></li>
					        <li><asp:HyperLink ID="specialties" runat="server" NavigateUrl="~/specialtys.aspx">Specialties</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Schedule" runat="server" NavigateUrl="~/Schedule.aspx">Schedule</asp:HyperLink></li>
					        <li><asp:HyperLink ID="profile" runat="server" NavigateUrl="~/Client/Default.aspx">Profile</asp:HyperLink></li>
                            <li><asp:HyperLink ID="Booking" runat="server" NavigateUrl="~/Client/Booking.aspx">Booking</asp:HyperLink></li>
                            <li class="current_page_item"><asp:HyperLink ID="ViewPets" runat="server" NavigateUrl="~/Client/ViewPets.aspx">ViewPets</asp:HyperLink></li>
                            <li><asp:HyperLink ID="History" runat="server" NavigateUrl="~/Client/History.aspx">History</asp:HyperLink></li>
				        </ul>
                        <img src="../images/hr.jpg"/>
			        </div>
		        </div>
	        </div>
        </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section id="main">
        <section id="special">

            <h2 style="color:#424242">View Pets</h2>
            <br />

            <asp:GridView 
            ID="gv" Visible="true" Font-Names="Arial" Font-Size="Smaller" 
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="pet"
            runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" DataKeyNames="DrawingID" >
            
            <AlternatingRowStyle BackColor="White" />
            
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
                   
                <asp:TemplateField> 
                    <ItemTemplate>    
                        <asp:LinkButton CommandName="info_pet" Text="Info" OnClick="info_pet" runat="server" CommandArgument="id_pet"/>
                   </ItemTemplate>
                </asp:TemplateField>
                            
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

            <asp:Image ID="img_pet" runat="server" Visible="false" ImageUrl="GetImage.ashx?id=12345" Height="150px" Width="165px" /><br />
            <asp:Label ID="lbl_name" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="lbl_age" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="lbl_breed" runat="server" Visible="false" Text="Label"></asp:Label><br />
            <asp:Label ID="lbl_gender" runat="server" Visible="false" Text="Label"></asp:Label><br />
        
        
        <%--THE SQL DATA SOURCE CONNECTED WITH THE GRIDVIEW--%>
       <asp:SqlDataSource ID="pet" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [pet_name ] AS pet_name_, [pet_age], [pet_race], [pet_gender], [pet_photo] FROM [Pet]"
            UpdateCommand="UPDATE Pet SET pet_age = @Pet_Age, pet_race = @Pet_Race, pet_gender = @Pet_Gender, [pet_name] = @Pet_Name WHERE (id_pet = @Id_Pet)"
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


        </section>
    </section>

</asp:Content>

 

