<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <%--<asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>--%>
    
    <div class="AddUser">
    </div>   
    <br />
        <asp:Button ID="Button1" class="btn btn-btn1" runat="server" Text="+ Add User" OnClick="Button1_Click" ClientIDMode="Static" />
        <div>
        <asp:GridView ID="GridView3" CssClass="Gridview1" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="868px" HorizontalAlign="Center" OnRowDeleting="GridView3_RowDeleting" DataKeyNames="Emp_id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Emp_id" HeaderText="Emp_id" InsertVisible="False" ReadOnly="True" SortExpression="Emp_id" />
            <asp:TemplateField HeaderText="Profile_Image" SortExpression="Profile_Image">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Profile_Image") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Profile_Image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            <%--<asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Assets/images/delete-button-png-28580 (1) (1).png" />
                    &nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Assets/images/edit-icon-png-3607 (1) (1) (1).png" />
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" DeleteImageUrl="~/Assets/images/delete-button-png-28580 (1) (1).png" EditImageUrl="~/Assets/images/edit-icon-png-3607 (1) (1) (1).png" HeaderText="Actions" CancelImageUrl="~/Assets/images/red-x-icon-53 (1).png" UpdateImageUrl="~/Assets/images/1567159 (1).png" />
        </Columns>  
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    </div>
     <div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myconnection %>" SelectCommand="SELECT [Name], [Gender], [Department], [Salary], [Start_Date], [Notes], [Profile_Image], [Emp_id] FROM [Form]" DeleteCommand="DELETE FROM [Form] WHERE [Emp_id] = @Emp_id" InsertCommand="INSERT INTO [Form] ([Name], [Gender], [Department], [Salary], [Start_Date], [Notes], [Profile_Image]) VALUES (@Name, @Gender, @Department, @Salary, @Start_Date, @Notes, @Profile_Image)" UpdateCommand="UPDATE [Form] SET [Name] = @Name, [Gender] = @Gender, [Department] = @Department, [Salary] = @Salary, [Start_Date] = @Start_Date, [Notes] = @Notes, [Profile_Image] = @Profile_Image WHERE [Emp_id] = @Emp_id">
        <DeleteParameters>
            <asp:Parameter Name="Emp_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_Date" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Profile_Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Salary" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_Date" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Profile_Image" Type="String" />
            <asp:Parameter Name="Emp_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     </div>   
</asp:Content>

    
