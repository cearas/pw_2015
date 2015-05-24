<%@ Page Title="" Language="C#" MasterPageFile="~/Vet/MP_Vet.master" AutoEventWireup="true" CodeFile="ViewMeds.aspx.cs" Inherits="Vet_ViewMeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="main">
        <section id="special">

            <h2 style="color:#424242">View Meds</h2>
            <br />

            <asp:GridView 
            ID="gv" Font-Names="Arial" 
            AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" 
            DataSourceID="pet"
            runat="server" CellPadding="2" ForeColor="Black" GridLines="None" AllowPaging="True" DataKeyNames="Id" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            
            <Columns>
            
                <%--DATA BOUND COLUMNS--%>
                <asp:TemplateField> 
                    <ItemTemplate>
                        <asp:LinkButton ID="insert_med" runat="server" OnClick="insert_med" CommandName="Insert">Insert</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                 
                 <asp:CommandField ShowDeleteButton="True" />
                 
                 <asp:BoundField DataField="Id" HeaderText=" Id " SortExpression="Id" InsertVisible="False" ReadOnly="True"  />
                 <asp:BoundField DataField="med_name" HeaderText=" Medication Name " SortExpression="med_name" />
                 <asp:BoundField DataField="med_qtd" HeaderText=" Quantity" SortExpression="med_qtd" />
                  

                            
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
            SelectCommand="SELECT * FROM [Med] ORDER BY [Id]"
            UpdateCommand="UPDATE [Med] SET [med_name] = @med_name, [med_qtd] = @med_qtd WHERE [Id] = @Id"
            DeleteCommand="DELETE FROM [Med] WHERE [Id] = @Id"
            InsertCommand="INSERT INTO [Med] ([med_name], [med_qtd]) VALUES (@med_name, @med_qtd)">
           
           <UpdateParameters>
                <asp:Parameter Name="med_name" Type="String" />
                <asp:Parameter Name="med_qtd" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" /> 
            </DeleteParameters>
            
            <InsertParameters>
                <asp:Parameter Name="med_name" Type="String" />
                <asp:Parameter Name="med_qtd" Type="Int32" />
            </InsertParameters>

        
        </asp:SqlDataSource>


        </section>
    </section>
</asp:Content>

