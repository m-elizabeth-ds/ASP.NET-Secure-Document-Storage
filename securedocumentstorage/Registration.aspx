<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="securedocumentstorage.Registration" %>



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Registration</title>

<style>
body{
    background:#e8f5e9;
    font-family:Arial;
}

#form1{
    width:590px;
    margin:30px auto;
    background:lightblue;
    padding:25px;
    border-radius:10px;
    box-shadow:0px 4px 15px rgba(0,0,0,0.2);
}

.panel-header{
    text-align:center;
    margin-bottom:20px;
}

.panel-body{
    background:lightcyan;
    padding:20px;
    border-radius:6px;
}

.panel-footer{
    background:#f0f0f0;
    padding:15px;
    text-align:center;
    border-radius:6px;
    margin-top:20px;
    font-size:14px;
}

.field{
    margin-bottom:15px;
}

.txt{
    width:250px;
    padding:6px;
    margin-left:15px;
}

.btn{
    display:block;
    margin:20px auto;
    padding:10px 40px;
    font-size:22px;
    background:#CCFF99;
    border:2px groove #999966;
    font-weight:bold;
    font-style:italic;
    color:#003300;
    cursor:pointer;
}
</style>

</head>

<body>
<form id="form1" runat="server">

<div class="panel-header">
<asp:Label ID="Label8" runat="server" Text="Registration"
BackColor="#FFFFCC"
BorderColor="#666633"
BorderStyle="Groove"
BorderWidth="3px"
Font-Bold="True"
Font-Italic="True"
Font-Size="XX-Large"
Font-Underline="True"
ForeColor="#663300"></asp:Label>
</div>

<asp:Panel ID="Panel2" runat="server" CssClass="panel-body">

<div class="field">
Username
<asp:TextBox ID="txtUsername" runat="server" CssClass="txt"></asp:TextBox>
<asp:RequiredFieldValidator ControlToValidate="txtUsername" ErrorMessage="*" runat="server" ForeColor="Red"/>
</div>

<div class="field">
Password
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
<asp:RequiredFieldValidator ControlToValidate="txtPassword" ErrorMessage="*" runat="server" ForeColor="Red"/>
</div>

<div class="field">
Confirm Password
<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
<asp:CompareValidator ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ErrorMessage="Mismatch password" runat="server" ForeColor="Red"/>
</div>

<div class="field">
Email
<asp:TextBox ID="txtEmail" runat="server" CssClass="txt"></asp:TextBox>
</div>

<div class="field">
Full Name
<asp:TextBox ID="txtFullName" runat="server" CssClass="txt"></asp:TextBox>
</div>

<div class="field">
Date of Birth
<asp:TextBox ID="txtDOB" runat="server" TextMode="Date" CssClass="txt"></asp:TextBox>
</div>

<div class="field">
Gender
<asp:RadioButtonList ID="RadioButtonListt1" runat="server">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
    <asp:ListItem>Other</asp:ListItem>
</asp:RadioButtonList>
</div>

    <div style="text-align:center;">
<asp:Button ID="Button1" runat="server"
    Text="Register"
    BackColor="#CCFF99"
    BorderColor="#999966"
    BorderStyle="Groove"
    BorderWidth="2px"
    Font-Bold="True"
    Font-Italic="True"
    Font-Size="XX-Large"
    ForeColor="#003300"
    OnClick="Button1_Click" />
</div>

</asp:Panel>

<asp:Panel ID="Panel3" runat="server" CssClass="panel-footer">
Contact Us : 9999999999 | supportsecdocument@example.com | © 2026
</asp:Panel>

</form>
</body>
</html>
