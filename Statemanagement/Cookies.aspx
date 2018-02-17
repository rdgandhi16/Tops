<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cookies.aspx.cs" Inherits="Cookies" %>

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
                    FirstName
                </td>
                <td>
                    <asp:Label ID="Label_first" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Text_First" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    LastName
                </td>
                <td>
                    <asp:Label ID="Label_Last" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Text_Last" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="View" onclick="Button2_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button3" runat="server" Text="Expire" onclick="Button3_Click" />
            </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
