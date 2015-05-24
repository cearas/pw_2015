<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="manageMeds.aspx.cs" Inherits="Admin_manageMeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="med_name" HeaderText="Name" SortExpression="med_name" />
            <asp:BoundField DataField="med_qtd" HeaderText="Quantity" SortExpression="med_qtd" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField> 
                <ItemTemplate>
                    <asp:LinkButton ID="insert_med" runat="server" OnClick="insert_med" CommandName="Insert">Insert</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
        SelectCommand="SELECT * FROM [Med] ORDER BY [Id]"
        UpdateCommand="UPDATE [Med] SET med_name = @med_name, med_qtd = @med_qtd"
        DeleteCommand="DELETE FROM [Med] WHERE Id = @id_med"
        InsertCommand="INSERT INTO [Med] ([med_name], [med_qtd]) VALUES (@med_name, @med_qtd)">

        <UpdateParameters>
            <asp:Parameter Name="med_name" />
            <asp:Parameter Name="med_qtd" />
        </UpdateParameters>
            
        <DeleteParameters>
            <asp:Parameter Name="id_med" /> 
        </DeleteParameters>
            
        <InsertParameters>
            <asp:Parameter Name="med_name" />
            <asp:Parameter Name="med_qtd" />
        </InsertParameters>

    </asp:SqlDataSource>
    
</asp:Content>

