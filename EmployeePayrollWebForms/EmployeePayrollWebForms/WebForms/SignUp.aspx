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
        <div />
            <br />
         <div>
            <asp:TextBox ID="TextBox1" runat="server" name="First name" placeholder="First name"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" name="Last name" placeholder="Last name"></asp:TextBox>
        </div>
&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter First Name" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
        <br />
        <div class="box2">
            <asp:TextBox ID="TextBox3" runat="server" name="Email" placeholder="Email Id" style="width: 380px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Font-Size="X-Small" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Entered" ControlToValidate="TextBox3" Font-Size="X-Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
        <div class="cpassword">
            <asp:TextBox ID="TextBox4" runat="server" type="password" name="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" type="password" name="Password" placeholder="Confirm Password"></asp:TextBox>   
            </div>  
            
            <div class="comparevalidator1">
                <asp:CheckBox ID="CheckBox1" class="checkbox1" runat="server" text="Show Password" OnCheckedChanged="CheckBox1_CheckedChanged1" AutoPostBack="true" />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords Does not Match " Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>
            </div>
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
            
            <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Register"/>
    </div>
    </div>
        <%--<div>
            <!--<button  class="btn-2">Sign In</button>-->
            <asp:Button ID="Button1" class="btn-2" runat="server" Text="Sign In" OnClick="Button1_Click" />
    </div>--%>
        </form>  
    
    </div>    
</asp:Content>
