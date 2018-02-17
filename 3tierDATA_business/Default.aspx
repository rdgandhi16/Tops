<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1" cellpadding="5">
    <tr>
    <td>
    First Name
    </td>
    <td>
        <asp:TextBox ID="Text_fname" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Last Name
    </td>
    <td>
        <asp:TextBox ID="Text_lname" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center" colspan="2">
        <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
