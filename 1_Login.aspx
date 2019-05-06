<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="1_Login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center" style="height: 292px; margin-bottom: 19px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    &nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Log In"></asp:Label>
        <br />
        <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="User ID   " Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Width="203px"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="User ID can not be empty" 
        ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
    <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#FF3300"></asp:Label>
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Password " Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" Width="204px" TextMode="Password"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" ErrorMessage="Password can not be empty" 
        ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
        <br />
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />
        &nbsp;&nbsp;
&nbsp;&nbsp;
        <br />
    <br />
&nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
        <br />
        Not Registered yet...???&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/2_Register.aspx" 
        ForeColor="#003399" Target="_top">Register</asp:HyperLink>
</div>
</asp:Content>

