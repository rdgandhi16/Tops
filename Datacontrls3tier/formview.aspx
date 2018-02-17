﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="formview.aspx.cs" Inherits="formview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            <asp:FormView ID="FormView1" AllowPaging="true" runat="server" OnPageIndexChanging="FormView1_PageIndexChanging"
                OnModeChanging="FormView1_ModeChanging" OnItemDeleting="FormView1_ItemDeleting"
                OnItemInserting="FormView1_ItemInserting" OnItemUpdating="FormView1_ItemUpdating">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                Id:
                            </td>
                            <td>
                                <asp:Label Text='<%#Eval("id") %>' ID="lbl_id" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Firstname:
                            </td>
                            <td>
                                <asp:Label Text='<%#Eval("fname") %>' ID="lbl_fn" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LastName:
                            </td>
                            <td>
                                <asp:Label Text='<%#Eval("lname") %>' ID="lbl_ln" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="edit">Edit</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="delete">Delete</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="New">New</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EditItemTemplate>
                    <table>
                        <tr>
                            <td>
                                Id:
                            </td>
                            <td>
                                <asp:Label Text='<%#Eval("id") %>' ID="lbl_edit_id" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Firstname:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("fname") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LastName:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("lname") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update">Update</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table>
                        <tr>
                            <td>
                                Id:
                            </td>
                            <td>
                                <asp:TextBox ID="id" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Firstname:
                            </td>
                            <td>
                                <asp:TextBox ID="fn" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                LastName:
                            </td>
                            <td>
                                <asp:TextBox ID="ln" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="insert">Insert</asp:LinkButton>
                                <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel">Cancel</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
            </asp:FormView>
        </center>
    </div>
    </form>
</body>
</html>
