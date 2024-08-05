<%@ Page Language="C#" AutoEventWireup="true" CodeFile="School.aspx.cs" Inherits="School" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <meta charset="UTF-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
          <link rel="stylesheet" href="hotel1.css">
          <title>Hotel/Patna.Com</title>
</head>
<style>
      *{
          margin: 0;
          padding: 0;
          box-sizing: border-box;
}
section{
          height: 90vh;
}

li{
          list-style: none;
}
a{
          text-decoration: none;
          color: white;
          font-size: 20px;
          font-weight: bold;
}

/*-----------------Header----------------------*/

header{
          height: 60px;
          position: relative;
          padding: 0 2rem;
          background-color: rgba(0, 0, 0, 0.63);
          box-shadow: 2px 5px 10px rgb(255, 0, 0);
}
.navbar{
          width: 100%;
          height: 60px;
          max-width: 1200px;
          display: flex;
          margin: 0 auto;
          align-items: center;
          justify-content: space-between;
}
.navbar .logo {
          font-size: 2rem;
          font-weight: bold;
          color: white;
          cursor: pointer;
}
.navbar .link{
          display: flex;
          gap: 1.3rem;
          font-family: Comic Sans MS;
}
.link a:hover{
          color: orange;
          border-bottom: 2px solid orange;
          border-radius: 8px;
          padding: .5px .2rem;
}
.navbar .toggle_btn{
          color: #fff;
          font-size: 1.5rem;
          cursor: pointer;
          display: none;
}
.action_btn{
          font-family: Comic Sans MS;
          color: white;
          padding: .3rem 1rem;
          background-color: orange;
          border: none;
          outline: none;
          border-radius: 5px;
          font-size: 1rem;
          font-weight: bold;
          cursor: pointer;
          transition: .5s;
}
.action_btn:hover{
          color: black;
          scale: 1.03;
}
.action_btn:active{
          scale: 1s;
}
/**********************Drop Down Menu***********************/
.dropdown_menu{
          height: 0px;
          display: none;
          position: absolute;
          right: 2rem;
          top: 60px;
          width: 200px;
          background-color: rgba(153, 149, 149, 0.863);
          backdrop-filter: blur(1px);
          border-radius: 10px;
          overflow: hidden;
          transition: .4s cubic-bezier(1, 1, 1, 1);
}
.dropdown_menu.open{
          height: 300px;
}
.dropdown_menu li{
          padding: 0.7rem;
          text-align: center;
          display: flex;
          justify-content: center;
}
.dropdown_menu li:hover{
          background-color: rgba(70, 66, 66, 0.801);
          border-radius: 10px;
          border-bottom: 2px solid white;
}
.dropdown_menu li a{
          transition: .6s;
}
.dropdown_menu li a:hover{
          border-bottom: 2px solid white;
}
.dropdown_menu .action_btn{
          width: 100%;
          display: flex;
          justify-content: center;
}

@media(max-width: 720px){
          .navbar .link,
          .navbar .action_btn{
                    display: none;
          }
          .navbar .toggle_btn{
                    display: block;
          }
          .dropdown_menu{
                    display: block;
          }
}

@media(max-width: 400px){
          .dropdown_menu{
                    left: 2rem;
                    width: unset;
          }
}

/* .........................  End Of Header  ............................*/

/*      .............  Home Section Start  ..................*/

.home{
          background-image: url(Img/background.jpg);
          background-size: cover;
          background-position: center;
          opacity: 20px;
}
   
</style>
<body>
          <!---------------Start Of Header------------------->
          <header>
                    <div class="navbar">
                              <div class="logo">GET IT PROJECT</div>
                              <ul class="link">
                                        <li><a href="#home">Home</a></li>
                                        <li><a href="#services">Services</a></li>
                                        <li><a href="#facility">Facility</a></li>
                                        <li><a href="#room">Room</a></li>
                                        <li><a href="#contact">Contact</a></li>
                              </ul>
                              <a href="Login.aspx" class="action_btn">Log In</a>
                              <div class="toggle_btn">
                                        <i class="fa fa-bars" aria-hidden="true" ></i>
                              </div>
                    </div>
                    <div class="dropdown_menu ">
                              <li><a href="#home">Home</a></li>
                              <li><a href="#services">Services</a></li>
                              <li><a href="#facility">Facility</a></li>
                              <li><a href="#room">Room</a></li>
                              <li><a href="#contact">Contact</a></li>
                              <li><a href="Login.aspx" class="action_btn">Log In</a></li>
                    </div>
          </header>
          <!------------------     End Of Header       --------------------->

           <!--Home Section Start-->
          <section class="home" id="home">


          </section>
</body>















<!-------------------Header Section  ----------------------->
<script>
          const toggleBtn = document.querySelector('.toggle_btn')
          const toggleBtnIcon = document.querySelector('.toggle_btn i')
          const dropDownMenu = document.querySelector('.dropdown_menu')

    toggleBtn.onclick = function(){
        dropDownMenu.classList.toggle('open')
              const isopen = dropDownMenu.classList.contains('open')
          
        toggleBtnIcon.classList = isopen
        ?         'fa-solid fa-xmark'
        :          'fa fa-bars'
    }
</script>
<!---------------Image Slide Show------------>
<script>
          const slider = document.getElementsByClassName('.slider')
          const span = document.querySelector('.span')
    span.onclick = function(){
                    
    }
</script>
</html>
