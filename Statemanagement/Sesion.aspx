<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sesion.aspx.cs" Inherits="Sesion" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" border="2">
    <tr>
    <td>
    Em Name
    </td>
    <td>
        <asp:TextBox ID="Text_Ename" runat="server"></asp:TextBox>
    </td>
    <td>
    
    Em Surname
    </td>

    <td>
        <asp:TextBox ID="Text_Esurname" runat="server"></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Button ID="Button1" runat="server" Text="Add_EmData" 
            onclick="Button1_Click" />
    </td>
    <td>
    
        <asp:Button ID="Button2" runat="server" Text="Abandon" 
            onclick="Button2_Click" />
        </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="Clear" onclick="Button3_Click" />
        </td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="Remove" onclick="Button4_Click" />
        </td>
    </tr>        
    </table>
    </div>
    </form>
</body>
</html>
