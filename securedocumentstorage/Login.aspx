<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="securedocumentstorage.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Secure Document Storage System</title>

<style>

/* ===== FULL BACKGROUND ===== */
body{
    background:url("C:\Users\Sangeeta Mehta\Downloads\loginp.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    font-family: Arial;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* ===== LOGIN BOX ===== */
.loginbox{
    width:450px;
    min-height:420px;
    background: rgba(255,255,255,0.95);
    padding:35px;
    border-radius:12px;
    box-shadow:0px 0px 20px rgba(0,0,0,0.4);
    text-align:center;
}

/* ===== HEADINGS ===== */
.loginbox h2{
    color:#003399;
}

small{
    color:gray;
}

/* ===== TEXTBOX ===== */
.txt{
    width:100%;
    padding:14px;
    margin-top:10px;
    border-radius:6px;
    border:1px solid #ccc;
    font-size:15px;
}

/* ===== BUTTON ===== */
.btn{
    width:100%;
    padding:12px;
    margin-top:20px;
    background:#003399;
    color:white;
    border:none;
    border-radius:6px;
    cursor:pointer;
    font-size:16px;
}

.btn:hover{
    background:#0055cc;
}

/* ===== LINKS ===== */
.link{
    color:#003399;
    text-decoration:none;
    font-size:14px;
}

.link:hover{
    text-decoration:underline;
}

/* ===== ERROR ===== */
.error{
    color:red;
}

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="loginbox">

<h2>Secure Document Storage System</h2>
<small>Authorized User Login</small>

<br /><br />

Username

<asp:TextBox ID="TextBoxx1" runat="server" CssClass="txt"></asp:TextBox>

<asp:RequiredFieldValidator 
    ControlToValidate="TextBoxx1"
    ErrorMessage="Enter Username" 
    CssClass="error" 
    runat="server" />

<br /><br />

Password

<asp:TextBox 
    ID="TextBoxxpass2" 
    runat="server" 
    TextMode="Password" 
    CssClass="txt">
</asp:TextBox>

<asp:RequiredFieldValidator 
    ControlToValidate="TextBoxxpass2"
    ErrorMessage="Enter Password" 
    CssClass="error" 
    runat="server" />

<br />

<asp:Label ID="Label1" runat="server" CssClass="error"></asp:Label>

<br />

<asp:Button 
    ID="Button1" 
    runat="server" 
    Text="Login"
    CssClass="btn" 
    OnClick="Button1_Click" />

<br /><br />

<asp:LinkButton 
    ID="LinkButton1" 
    runat="server" 
    CssClass="link">
    Forgot Password?
</asp:LinkButton>

<br /><br />

<a href="Registration.aspx" class="link">Create Account</a>

</div>

</form>

</body>
</html>
