 <%@ Page Title="Login Page" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../StyleSheets/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="center">
        <h2 class="titlehead">Sign In </h2>
    <form method="post">
        <div class="text_field">
            
         <p1>to continue to Employee Payroll</p1>
     </div>
     <br />
    <div class="box1">
        <asp:TextBox ID="TextBox1" runat="server" name="Email" placeholder="Email" Width="260px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" Font-Size="Small">*</asp:RequiredFieldValidator>
        <%--<input id="Text1" type="text" name="Email" placeholder="Email" />--%>
    </div>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="Valid1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Email" Font-Size="X-Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     <br /> 
     <div class="box2"> 
         <asp:TextBox ID="TextBox2" runat="server" name="Password" placeholder="Password" Width="260px"></asp:TextBox>
        <%--<input id="Text2" type="Password" name="Password" placeholder="Password" />--%>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red" Font-Size="Small">*</asp:RequiredFieldValidator>
    </div>
    <div class="check_box">
        <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password</asp:LinkButton><br>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
    </div>
    <br />
    <div class="btnLogin">
        <asp:Button ID="Button2" class="btn-3" CausesValidation="false" runat="server" Text="Create Account" OnClick="Button2_Click" />
        <asp:Button ID="Button4" class="btn-4" runat="server" Text="Login" OnClick="Button4_Click" />
        
    </div>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <%--<div>
            <!--<a href="SignUp.aspx">Create an Account</a>-->  
     </div>--%>
    </form>
     
    </div>
    
</asp:Content>
