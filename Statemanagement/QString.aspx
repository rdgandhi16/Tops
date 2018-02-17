<%@ Page Language="C#" AutoEventWireup="true" CodeFile="QString.aspx.cs" Inherits="QString" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="2" border="1">
    <tr>
    <td>
    First Name 
    </td>
    <td>
        <asp:TextBox ID="Text_Name" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Last Name</td>
    <td>
        <asp:TextBox ID="Text_surname" runat="server"></asp:TextBox>
    </td></tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" />
    </td></tr>
    </table>
    </div>
    </form>
</body>
</html>
