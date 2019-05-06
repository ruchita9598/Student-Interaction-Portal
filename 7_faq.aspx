<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="7_faq.aspx.cs" Inherits="Default15" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
    <head>
        <title>FAQ</title>
        <style>
            .faq
            {
                   background-color: rgb(27, 96, 209);
                   color: White;
                   margin-top: 3%;
                   margin-left: 15%;
                   margin-right: 15%;
                   width: 70%;
                   height: 65%;
                
            }
            
            .bg
            {
                background-color: rgb(27, 96, 209);
                color: White;
            }
        </style>
    </head>

    <body>
        <div>
             <ul>
                        
                <asp:Repeater ID="rpFAQ" runat=server>
                <ItemTemplate>
                            <fieldset class="faq">
                                <li>
                                <div><h2><b><%# Eval("question") %></b></h2></div><br>
                                <div><%# Eval("answer") %></div>
                                </li>
                            </fieldset>
                </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </body>
</asp:Content>

