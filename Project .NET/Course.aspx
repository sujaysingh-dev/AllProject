<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Course" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head id="Head1" runat="server">
          <meta charset="UTF-8"/>
          <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
          <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
          <title></title>
    <style>
        * {
            margin:0px;
            padding:0px;
            box-sizing:border-box;
        }
        section {
            padding:4rem 4rem 1rem 4rem;
            height:auto;
        }
        body {
            width:100%;
        }
        /*   Header Section Start   */
        #header {
            width:100%;
            display:flex;
            justify-content:space-between;
            padding:.5rem 1rem;
            background-color:white;
            box-shadow:0 5px 5px rgba(0,0,0,0.1);
            position:fixed;
        }
        #header:hover {
            box-shadow:0 5px 5px red;    
        }
        .logoimg {
            height: 73px;
            width: 244px;
            border-right:1px  solid black;
            
        }
        .navbar {
            margin-top:1.1rem;
            display:flex;
        }
        ul {
            display:flex;
        }
        li {
            list-style:none;
            padding:0 1rem;
            position:relative;
        }
        a {
            text-decoration:none;
            font-family:Arial;
            color:gray;
            font-weight:700;
            font-size:16px;
        }
        a:hover,a.active{
            color:black;
            border-bottom: 2px solid red;
        }
        .bar {
            display:none;
            cursor:pointer;
            height: 40px;
            width: 50px; 
        }
        @media (max-width: 765px) {
            .bar {
                display: block;
                padding-right:1rem;
                margin-left: auto;
                padding-top:1.1rem;
            }

            .navbar {
                display:none;
            }
        }

        /*   Header Section End   */



        .body {
            height:auto;
            width:auto;
        }
        .course-head {
            margin-top:4rem;
            font-size:2rem;
            font-family:Candara;
            color:gray;
        }
        .course-container {
            padding-top:2rem;
            display:flex;
            justify-content:space-between;
            font-family:Candara;
        }
        .course-box {
            border:1px solid gray;
            width:auto;
            height:auto;
            flex:1 1 250px;
            flex-wrap:wrap;
        }



        /*   START OF FOOTER SECTION   */
        .footer {
            height:auto;
            background:blue;
        }
        .footer-head {
            font-family:Candara;
            font-size:1.4rem;
            color:white;
        }
        .footer-container {
            height:auto;
            margin:auto;
            display:flex;
            justify-content:space-around;
            flex-wrap:wrap;
            font-family:Candara;
        }
        .footer-box {
            flex:1 1 300px;
            height:auto;
            padding:1rem;
        }
        .footer-box i {
            color:white;
        }
        input[type=text],[type=email] {
            background:blue;
            font-size:1rem;
            width:100%;
            outline:none;
            border-bottom:2px solid white;
            height: 30px;
            color:white;
            font-weight:bold;
            letter-spacing:2px;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
        }
        input[type=submit] {
            padding:.5rem 1rem .5rem 1rem;
            font-size:1rem;
            cursor:pointer;
        }
        input[type=submit]:hover {
            background:black;
            color:white;
        }
        footer-head .footer-a {
            font-size:1rem;
            color:white;
        }
        .social i{
            font-size:1.5rem;
            margin-right:.5rem;
            margin-left:.5rem;
        }
        .social i:hover{
            color:red;
        }


        /*          END OF FOOTER      */
    </style>
    </head>
<body>

    <!---   Start of header Section   --->
    <header id="header">
        <div class="logo"><img src="img/logo1.png" class="logoimg" /></div>
            <div class="navbar">
                <ul>
                    <li ><a class="active" href="Home.aspx">Home</a></li>
                    <li><a href="Course.aspx">Course</a></li>
                    <li><a href="Studentzone.aspx">Student Zone</a></li>
                    <li><a href="Facility.aspx">Facility</a></li>
                    <li><a href="Contactus.aspx">Contact</a></li>
                </ul>
            </div>
            <img src="img/menu.png" class="bar"/>
    </header>

    <!---   End of header Section   --->

    <!--   Start Of Body Section    -->

    <section class="body">
        <center><h1 class="course-head">OUR SMART COURSES</h1></center>
        <div class="course-container">
            <div class="course-box">
                <h2 class="course-head1">1 Year Program</h2>
            </div>
            <div class="course-box">
                <h2 class="course-head1">6 Month Program</h2>
            </div>
            <div class="course-box">
                <h2 class="course-head1">Other Program</h2>
            </div>
        </div>
    </section>

    <!--   End Of Body Section    -->

    <!--    Start of footer Section   -->
    <section class="footer">
        <div class="footer-container">
            <div class="footer-box">
                <div class="footer-text">
                    <h class="footer-head">SOCIAL MEDIA</h><br /><br />
                     <a class="social" href="www twitter.com"><i class="fab fa-twitter"></i></a><h class="text">Twitter</h><br />
                     <a class="social" href="facebook.com"><i class="fab fa-facebook-f"></i></a><h class="text">Facebook</h><br />
                     <a class="social" href="instagram.com"><i class="fab fa-instagram"></i></a><h class="text">Instagram</h><br />
                     <a class="social" href="linkedin.com"><i class="fab fa-linkedin-in"></i></a><h class="text">Linkedin</h>
                </div>
            </div>
            <div class="footer-box">
                <div class="footer-text">
                     <p class="footer-head">ADDRESS<span></span></p><br />
                    <h class="text">GET IT PROJECT PVT. LTD., 2nd Floor, UPA Complex,<br /> Arya Kumar Road, Above Axis Bank<br /> Rajendra Nagar, Patna - 800016 ,</h><br /><br />
                    <h class="text">+91 8292303030 , +91 XXXXXXXXXX</h><br />
                    <h class="text">getproject247@gmail.com</h>
                </div>
            </div>
            <div class="footer-box">
                <div class="footer-text">
                    <p class="footer-head">SUBSCRIBE OUR NEWSLETTER</p><br />
                    <form name="f" method="post" action="">
                        <input type="text" name="t1" placeholder="Enter Your Name" required/><br /><br />
                        <input type="text" name="t1" placeholder="Enter Your Mobile" required/><br /><br />
                        <input type="email" name="t1" placeholder="Enter Your Email ID" required/><br /><br />
                        <input type="submit" name="btn" value="Subscribe" />
                    </form>
                </div>
            </div>
            
        </div>
        <center><div class="footer-head">GET IT PROJECT PVT. LTD. © 2023   |   <a href="#" class="footer-a">Privacy Policy</a></div></center>
    </section>

    <!--   End of Footer Section   -->
</body>
</html>

