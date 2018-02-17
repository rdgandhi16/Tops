<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SM.aspx.cs" Inherits="SM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 81px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1" cellpadding="2">
    <tr>
    <td> 
    First Name
    </td>
    <td class="style1">
        <asp:Label ID="Label_fname" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="Text_fname" runat="server" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    Last Name
    </td>
    <td>
        <asp:Label ID="Label_lname" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="Text_lname" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" />
    </td>
    <td align="center">
        <asp:Button ID="Button2" runat="server" Text="VIEW" onclick="Button2_Click" />
    </td>
    </tr>   
    </table>
    </div>
    </form>
</body>
</html>
