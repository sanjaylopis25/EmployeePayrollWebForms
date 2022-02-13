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
            <input id="Text1" type="text" name="First name" placeholder="First name" />
            <input id="Text2" type="text" name="Last name" placeholder="Last name" />
        </div>
        <br />
        <div class="box2">
            <input id="Text3" type="text" name="Email" placeholder="Email Id" style="width: 380px" />
        </div>
        <br />
        <div class="cpassword">
            <input id="Password1" type="password" name="Password" placeholder="Enter Password" />
            <input id="Password2" type="password" name="Password" placeholder="Confirm Password" />
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
            <input id="Text4" type="text" name="Phone Number" placeholder="Phone Number" style="width: 380px" />
        </div>
        <br />
        <div class="btnregister">
        <button  class="btn-1">Register</button>
    </div>
        <div class="btnsignin">
            <!--<button  class="btn-2">Sign In</button>-->
            <asp:Button ID="Button1" class="btn-2" runat="server" Text="Sign In" href="~/WebForms/Login.aspx" />
    </div>
        </form>      
    </div>    
</asp:Content>
