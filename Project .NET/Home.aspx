<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!DOCTYPE html>
<head runat="server">
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
        /*   SECTION 1 START    */
        .section1 {
            background-size:cover;
            background-position:center;
            height:100vh; 
        }
        .head-section1 {
            font-family:'Comic Sans MS';
        }                                                                                    
        .container {
            padding-top:2rem;
            display:flex;
            justify-content:space-between;
        }
        .text {
            padding-top:6rem;
            font-family:sans-serif;
        }
        .text-0 {
            font-size:2.5rem;
        }
        .welcome {
            color:red;
            font-size:2rem;
            font-family:'Comic Sans MS';
        }
        .text-1 {
            font-size:2rem;
        }
        .text-2 {
            font-size:1.5rem;
        }
        .btn {
            margin-top:2rem;
            padding:.5rem .5rem .5rem .5rem;
            font-size:1.3rem;
            font-weight:bold;
            letter-spacing:2px;
            border-radius:5px;
        }
        .btn:hover {
            cursor:pointer;
            color:white;
            box-shadow:1px 1px 10px blue;
        }

    /*     SLIDER CSS ENDS  */
        .slider-container {
            width:50%;
            height:50%;  
            transition:.8s;                                                       
        }
        .mySlide {
            display: none;
        }
    /*     SLIDER CSS ENDS    */

        /*     SECTION1 ENDS      */


        /*     SECTIONO 2 STARTS     */

        .section2 {
            height:auto;
            width:100%;
        }
        .parent {
            height:auto;
            margin:auto;
            display:flex;
            justify-content:space-around;
            flex-wrap:wrap;
        }
        .child {
            width:250px;
            height:230px;
            flex:1 1 250px;
            margin:10px;
            padding:.5rem;
            box-shadow:inset 0px 0px 10px black;
            border-radius:5px;
        }
        .child:hover{
            background:lightgray;
        }
        i {
            padding-top:.5rem;
            text-align:center;
            color:blue;
        }
        
        h3 {
            font-family:Candara;
            padding-top:.5rem;
        }
        h4 {
            padding:.1rem 1rem;
        }
        .btn1 {
            margin-top:.5rem;
            padding:.2rem .5rem .2rem .5rem;
            font-size:1rem;
            font-weight:bold;
            letter-spacing:2px;
            border-radius:5px;
        }
        .btn1:hover {
            cursor:pointer;
            color:white;
            box-shadow:1px 1px 10px green;
        }
        /*     SECTIONO 2 ENDS     */

        .section3 {
            height:auto;
            width:auto;
        }
        .about {
            margin-left:1.2rem;
            display:flex;
        }
        .about-text {
            width:auto;
            box-shadow:0rem 0rem 1rem gray;
            border-radius:5px;
            padding:1rem;
            flex:1,400px;
        }
        .about-head {
            font-family:Candara;
            font-weight:bold;
        }
        .about-text2 {
            font-family:2rem;
        }
        .about-text3 {
            color:gray;
        }
        .progress1 {
            font-family:Candara;
            font-weight:bold;
        }
        .progress {
            display:flex;
            justify-content:space-between;
        }
        .percent-img i{
            font-size:1rem;
            color:gold;
            cursor:pointer;
        }


        .certificate {
            padding:1rem 4rem;
            height:auto;
            box-shadow:0rem 0rem .4rem black;
        }
        .certificate-box {
            display:flex;
        }
        .certificate-1 {
            flex:1;
        }
        .certificate-1 i{
            color:blue;
        }
        .certificate-p {
            font-weight:bold;
            font-family:Candara;
        }


        .services {
            height:auto;
        }
        .services-head {
            font-size:1.2rem;
            font-family:Candara;
        }
        .parent1 {
            height:auto;
            margin:auto;
            display:flex;
            justify-content:space-around;
            flex-wrap:wrap;
        }
        .child1 {
            width:800px;
            height:auto;
            flex:1 1 250px;
            margin:10px;
            padding:.5rem;
            box-shadow:inset 0px 0px 10px black;
            border-radius:5px;
        }
        .services-span {
            color:red;
        }

        .student {
            height:auto;
        }
        .student-head {
            margin-top:-50px;
            font-family:Candara;
            font-size:2rem;
            color:blue;
        }
        .student-container {
            height:auto;
            margin:auto;
            display:flex;
            justify-content:space-around;
            flex-wrap:wrap;
        }
        .student-box {
            box-shadow:inset 1px 1px 1rem green;
            margin:1rem;
            flex:1 1 300px;
            height:auto;
            padding:1rem;
        }
        .img-text {
            display:flex;
        }
        .student-p {
            font-family:Candara;
            text-align:center;
            padding-bottom:1.5rem;
        }
        .student-img {
            height: 80px; 
            width: 70px;
            border-radius:50%;
            border:1px solid black;
        }
        .student-name {
            padding:1.4rem;
        }
        .student-span {
            color:red;
        }

        .members {
            height:auto;
        }
        .members-head {
            margin-top:-50px;
            font-family:Candara;
            font-size:2rem;
            color:blue;
        }
        .members-container {
            height:auto;
            margin:auto;
            display:flex;
            justify-content:space-around;
            flex-wrap:wrap;
        }
        .members-box {
            box-shadow:inset 1px 1px 1rem green;
            margin:1rem;
            flex:1 1 250px;
            height:350px;
            padding:1rem;
        }
        .img-text1 {
            padding-top:1rem;
        }
        .members-p {
            font-family:Candara;
            text-align:center;
            padding-bottom:1.5rem;
        }
        .members-img {
            height: 150px; 
            width: 130px;
            border-radius:10%;
            border:1px solid white;
            box-shadow:.1rem .1rem 1rem black;
        }
        .members-name {
            padding:1.2rem;
            font-size:1.6rem;
            font-family:Candara;
        }
        .members-span {
            font-size:1.1rem;
            color:red;
        }

        
        /*          START OF FOOTER      */


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

    <!---HERO SECTION START    --->


    <section class="section1">
        <div class="container">
            <div class="text">  
                <table>
                    <th colspan="2">
                        <td><h1 class="head-section1">Success-oriented learning!</h1></td>
                        <td><img src="img/writingicon.png" style="height: 110px; width: 100px; padding-top:2rem;" /></td>
                    </th>
                </table><br /><br />
                <h class="text-0"><span class="welcome">WELCOME TO</span> GET IT PROJECT</h><br /><br />
                <h class="text-1">The Best Computer Institute In Bihar</h><br />
                <h class="text-2">Learn Programming Language</h><br />
                <input type="button" name="b1" value="Join Us" class="btn"/>
            </div>
            <div class="slider-container">
                <div class="slider-img" style="max-width:2000px">
                    <img class="mySlides" src="img/pic1.png" style="width:100%; height:520px"/>
                    <img class="mySlides" src="img/template__1.png" style="width:100%; height:520px"/>
                    <img class="mySlides" src="img/template%20(4).png"  style="width:100%; height:520px"/>
                    <img class="mySlides" src="img/template%20(6).png"  style="width:100%; height:520px"/>
                    <img class="mySlides" src="img/template.png"  style="width:100%; height:520px"/>
                    <img class="mySlides" src="img/robot.png"  style="width:100%; height:520px"/>
                </div>
            </div>
        </div>
    </section>


    <!---COURSE SECTION START    --->


    <section class="section2" id="courses">
        <div class="parent">
            <div class="child">
                <center><i class="fa fa-3x fa-mail-bulk text-primary mb-4"></i></center>
                <center><h3>Digital Marketing</h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
            <div class="child">
                <center><i class="fa fa-3x fa-search text-primary mb-4"></i></center>
                <center><h3>SEO & Backlinks</h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
            <div class="child">
                <center><i class="fa fa-3x fa-laptop-code text-primary mb-4"></i></center>
                <center><h3>Design & Development</h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
        </div>
    </section>

    <!---ABOUT SECTION START    --->

    <section class="section3" id="studentzone">
        <div class="about">
            <div class="about-text">
                <p class="about-head">ABOUT US</p><br />
                <h1 class="about-text2">Institute Runs Minimum 10 years of experience</h1><br />
                <p class="about-text3">Diam dolor diam ipsum et tempor sit. Aliqu diam amet diam et eos labore. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit clita duo justo eirmod magna dolore erat amet</p><br /><br />
                <div class="progress">
                    <div class="progress1">Digital Marketing &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <div class="percent-img"><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i></div>
                    <div class="percent">Rating 5</div>
                </div>
                <div class="progress">
                    <div class="progress1">SEO & Backlinks &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <div class="percent-img"><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i></i></div>
                    <div class="percent">Rating 5</div>
                </div>
                <div class="progress">
                    <div class="progress1">Website Development&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    <div class="percent-img"><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i></div>
                    <div class="percent">Rating 5</div>
                </div>
                <div class="progress">
                    <div class="progress1">Software Development&nbsp;&nbsp;</div>
                    <div class="percent-img"><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i></div>
                    <div class="percent">Rating 5</div>
                </div>
                <div class="progress">
                    <div class="progress1">Project With Smart Ideas</div>
                    <div class="percent-img"><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i><i class="fa fa-3x fa-star text-primary mb-4"></i></div>
                    <div class="percent">Rating 5</div>
                </div>
            </div>
            <div class="about-image">
            </div>
        </div>
    </section>

    <section class="certificate">
        <div class="certificate-box">
            <div class="certificate-1">
                <center><i class="fa fa-certificate fa-3x text-secondary mb-3"></i>
                <h1 class="certificate-h1">+10</h1>
                <p class="certificate-p">Years Experience</p></center>
            </div>
            <div class="certificate-1">
                <center><i class="fa fa-users-cog fa-3x text-secondary mb-3"></i>
                <h1 class="certificate-h1">4</h1>
                <p class="certificate-p">Team Members</p></center>
            </div>
            <div class="certificate-1">
               <center><i class="fa fa-users fa-3x text-secondary mb-3"></i>
                <h1 class="certificate-h1">1234</h1>
                <p class="certificate-p">Happy Student</p></center>
            </div>
            <div class="certificate-1">
                <center><i class="fa fa-check fa-3x text-secondary mb-3"></i>
                <h1 class="certificate-h1">350+</h1>
                <p class="certificate-p">Compleate Projects</p></center>
            </div>
        </div>
    </section>

    <section class="services">
        <div class="services-head"><center><h2>Recently Completed Projects</h2></center></div>
        <div class="parent1">
            <div class="child1">
                <center><img src="img/template%20(6).png" style="height: 200px; width: 300px" /></center><hr />
                <center><h3>Project in <span class="services-span">JAVA</span></h3></center><br />
                <center><h4>The Project In JAVA Its Create Pletform On Eclips. Hear The Data Base Is Used Microsoft Oracle SQL.</h4></center>
            </div>
            <div class="child1">
                <center><img src="img/template%20(5).png" style="height: 200px; width: 300px" /></center><hr />
                <center><h3>Bihar Police Software By <spanc class="services-span"># .NET</spanc></h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
            <div class="child1">
                <center><img src="img/template%20(2).png" style="height: 200px; width: 300px" /></center><hr />
                <center><h3>Hospital Software By <spanc class="services-span">PYTHON</spanc></h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
            <div class="child1">
                <center><img src="img/pic1.png" style="height: 200px; width: 300px" /></center><hr />
                <center><h3>Clinic Software By <spanc class="services-span">PHP + MYSQL</spanc></h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
            <div class="child1">
                <center><img src="img/pic2.png" style="height: 200px; width: 300px" /></center><hr />
                <center><h3>Hospital Software By <spanc class="services-span">PYTHON</spanc></h3></center><br />
                <center><h4>Here the teaching experiace is more than 5 year old jhjhg gjhgj gjgjhgjhg jhgjhgjh</h4></center>
            </div>
        </div>
    </section>

    <section class="student">
        <center><h1 class="student-head">What Say's Our Student !</h1></center>
        <div class="student-container">
            <div class="student-box">
                <center><p class="student-p"><i class="fa fa-quote-left fa-4x text-primary mt-n4 me-3"></i>The <span class="student-span">GET IT PROJECT</span> is the best computer institute in patna bihar. Hear Teaching Concept is very clear for fresher Student can easily Learn Any Programming language......</p></center>
                <div class="img-text">
                    <div class="student-image"><img src="img/sujay.png" class="student-img"/></div>
                    <div class="student-name">Sujay Singh Yadav<br /> Web Developer</div>
                  
                </div>
            </div>
            <div class="student-box">
                <center><p class="student-p"><i class="fa fa-quote-left fa-4x text-primary mt-n4 me-3"></i>The <span class="student-span">GET IT PROJECT</span> is the best computer institute in patna bihar. Hear Teaching Concept is very clear for fresher Student can easily Learn Any Programming language......</p></center>
                <div class="img-text">
                    <div class="student-image"><img src="img/" class="student-img"/></div>
                    <div class="student-name">Gaurav Kumar<br />Developer</div>
                </div>
            </div>
            <div class="student-box">
                <center><p class="student-p"><i class="fa fa-quote-left fa-4x text-primary mt-n4 me-3"></i>The <span class="student-span">GET IT PROJECT</span> is the best computer institute in patna bihar. Hear Teaching Concept is very clear for fresher Student can easily Learn Any Programming language......</p></center>
                <div class="img-text">
                    <div class="student-image"><img src="img/" class="student-img"/></div>
                    <div class="student-name">Harshverdhan Kumar<br />Developer</div>
                </div>
            </div>
        </div>
    </section>

    <section class="members">
        <center><h1 class="members-head">OUR TEAM MEMBERS</h1></center>
        <div class="members-container">

            <div class="members-box">
                <div class="img-text1">
                    <div class="members-image"><center><img src="img/amit.png" class="members-img"/></center></div>
                    <div class="members-name"><center>Amit Kumar<br /><span class="members-span"> Digital Marketing Expert</span></center></div>
                  
                </div>
            </div>
            <div class="members-box">
                <div class="img-text1">
                    <div class="members-image"><center><img src="img/" class="members-img"/></center></div>
                    <div class="members-name"><center>Praveen Kumar Lal<br /><span class="members-span">Software Developer</span></center></div>
                  
                </div>
            </div>
            <div class="members-box">
                <div class="img-text1">
                    <div class="members-image"><center><img src="img/" class="members-img"/></center></div>
                    <div class="members-name"><center>Ajeet Kumar<br /><span class="members-span">Tally & MsOffice & Dos</span></center></div>
                  
                </div>
            </div>
            <div class="members-box">
                <div class="img-text1">
                    <div class="members-image"><center><img src="img/sujay.png" class="members-img"/></center></div>
                    <div class="members-name"><center>Sujay Singh<br /><span class="members-span"> Web Developer</span></center></div>
                  
                </div>
            </div>
        </div>
    </section>



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

</body>
    
    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 1000); // Change image every 2 seconds
        }
    </script>
</html>