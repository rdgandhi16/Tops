<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S_MGMT.aspx.cs" Inherits="S_MGMT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<table align="center" border="1" cellpadding="4">
            <tr>
                <td>
                    Hiiden File
                </td>
                <td>
                    <asp:Label ID="Label_Hidden" runat="server" Text=""></asp:Label>
                </td>
                <td>
                    <asp:HiddenField ID="HiddenField1" Value="10" runat="server" />
                </td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Hidden Value" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
        <table align="center" border="1">
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
                <asp:Button ID="Button2" runat="server" Text="ADD_Session" 
                    onclick="Button2_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button3" runat="server" Text="Abandon_Session" 
                    onclick="Button3_Click" />
            </td></tr>
            <tr>
            <td align="center">
                <asp:Button ID="Button4" runat="server" Text="Clear" onclick="Button4_Click" 
                    Width="123px" />
                </td>
                <td align="center">
                    <asp:Button ID="Button5" runat="server" Text="Remove_Session" 
                        onclick="Button5_Click" Width="159px" /></td></tr>
        </table>--%>
        <br />

        <table align="center" border="2">
        <tr>
        <td>
        cookies
        </td>
        <td>
            <asp:Label ID="Label_cookies" runat="server" Text=""></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Text_cookies" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button6" runat="server" Text="ADD" onclick="Button6_Click" />
        </td>
        <td>
            <asp:Button ID="Button7" runat="server" Text="View" onclick="Button7_Click" />
        </td>
        <td>
            <asp:Button ID="Button8" runat="server" Text="Expiry" onclick="Button8_Click" />
        </td>
        
        </tr>
        </table>
    </div>
    </form>
</body>
</html>
