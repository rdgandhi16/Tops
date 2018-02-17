<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 343px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="2" cellpadding="2" align="center" >
    <tr>
    <td class="style1">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
