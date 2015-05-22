<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="manageVet.aspx.cs" Inherits="Admin_manageVet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="id_user" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" >
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>


            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="id_vet" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id_vet" />
            <asp:BoundField DataField="vet_name" HeaderText="Name" SortExpression="vet_name" />
            <asp:BoundField DataField="vet_phone" HeaderText="Phone" SortExpression="vet_phone" />
            <asp:BoundField DataField="vet_district" HeaderText="District" SortExpression="vet_district" />
            <asp:BoundField DataField="vet_specialties" HeaderText="Specialties" SortExpression="vet_specialties" />
            <asp:BoundField DataField="vet_mail" HeaderText="Email" SortExpression="vet_mail" />

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
        SelectCommand="SELECT [id_vet], [vet_name], [vet_pw], [vet_phone], [vet_district], [vet_specialties], [vet_mail] FROM [Vet] ORDER BY [id_vet]"
        UpdateCommand="UPDATE [Vet] SET [vet_name] = @vet_name, [vet_pw] = @vet_pw, [vet_phone] = @vet_phone, [vet_district] = @vet_district, [vet_specialties] = @vet_specialties, [vet_mail] = @vet_mail WHERE [id_vet] = @original_id_vet AND (([vet_name] = @original_vet_name) OR ([vet_name] IS NULL AND @original_vet_name IS NULL)) AND (([vet_pw] = @original_vet_pw) OR ([vet_pw] IS NULL AND @original_vet_pw IS NULL)) AND (([vet_phone] = @original_vet_phone) OR ([vet_phone] IS NULL AND @original_vet_phone IS NULL)) AND (([vet_district] = @original_vet_district) OR ([vet_district] IS NULL AND @original_vet_district IS NULL)) AND (([vet_specialties] = @original_vet_specialties) OR ([vet_specialties] IS NULL AND @original_vet_specialties IS NULL)) AND (([vet_mail] = @original_vet_mail) OR ([vet_mail] IS NULL AND @original_vet_mail IS NULL))"
        DeleteCommand="DELETE FROM [Vet] WHERE [id_vet] = @original_id_vet AND (([vet_name] = @original_vet_name) OR ([vet_name] IS NULL AND @original_vet_name IS NULL)) AND (([vet_pw] = @original_vet_pw) OR ([vet_pw] IS NULL AND @original_vet_pw IS NULL)) AND (([vet_phone] = @original_vet_phone) OR ([vet_phone] IS NULL AND @original_vet_phone IS NULL)) AND (([vet_district] = @original_vet_district) OR ([vet_district] IS NULL AND @original_vet_district IS NULL)) AND (([vet_specialties] = @original_vet_specialties) OR ([vet_specialties] IS NULL AND @original_vet_specialties IS NULL)) AND (([vet_mail] = @original_vet_mail) OR ([vet_mail] IS NULL AND @original_vet_mail IS NULL))"
        InsertCommand="INSERT INTO [Vet] ([vet_name], [vet_pw], [vet_phone], [vet_district], [vet_specialties], [vet_mail]) VALUES (@vet_name, @vet_pw, @vet_phone, @vet_district, @vet_specialties, @vet_mail)" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
           
           <UpdateParameters>
                <asp:Parameter Name="vet_name" Type="String" />
                <asp:Parameter Name="vet_pw" Type="String" />
                <asp:Parameter Name="vet_phone" Type="Decimal" />
                <asp:Parameter Name="vet_district" Type="String" />
                <asp:Parameter Name="vet_specialties" Type="String" /> 
                <asp:Parameter Name="vet_mail" Type="String" /> 
                <asp:Parameter Name="original_id_vet" Type="Int32" />
                <asp:Parameter Name="original_vet_name" Type="String" />
                <asp:Parameter Name="original_vet_pw" Type="String" />
                <asp:Parameter Name="original_vet_phone" Type="Decimal" />
                <asp:Parameter Name="original_vet_district" Type="String" />
                <asp:Parameter Name="original_vet_specialties" Type="String" />
                <asp:Parameter Name="original_vet_mail" Type="String" />
            </UpdateParameters>
            
            <DeleteParameters>
                <asp:Parameter Name="original_id_vet" Type="Int32" /> 
                <asp:Parameter Name="original_vet_name" Type="String" />
                <asp:Parameter Name="original_vet_pw" Type="String" />
                <asp:Parameter Name="original_vet_phone" Type="Decimal" />
                <asp:Parameter Name="original_vet_district" Type="String" />
                <asp:Parameter Name="original_vet_specialties" Type="String" />
                <asp:Parameter Name="original_vet_mail" Type="String" />
            </DeleteParameters>
            
            <InsertParameters>
                <asp:Parameter Name="vet_name" Type="String" />
                <asp:Parameter Name="vet_pw" Type="String" />
                <asp:Parameter Name="vet_phone" Type="Decimal" />
                <asp:Parameter Name="vet_district" Type="String" />
                <asp:Parameter Name="vet_specialties" Type="String" /> 
                <asp:Parameter Name="vet_mail" Type="String" /> 
            </InsertParameters>

    </asp:SqlDataSource>

</asp:Content>

