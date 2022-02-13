<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeePayroll.Master" AutoEventWireup="true" CodeBehind="EPForm.aspx.cs" Inherits="EmployeePayrollWebForms.WebForms.EPForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../StyleSheets/EPForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center">
    <div class="Header">
    <h3> Employee Payroll Form </h3>
    </div> 
        <br />
        <div class="name">
            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>&emsp;&emsp;&emsp;&ensp;
            <asp:TextBox ID="TextBox2" runat="server" Width="550px"></asp:TextBox>
        </div>
        <br />
        <div>
             <asp:Label ID="Label1" runat="server" Text="Profile Image"></asp:Label>
             <asp:RadioButtonList ID="RadioButtonList2" runat="server" Width="512px" CellPadding="1" CellSpacing="1" Height="27px" RepeatDirection="Horizontal">

                 <asp:ListItem><img2 src="../Assets/profile-images/Female%20(3).png" alt="avatar" class="avatar" /></asp:ListItem>
                 <asp:ListItem><img3 src="../Assets/profile-images/Female (4).png" alt="avatar" class="avatar" /></asp:ListItem>
                 <asp:ListItem><img4 src="../Assets/profile-images/Female (4).png" alt="avatar" class="avatar" /></asp:ListItem>
             </asp:RadioButtonList>

        </div>            
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="175px">
            <asp:ListItem>Male</asp:ListItem><asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
         </div>
        <br />
        <div>
            <label>Department&emsp;</label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CellPadding="1" CellSpacing="4" Height="60px" RepeatDirection="Horizontal" Width="512px">
                <asp:ListItem Text="&ensp;HR&emsp;" Value="1"> </asp:ListItem>
                <asp:ListItem Text="Sales" Value="2"></asp:ListItem>
                <asp:ListItem Text="Finance" Value="3"></asp:ListItem>
                <asp:ListItem Text="Engineer" Value="4"></asp:ListItem>
                <asp:ListItem  Text="Others" Value="5"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <br />
        <div>
            <label>Salary&emsp;&emsp;&emsp;&ensp;</label>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="358px" Height="30px">
                <asp:ListItem>Select Salary</asp:ListItem>
                <asp:ListItem>0-2.5Lac</asp:ListItem>
                <asp:ListItem>2.5-5Lac</asp:ListItem>
                <asp:ListItem>5-10Lac</asp:ListItem>
                <asp:ListItem>10Lac &amp; Above</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div>
            <label>Start Date&emsp;</label>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="87px">  
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
            
        </div>
        <br />
        <div >
            <label>Notes&emsp;&emsp;&emsp;&ensp;</label>        
            <asp:TextBox ID="TextBox1" runat="server" width="550px" Height="70px"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" class="btn btn-secondary" Text="Cancel" Width="180px" Height="50px" />&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;
            <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Submit" Width="180px" Height="50px" />&emsp;
            <asp:Button ID="Button3" runat="server" class="btn btn-secondary" Text="Reset" Width="180px" Height="50px" />
        </div>


    </div>
</asp:Content>