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
            ID="gv" Font-Names="Arial" Font-Size="Smaller"  AutoGenerateSelectButton="True"
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="pet"
            runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanging="gv_SelectedIndexChanging" DataKeyNames="id_pet">
            
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>
                <asp:TemplateField> 
                    <ItemTemplate>
                        <asp:LinkButton ID="insert_pet" runat="server" OnClick="insert_pet" CommandName="Insert">Insert</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            
                <%--DATA BOUND COLUMNS--%>
                 
                 <asp:BoundField DataField="id_pet" HeaderText="id_pet" Visible="false" SortExpression="id_pet" InsertVisible="False" ReadOnly="True"  />
                 <asp:BoundField DataField="pet_name_" HeaderText="Name" SortExpression="pet_name_" />
                 <asp:BoundField DataField="pet_age" HeaderText="Age" SortExpression="pet_age" />
                 <asp:BoundField DataField="pet_race" HeaderText="Breed" SortExpression="pet_race" />  
                 <asp:BoundField DataField="pet_gender" HeaderText="Gender" SortExpression="pet_gender" />
                 <asp:BoundField DataField="pet_photo" Visible="false" HeaderText="pet_photo" SortExpression="pet_photo" />  

                            
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
            SelectCommand="SELECT [id_pet], [pet_name ] AS pet_name_, [pet_age], [pet_race], [pet_gender], [pet_photo] FROM [Pet]"
            UpdateCommand="UPDATE [Pet] SET [pet_name ] = @pet_name_, [pet_age] = @pet_age, [pet_race] = @pet_race, [pet_gender] = @pet_gender, [pet_photo] = @pet_photo WHERE [id_pet] = @id_pet"
            DeleteCommand="DELETE FROM [Pet] WHERE [id_pet] = @id_pet"
            InsertCommand="INSERT INTO [Pet] ([pet_name ], [pet_age], [pet_race], [pet_gender], [pet_photo]) VALUES (@pet_name_, @pet_age, @pet_race, @pet_gender, @pet_photo)">
           
           <UpdateParameters>
                <asp:Parameter Name="pet_name_" Type="String" />
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
                <asp:Parameter Name="pet_name_" Type="String" />
                <asp:Parameter Name="pet_age" Type="String" />
                <asp:Parameter Name="pet_race" Type="String" />
                <asp:Parameter Name="pet_gender" Type="String" />
                <asp:Parameter Name="pet_photo" Type="Object" />
            </InsertParameters>

        
        </asp:SqlDataSource>


        </section>
    </section>

</asp:Content>