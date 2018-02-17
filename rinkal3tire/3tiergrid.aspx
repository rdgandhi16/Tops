<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/3tiergrid.aspx.cs" Inherits="_3tier" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" align="center" AutoGenerateColumns="false" runat="server"
            OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_id" runat="server" Text='<%#Eval ("ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_fname" runat="server" Text='<%#Eval ("First Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Lbl_lname" runat="server" Text='<%#Eval ("Last Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                       </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
