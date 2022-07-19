<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg From.aspx.cs" Inherits="Asp.Net.Assignment.REG.Login.Master.Reg_From" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    
                    <td><label>First Name</label></td>
                    <td><asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <label>
                            EmailId
                        </label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtEmailId" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td>
                        <asp:TextBox ID="TxtPassword" runat="server"></asp:TextBox></td>
                </tr>
                <tr><td>
                    <asp:Button ID="BtnSignIn1" runat="server" Text="SignIn" OnClick="BtnSignIn1_Click" /></td></tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnReset" runat="server" Text="Reset" OnClick="BtnReset_Click" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
