<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
    <head>
        <style>
            
               .fieldset_class
               {
                   background-color: rgb(27, 96, 209);
                   color: White;
                   margin-top: 3%;
                   margin-left: 15%;
                   margin-right: 15%;
                   width: 70%;
                   height: 65%;
                   
               }
               .clr
               {
                   color: white;
               }
        </style>
    </head>

<body>
         <div>
            <center><img src="tc.png" style="margin-top: 6%;"/></center>
            <fieldset class="fieldset_class">
                <legend><h1 class="clr">Rules : </h1></legend>
                <ul type="circle" class="list_font">
                    <li>Every Participants must be present before half hour of event time.</li>
                    <li>Participants certificates will be provided.</li>
                    <li>Final decision will be announced by respected judges.</li>
                    <li>Misbehaviour will not be entertained and student will disqualify for event.</li>
                </ul>
               
                <p style="margin-left: 560px">
                    <asp:Button ID="Button1" runat="server" BackColor="White" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="#3333CC" onclick="Button1_Click" 
                        Text="View All" />
                </p>
               
            </fieldset>
        </div>



        <div>
            <center><img src="cl.png" style="margin-top: 6%;"/></center>
            <fieldset class="fieldset_class">
                <legend><h1 class="clr">Rules : </h1></legend>
                <ul type="circle" class="list_font">
                    <li>Every Participants must be present before one hour of event time.</li>
                    <li>participants have to bring appropriate costumes on their own</li>
                    <li>Final decision will be announced by respected judges.</li>
                    <li>Misbehaviour will not be entertained and student will disqualify for event.</li>
                </ul>
               
                <p style="margin-left: 600px">
                    <asp:Button ID="Button2" runat="server" BackColor="White" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="#3333CC" onclick="Button2_Click" 
                        Text="View All" />
                </p>
               
            </fieldset>
        </div>

        <div>
            <center><img src="workshop.png" style="margin-top: 6%;"/></center>
            <fieldset class="fieldset_class">
                <legend><h1 class="clr">Rules : </h1></legend>
                <ul type="circle" class="list_font">
                    <li>Workshop will start at exact time, come before starting time.</li>
                    <li>Necessary materials will be provided by institute.</li>
                    <li>Certificate will be provided.</li>
                </ul>
               
                <p style="margin-left: 520px">
                    <asp:Button ID="Button3" runat="server" BorderColor="White" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="#3333CC" onclick="Button3_Click" 
                        Text="View All" />
                </p>
               
            </fieldset>
        </div>

 </body>
 </html>
</asp:Content>

