 <%@ Page Title="Login Page" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <link href="../StyleSheets/Login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="center">
        <h2>Sign In </h2>
    <form method="post">
        <div class="text_field">
         
         <p1>to continue to Employee Payroll</p1>
     </div>
     <br />
    <div class="box1">
        <input id="Text1" type="text" name="Email" placeholder="Email" />
    </div>
     <br /> 
     <div class="box2">    
        <input id="Text2" type="Password" name="Password" placeholder="Password" />
    </div>
    <div class="check_box">
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
    </div>
    <br />
    <div class="btnlogin">
        <input type="submit" value="Login" />
    </div>
    <div>
        <p>
            or&nbsp;
            <a href="SignUp.aspx">Create an Account</a>
     </p>
     </div>
    </form>
     
    </div>
    
</asp:Content>
