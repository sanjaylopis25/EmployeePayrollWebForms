<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="EPForm.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.EPForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/EPForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
    <div class="Header">
    <h3 style="color:#42515F"> Employee Payroll Form </h3>
    </div> 
        <br />
        <div class="name">
            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="550px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             
        </div>
        <br />
        <%--<div>
             <asp:Label ID="Label1" runat="server" Text="Profile Image"></asp:Label>&emsp;&emsp;&emsp;
            <style>                .rbl1 label {
                    width: 100px
                }
            </style>
             <asp:RadioButtonList ID="RadioButtonList2" CssClass="rbl1" runat="server" Width="512px" CellPadding="1" CellSpacing="1" Height="27px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                 <asp:ListItem>&emsp;<img src="../Assets/profile-images/Female (3).png" alt="avatar" class="avatar" /></asp:ListItem>
                 <asp:ListItem>&emsp;<img src="../Assets/profile-images/Male (1).png" alt="avatar" class="avatar" /></asp:ListItem>
                 <asp:ListItem>&emsp;<img src="../Assets/profile-images/Female (2).png" alt="avatar" class="avatar" /></asp:ListItem>
                 <asp:ListItem>&emsp;<img src="../Assets/profile-images/Male (4).png" alt="avatar" class="avatar" /></asp:ListItem>
             </asp:RadioButtonList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>         --%>   
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <style>                .rbl2 label {
                    width: 100px
                }
            </style>
            <asp:RadioButtonList ID="RadioButtonList1" CssClass="rbl2" runat="server" Width="300px" CellPadding="1" CellSpacing="2" RepeatDirection="Horizontal" RepeatLayout="Flow">
            <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
         </div>
        <br />
        <div>
            <label>Department&nbsp</label>
            &emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <style>                .rbl3 label {
                    width: 80px
                }
            </style>
            <asp:CheckBoxList ID="CheckBoxList1" CssClass="rbl3" runat="server" CellPadding="1" CellSpacing="4" Height="60px" RepeatDirection="Horizontal" Width="512px" RepeatLayout="Flow">
                <asp:ListItem Text="&ensp;HR&emsp;" Value="1"> </asp:ListItem>
                <asp:ListItem Text="&ensp;Sales" Value="2"></asp:ListItem>
                <asp:ListItem Text="&ensp;Finance" Value="3"></asp:ListItem>
                <asp:ListItem Text="&ensp;Engineer" Value="4"></asp:ListItem>
                <asp:ListItem  Text="&ensp;Others" Value="5"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <label>Salary&nbsp;&nbsp;&nbsp;&nbsp;</label>
            &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="358px" Height="30px">
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem>0-2.5Lac</asp:ListItem>
                <asp:ListItem>2.5-5Lac</asp:ListItem>
                <asp:ListItem>5-10Lac</asp:ListItem>
                <asp:ListItem>10Lac &amp; Above</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <br />
        <div>
            <label>Start Date&nbsp;&nbsp;&nbsp;&nbsp;</label>
            &emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Width="60px">  
                <asp:ListItem>Day</asp:ListItem>            
                <asp:ListItem>01</asp:ListItem>
                <asp:ListItem>02</asp:ListItem>
                <asp:ListItem>03</asp:ListItem>
                <asp:ListItem>04</asp:ListItem>
                <asp:ListItem>05</asp:ListItem>
                <asp:ListItem>06</asp:ListItem>
                <asp:ListItem>07</asp:ListItem>
                <asp:ListItem>08</asp:ListItem>
                <asp:ListItem>09</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
                <asp:ListItem>15</asp:ListItem>
                <asp:ListItem>16</asp:ListItem>
                <asp:ListItem>17</asp:ListItem>
                <asp:ListItem>18</asp:ListItem>
                <asp:ListItem>19</asp:ListItem>
                <asp:ListItem>20</asp:ListItem>
                <asp:ListItem>21</asp:ListItem>
                <asp:ListItem>22</asp:ListItem>
                <asp:ListItem>23</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>25</asp:ListItem>
                <asp:ListItem>26</asp:ListItem>
                <asp:ListItem>27</asp:ListItem>
                <asp:ListItem>28</asp:ListItem>
                <asp:ListItem>29</asp:ListItem>
                <asp:ListItem>30</asp:ListItem>
                <asp:ListItem>31</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp
            <asp:DropDownList ID="DropDownList3" runat="server" Width="87px">  
                <asp:ListItem>Month</asp:ListItem>            
                <asp:ListItem>January</asp:ListItem>
                <asp:ListItem>February</asp:ListItem>
                <asp:ListItem>March</asp:ListItem>
                <asp:ListItem>April</asp:ListItem>
                <asp:ListItem>May</asp:ListItem>
                <asp:ListItem>June</asp:ListItem>
                <asp:ListItem>July</asp:ListItem>
                <asp:ListItem>August</asp:ListItem>
                <asp:ListItem>September</asp:ListItem>
                <asp:ListItem>October</asp:ListItem>
                <asp:ListItem>November</asp:ListItem>
                <asp:ListItem>December</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp
            <asp:DropDownList ID="DropDownList4" runat="server" Width="87px">  
                <asp:ListItem>Year</asp:ListItem>            
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem>2012</asp:ListItem>
                <asp:ListItem>2013</asp:ListItem>
                <asp:ListItem>2014</asp:ListItem>
                <asp:ListItem>2015</asp:ListItem>
                <asp:ListItem>2016</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
                <asp:ListItem>2021</asp:ListItem>
                <asp:ListItem>2022</asp:ListItem>
            </asp:DropDownList>

        </div>
        <br />
        <div >
            <label>Notes&nbsp;&nbsp;&nbsp;&nbsp</label> 
            &emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" width="550px" Height="70px"></asp:TextBox>
        </div>
        <br />
        <div class="buttonsbottom">
            <asp:Button ID="Button1" CausesValidation="false" runat="server" class="btn btn-secondary" Text="Cancel" Width="150px" Height="50px" OnClick="Button1_Click" />            
            <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Submit" Width="150px" Height="50px" OnClick="Button2_Click" />
            <asp:Button ID="Button3" CausesValidation="false" runat="server" class="btn btn-secondary" Text="Reset" Width="150px" Height="50px" OnClick="Button3_Click" />
            <%--<asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="Button2" runat="server" Text="Button" />--%>

            </div>
        

    </div>
</asp:Content>