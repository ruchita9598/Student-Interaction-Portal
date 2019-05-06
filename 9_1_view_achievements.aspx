<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="9_1_view_achievements.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <div align="center">
    <p style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView2" Height="80%" Width="80%" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" 
            AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="User ID" 
                    SortExpression="user_id" />
                <asp:BoundField DataField="name" HeaderText="Name" 
                    SortExpression="name" />
                <asp:BoundField DataField="branch" HeaderText="Branch" 
                    SortExpression="branch" />
                <asp:BoundField DataField="event_name" HeaderText="Event Name" 
                    SortExpression="event_name" />
                <asp:BoundField DataField="secured_position" HeaderText="Position" 
                    SortExpression="secured_position" />
                <asp:BoundField DataField="level" HeaderText="Level" SortExpression="level" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:s15cos124ConnectionString %>" 
            SelectCommand="SELECT a.user_id, l.name, a.branch, a.event_name, a.secured_position, a.level from achievements a INNER JOIN login l on a.user_id=l.user_id ORDER BY secured_position">
        </asp:SqlDataSource>
    </p>
    </div>
</asp:Content>

