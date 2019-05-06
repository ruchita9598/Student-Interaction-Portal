<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="6_book.aspx.cs" Inherits="Default13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
<head>
    <title>Reference Book</title>
    <link rel="stylesheet" href="css1.css">
        <link rel="stylesheet" href="css2.css">
    <style>
        
 body
{
    background-image: url(bgi.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100% ;
}
        #con
        {
            margin-top: -2.5%;
            margin-left: 45%;            
        }
    </style>
</head>
<body>
    <div class="pink_bg" style="background-color:lightpink; margin-top: 50px">  
       <form method="post" action="/home/login?">
               <h1 align=center style="color:darkmagenta;  margin-top:-1%;font-family: cursive; padding-top:-93%;">Reference Book</h1>
               <div>
               <form method="post" action="/home/login?">
               <p>
                       <img class="book" alt="BookSearchicon" src="bksi.png">
                            <label for="book">Search By Subject:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               </img>
                               <img class="book" alt="bookicon" src="bki1.png"><span><label for="Password"> 
                       Book of Subject:</label></span><br />
               </p>
               <div style="margin-left: 12%; height:10%">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem Selected="True">5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="sub" DataValueField="sub" >
                                
                                
                                <asp:ListItem>Analysis and Designs of Algorithms</asp:ListItem>
                                <asp:ListItem>System Programming</asp:ListItem>
                                <asp:ListItem>Object Oriented Programming using JAVA</asp:ListItem>
                                <asp:ListItem>Cyber Security</asp:ListItem>
                                <asp:ListItem>Microprocessor and Interfacing</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:s15cos124ConnectionString %>" 
                                SelectCommand="SELECT [sub] FROM [view_book1] WHERE ([sem] = @sem)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="sem" 
                                        PropertyName="SelectedValue" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                      </div>
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <br />
               &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                   Text="Want to Upload ?"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                   Text="View Available Books" />
               &nbsp;&nbsp;&nbsp;&nbsp;
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
               <asp:Button ID="Button3" runat="server" Text="View Book" 
                   onclick="Button3_Click" />
               <br />
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Image ID="Image1" runat="server" Height="228px" Width="218px" />
               <br />
               <br />
               <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:s15cos124ConnectionString %>" 
                    SelectCommand="SELECT login.name, login.contact,
                    login.email_id FROM login INNER JOIN book ON login.user_id = book.user_id">
               </asp:SqlDataSource>

               <center>
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                   DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CC9966" 
                   BorderStyle="None" BorderWidth="1px" CellPadding="4">
                   <Columns>
                       <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                       <asp:BoundField DataField="contact" HeaderText="Contact Number" 
                           SortExpression="contact" />
                       <asp:BoundField DataField="email_id" HeaderText="Email ID" 
                           SortExpression="email_id" />
                          
                       <asp:BoundField DataField="sub_name" HeaderText="Subject Name" />
                          
                   </Columns>
                   <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                   <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                   <RowStyle BackColor="White" ForeColor="#330099" />
                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                   <SortedAscendingCellStyle BackColor="#FEFCEB" />
                   <SortedAscendingHeaderStyle BackColor="#AF0101" />
                   <SortedDescendingCellStyle BackColor="#F6F0C0" />
                   <SortedDescendingHeaderStyle BackColor="#7E0000" />
               </asp:GridView>
               </center>


               <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:s15cos124ConnectionString %>" 
                   SelectCommand="SELECT login.[name], login.[contact], login.[email_id], book.[sub_name] FROM [login] INNER JOIN book ON login.[user_id]=book.[user_id]">
               </asp:SqlDataSource>

               </p>
                      <h3 style="color:brown;">"Whenever you read a good book, somewhere in the world a door opens to allow in more light.</h3>
                    <p align=right style="font-family:fantasy;padding-right: 4%;">–Vera Nazarian</p>
               </p>
                   
                    
       </form>
                    
    </div>
                  
    </div>
</body>
</html>
</asp:Content>

