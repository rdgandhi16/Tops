<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StateMgmt.aspx.cs" Inherits="StateMgmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StateMgmt</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table border="2" cellpadding="2" align="center" >
    <tr>
    <td>
    ViewState:
    </td>
    <td>
    FirstName:
        <asp:Label ID="Label_view" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="Text_fname" runat="server"></asp:TextBox>
    </td>
    <td>
    LastName:
        <asp:Label ID="Label_view1" runat="server" Text=""></asp:Label>
        <asp:TextBox ID="Text_Lname" runat="server"></asp:TextBox>
    </td>
    <tr>
    <td align="center" colspan="3">
        <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click" 
            Width="141px" />
        <asp:Button ID="Button2" runat="server" Text="view" onclick="Button2_Click" 
            Width="107px" />
    </td></tr>
    </tr>
    <tr>
    <td>
    Query String
    </td>
    <td>
        FirstName:<asp:TextBox ID="Text_F" runat="server" Width="201px"></asp:TextBox>
    </td>
    <td>
    LastName: 
        <asp:TextBox ID="Text_L" runat="server" Width="208px"></asp:TextBox></td>
    <tr>
    <td colspan="3" align="center"> 
        <asp:Button ID="Button3" runat="server" Text="Send" onclick="Button3_Click" 
            Width="100px" />
    </td>
    </tr>
    <tr>
    <td>
    Cookies</td>
    <td>
    </td>
    
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
