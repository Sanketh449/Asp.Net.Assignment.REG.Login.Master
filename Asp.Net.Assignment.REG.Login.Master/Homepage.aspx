<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Asp.Net.Assignment.REG.Login.Master.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome</h1>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cAgencyCode" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="cAgencyCode" HeaderText="cAgencyCode" ReadOnly="True" SortExpression="cAgencyCode" />
                    <asp:BoundField DataField="cName" HeaderText="cName" SortExpression="cName" />
                    <asp:BoundField DataField="cCity" HeaderText="cCity" SortExpression="cCity" />
                    <asp:BoundField DataField="cState" HeaderText="cState" SortExpression="cState" />
                    <asp:BoundField DataField="cZip" HeaderText="cZip" SortExpression="cZip" />
                    <asp:BoundField DataField="vAddress" HeaderText="vAddress" SortExpression="vAddress" />
                    <asp:BoundField DataField="cPhone" HeaderText="cPhone" SortExpression="cPhone" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [cAgencyCode], [cName], [cCity], [cState], [cZip], [vAddress], [cPhone] FROM [RecruitmentAgencies]"></asp:SqlDataSource>
            <asp:Button ID="BtnSignOut" runat="server" Text="SignOut" OnClick="BtnSignOut_Click" />
        </div>
    </form>
</body>
</html>
