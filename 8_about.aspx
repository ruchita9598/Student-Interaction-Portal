<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="8_about.aspx.cs" Inherits="Default14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
    <head>
        <style>
                .about
                {
                    margin-top: 6%;
                    margin-left: 37%;
                    margin-right: 10%;
                    width: 300px;
                    height: 300px;
               }
               
               .ractangle
               {
                    border: 4px solid pink
                    background-color: rgb(27, 96, 209);
                    margin-left: auto;
                    margin-right:auto;
                    width:70%;
               }
               
               .fieldset_class
               {
                   background-color: rgb(27, 96, 209);
                   color: White;
                   margin-top: 6%;
                   margin-left: 15%;
                   margin-right: 15%;
                   width: 70%;
                   height: 65%;
                   
               }
               
               .clr
               {
                   color: white;
               }
               
               .list_font
               {
                   font-size: large;
               }
        </style>
    </head>

    <body>
        <img src="about_us.png" align="center" alt="About Us LOGO" height="200px" width="200px" class="about">
        
        <div>
            <fieldset class="fieldset_class">
                <legend><h1 class="clr">Student Interaction Portal provides you a platform where you can..!!</h1></legend>
                <ul type="circle" class="list_font">
                    <li>Find <b>Study Material</b> related to Subjects.</li>
                    <li>Explore successfull <b>Projects</b> and see the details.</li>
                    <li>Get details about <b>Books</b> you want from other studnets.</li>
                    <li>Stay updated about different kinds of <b>Events.</b></li>
                        <ul>
                            <li>Technical</li>
                            <li>Cultural</li>
                            <li>Sports</li>
                        </ul>
                    <li>Show your talent by sharing your <b>Achievements.</b></li>
                    <li>Find Solutions of your questions in <b>FAQ</> section.</li>
                </ul>
                </b>
            </fieldset>
        </div>


        <div>
            <fieldset class="fieldset_class">
                <legend><h1 class="clr">Contact</h1></legend>
                <b><h3 class="clr">Mobile Number :  </h3></b>
                +91 83474 09448
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 79900 95347<br><br>
                <b><h3 class="clr">Email-ID : </h3></b>
                ruchitakaneriya@gmail.com<br><br />
                <b><h3 class="clr">WhatsApp Number : </h3></b>
                +91 90998 68045<br><br />
                <b><h3 class="clr">Address :</h3></b>
                Dr. R.K. Desai Marg, Athwalines, Surat-395001<br>
                <hr><marquee>Thank You for visiting the portal. Visit Again, Have a Nice Day...!!!</marquee></hr>
            </fieldset>
        </div>
            
    </body>
</html>
</asp:Content>

