<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HiddenFile.aspx.cs" Inherits="HiddenFile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="1">
    <tr>
    <td>
    HiddenFile:
    </td>
    <td>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td>
        <asp:HiddenField ID="HiddenField1"  Value="20" runat="server" />
    </td>
    </tr>
    <tr>
    <td align="center">    
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
