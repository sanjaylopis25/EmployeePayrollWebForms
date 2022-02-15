<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EmployeePayrollWebForms.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/SignUp.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
        <form method="post">
            <h3>Create An Account</h3>
        
        <div class="text_field">
            <p>to Continue To Employee Payroll</p>
        </div>
        <br />
        <div class="box1">
            <asp:TextBox ID="TextBox1" runat="server" name="First name" placeholder="First name"></asp:TextBox>
            <asp:RequiredFieldValidator class="" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox2" runat="server" name="Last name" placeholder="Last name"></asp:TextBox>            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
            
        </div>
            
        <br />
        <div class="box2">
            <asp:TextBox ID="TextBox3" runat="server" name="Email" placeholder="Email Id" style="width: 380px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Entered" ControlToValidate="TextBox3" Font-Size="X-Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="cpassword">
            <asp:TextBox ID="TextBox4" runat="server" type="password" name="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" type="password" name="Password" placeholder="Confirm Password"></asp:TextBox>        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords Does not Match " Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
        <br />
        <!--<div class="select">
                <select>
                    <option disabled selected>Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Others">Others</option>
                </select> 
        </div>
        <br />--> 
        <div class="number">
            <asp:TextBox ID="TextBox6" runat="server" name="Phone Number" placeholder="Phone Number" style="width: 380px" ></asp:TextBox>
        </div>
        <br />
        <div class="btnregister">
        <!--<button  class="btn-1">Register</button>-->
            <asp:Button ID="Button1" class="btn-2" runat="server" Text="Sign In" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Register"/>
    </div>
        <%--<div>
            <!--<button  class="btn-2">Sign In</button>-->
            <asp:Button ID="Button1" class="btn-2" runat="server" Text="Sign In" OnClick="Button1_Click" />
    </div>--%>
        </form>      
    </div>    
</asp:Content>
