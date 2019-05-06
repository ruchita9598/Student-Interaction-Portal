<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="3_home.aspx.cs" Inherits="Default10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%-- <link rel="stylesheet" href="css2.css" type="text/css">--%>
        <style>
            
body
{
    background-image: url(bgi.jpg);
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: 100% 100% ;
}
#navbar{
    padding-left: 6%;
    background-color:aquamarine;
    text-decoration: none;
    overflow: hidden;
    float: center;
    width:92%;
    margin:0 auto;
    overflow:hidden;
    position: fixed;
}
.navitem{

    text-align: center;
    text-decoration: none;
    color:blue;
    font-size:24px;
    padding: 1% 1.35%;
    overflow:hidden;
    float:right;
}
a:hover:not(.active)
{
    background-color: #111;
}
.all
{
    margin-top: 6%;
    margin-left: 10%;
    margin-right: 10%;
    width:80%;
    height:500px;

}

.about
{
    margin-top: 6%;
    margin-left: 35%;
    margin-right: 10%;
    width: 30%;
    height: 400px;
}
/*
#logo{
    color:darkblue;
    font-size: 1000%;
    text-align: center;
}
*/
.topnav .icon{
    display:none;
}
.loggo{
    height:400px;
}
.active{
    background-color: khaki;
}

    #paragraph{
        border: 4px solid pink;
         margin-left: auto;
        margin-right:auto;
         width:80%;
    }
    .paratext{
        color: black;
        padding-left:10px;  
        padding-top:10px;  
        padding-bottom:10px;  
        padding-right:10px;  
    }
    @media only screen and (max-width: 850px) {
        body {
            background-image: url(Images/back2.jpeg);
            background-repeat: no-repeat;
            background-attachment: fixed;
        }
        .navitem{
            float:none;
        }
        #logo{
        
            margin-left: 20%;
            width:80%;
            height:100%;
        }
    }
    @media screen and (max-width: 850px) {
      .topnav a:not(:first-child) {display: none;}
      .topnav a.icon {
        float: right;
        display: block;
          color:white;
      }
    }

    @media screen and (max-width: 850px) {
      .topnav.responsive {position: relative;}
      .topnav.responsive .icon {
        position: absolute;
        right:0px;
        top: 0;
        color:white;
      }
      .topnav.responsive a {
        float: none;
        display: block;
        text-align: left;
      }
    }
.div1
{
    padding-top: 8%;
    margin-bottom: -4%;
    height: 160px;
    width: 40%;
    color: aqua;
}


.fieldset_class
{
    background-color: rgb(27, 96, 209);
    color: White;
    margin-top: 1%;
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
        
        <nav id="navbar" class="topnav">     
            <div id="home">
               <%-- <a href="my.html" class="navitem">Log Out</a>
                <a href="#faq" class="navitem">FAQ</a>
                <a href="#am" class="navitem">Achievements</a>
                <a href="#ev" class="navitem">Events</a>    
                <a href="#pj" class="navitem">Project</a>
                <a href="#bk" class="navitem">Book</a>
                <a href="#sm" class="navitem">Study Material</a>
                <a href="#hm" class="navitem">Home</a>--%>


            <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a> 
            </div>
        </nav>
      <%--  <a id="hm" class="all" href="home.html"></a>
        <a href="study.html"><img id="sm" class="all" src="images/studymaterial.jpg"></a>
        <a href="books.html"><img id="bk" class="all" src="images/books.jpg"></a>
        <a href="proj.html"><img id="pj" class="all" src="images/Inovation.jpg"></a>
        <a href="events.html"><img id="ev" class="all" src="images/events.jpg"></a>
        <a href="ach.html"><img id="am" class="all" src="images/achievements.jpg"></a>
        <a href="faq.html"><img id="faq" class="all" src="images/faq.jpg"></a>--%>

       
        <img id="sm" class="all" src="studymaterial.jpg">
        <img id="bk" class="all" src="books.jpg">
        <img id="pj" class="all" src="Inovation.jpg">
        <img id="ev" class="all" src="events.jpg">
        <img id="am" class="all" src="achievements.jpg">
        <img id="faq" class="all" src="faq.jpg">
        <img  id="abt-us" class="about" src="about_us.png">  
        
        

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
                <br>
                <hr><marquee>Thank You for visiting the portal. Visit Again, Have a Nice Day...!!!</marquee></hr>
            </fieldset>
        </div>  
       
   
    </body>
</html>
</asp:Content>


