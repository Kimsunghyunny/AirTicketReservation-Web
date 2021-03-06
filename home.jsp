<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@page import="flight.FlightDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "flight.Flight" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<link rel="apple-touch-icon" sizes="76x76" href="./img/apple-icon.png">
  <link rel="icon" type="image/png" href="./img/favicon.png">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/js/bootstrap-select.min.js"></script>

<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  
  <link href="./css/bootstrap.min.css" rel="stylesheet" />
  <link href="./css/now-ui-kit.css?v=1.2.0" rel="stylesheet" />
 
 
 <script src="./assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="./assets/js/core/bootstrap.min.js" type="text/javascript"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="./assets/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
  <script src="./assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
  <script src="./assets/js/now-ui-kit.js?v=1.2.0" type="text/javascript"></script>

<%
FlightDAO flightDAO = new FlightDAO();
String[][] airport = flightDAO.getAirport();
int num = flightDAO.getAirportNum();

%>
   
    <title>SJK Air</title>
     <link rel="stylesheet" type="text/css" href="style.css" />
  
<style>
       
        .font-color {
        color: #f96332;
      }
      
     table {
       width: 100%;
       border-top: 1px solid #e5e5e5;
       border-collapse: collapse;
     }
     th, td {
       border-bottom: 1px solid #e5e5e5;
       padding: 10px;
     }
     .tr_font{
        font-weight:bold;
        fonr-size:30pt;
     }
     .tr_font2{
       font-weight:bold;
        fonr-size:50pt;
     }
     
     #p_color{
      font-color:"white";
     }
   
     footer{ position:fixed; 
     left:0px; 
     bottom:0px; 
     height:20px; 
     width:100%; 
     background:#d2d2d7; 
     color: white; 
     }
          
       
       
        html, body {
            width: 100%;
            height: 100%
        }

        html {
            overflow-y: scroll
        }

        body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, form, fieldset, p, button {
            margin: 0;
            padding: 0
        }

        body, h1, h2, h3, h4, input, button {
            font-family: NanumGothicWeb,verdana,dotum,Helvetica,sans-serif;
            font-size: 15px;
            color: #d2d2d7
        }

        body {
            background-color: #fff;
            *word-break: break-all;
            -ms-word-break: break-all
        }

        img, fieldset, iframe {
            border: 0 none
        }

        li {
            list-style: none
        }
        
         a:link { color: black; text-decoration: none;}
       a:visited { color: black; text-decoration: none;}
        a:hover { font-weight:bolder; color: black; text-decoration: none;}

        #wrap {
            width: 1000px;
            margin: 0 auto
        }

        header {
            width: 100%;
            margin-top: 20px;
            padding: 20px;
           background: white;
        }
 
        hgroup {
            overflow: hidden;
            padding-bottom: 20px
        }

            hgroup h1 {
                float: left;
                font-size: 18px;
                color: #fff
            }

            hgroup h2 {
                float: right;
                font-weight: normal;
                color: #fff;
                opacity: 0.8
            }

           .menubar{
            border:none;
            border:0px;
            margin:0px;
            padding:0px;
            font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
            font-size:14px;
            font-weight:bold;
            }
            
            .menubar ul{
            background: #f96332;
            height:50px;
            list-style:none;
            margin:0;
            padding:0;
            }
            
            .menubar li{
            float:left;
            padding:0px;
            }
            
            .menubar li a{
            background: #f96332;
            color:#FFFFFF;
            display:block;
            font-weight:normal;
            line-height:50px;
            margin:0px;
            padding:0px 25px;
            text-align:center;
            text-decoration:none;
            }
            
            .menubar li a:hover, .menubar ul li:hover a{
            background: rgb(71,71,71);
            color:#FFFFFF;
            text-decoration:none;
            }
            
            .menubar li ul{
            background: #FFFFFF;
            display:none; /* ??????????????? ??????????????? ???????????? ?????? */
            height:auto;
            padding:0px;
            margin:0px;
            border:0px;
            position:absolute;
            width:200px;
            z-index:200;
            /*top:1em;
            /*left:0;*/
            }
            
            .menubar li:hover ul{
            display:block; /* ????????? ?????? ????????? ???????????? ????????? ?????? */
            }
            
            .menubar li li {
            background: #f96332;
            display:block;
            float:left;
            margin:0px;
            padding:0px;
            width:200px;
            }
            
            .menubar li:hover li a{
            background:none;
            }
            
            .menubar li ul a{
            display:block;
            height:50px;
            font-size:12px;
            font-style:normal;
            margin:0px;
            padding:0px 10px 0px 15px;
            text-align:left;
            }
            
            .menubar li ul a:hover, .menubar li ul li:hover a{
            background: rgb(71,71,71);
            border:0px;
            color:#ffffff;
            text-decoration:none;
            }
            
            .menubar p{
            clear:left;
            }
            
        section {
            float: initial;
            width: 95%;
            margin-top: 15px;
            margin-bottom: 10px;
            padding: 3px;
            line-height: 20px
        }

    

        footer,h1 {
            clear: both;
            padding: 3px;
            margin-top: 3px;
            border: 1px solid #ccc
            font-family: NanumGothicWeb,verdana,dotum,Helvetica,sans-serif;
            font-size: 13px;
            color: black;
        }
        
        footer,h3 {
            clear: both;
            padding: 3px;
            margin-top: 3px;
            border: 1px solid #ccc
            font-family: NanumGothicWeb,verdana,dotum,Helvetica,sans-serif;
            font-size: 19px;
            color: white;
        }
        


        body {
            font-family: Verdana,sans-serif;
            margin: 0
        }

        .mySlides {
            display: none
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* On hover, add a black background color with a little bit see-through */
        .prev:hover, .next:hover {
            background-color: rgba(0,0,0,0.8);
        }

        /* Caption text */
        .dot {
            cursor: pointer;
            height: 15px;
            width: 15px;
            margin: 0 2px;
            margin-top: 5px;
            background-color: #FFFFFF;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #FFFFFF;
            }

        @media only screen and (max-width: 300px) {
            .prev, .next, .text {
                font-size: 11px
                //??????????????? ????????? ?????????
            }
        }
 
/* GENERAL BUTTON STYLING */
button,
button::after {
  -webkit-transition: all 0.3s;
    -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
    transition: all 0.3s;
}

button {
  width: 100px;
  float:right;
  background: none;
  border: 3px solid #f96332;
  margin: 20px;
  color: #f96332;
  display: block;
  font-size: 1.0em;
  font-weight: bold;
  position: relative;
  text-transform: uppercase;
}

button::before,
button::after {
  background: #f96332;
  content: '';
  position: absolute;
  z-index: -1;
}

button:hover {
  background: #f96332;
  color: #fff;
}

/* BUTTON 3 */
.btn-3::after {
  height: 0;
  left: 50%;
  top: 50%;
  width: 0;
}

.btn-3:hover:after {
  height: 100%;
  left: 0;
  top: 0;
  width: 100%;
}

</style>
</head>

<body>
<body class="index-page sidebar-collapse">
<form method = "post" action = "reserve.jsp">
<% 
	String session_id = (String)session.getAttribute("user");
	String session_name = (String)session.getAttribute("name");
%>

  <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-light " color-on-scroll="400">
    <div class="container">
      <div class="navbar-translate">
        <a class="navbar-brand" rel="tooltip" title="GO TO SJK AIR'S MAIN PAGE" data-placement="bottom" target="_blank">
           <h3>SJK AIR</h3>
        </a>
        <button class="navbar-toggler navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-bar top-bar"></span>
          <span class="navbar-toggler-bar middle-bar"></span>
          <span class="navbar-toggler-bar bottom-bar"></span>
        </button>
      </div>
      <div class="collapse navbar-collapse justify-content-end" id="navigation" data-nav-image="./assets/img/blurred-image-1.jpg">
        <ul class="navbar-nav"style ="float:left; ">
          <li class="nav-item">
            <a class="nav-link" href="home.jsp">
              <h5><i class="now-ui-icons gestures_tap-01"></i>
              <p>Reservation</p></h5>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Mypage.jsp">
              <h5><i class="now-ui-icons business_badge"></i>
              <p>Mypage</p></h5>
            </a>
          </li>
          <li class="nav-item">
             <a class="nav-link" href="board.jsp">
              <h5><i class="now-ui-icons ui-1_send"></i>
              <p>Q/A</p></h5>
            </a>
          </li>
          <li class="nav-item" style = "margin-top:10px; font-size:10px">
             <%
             	if(session_id == null){ 
             		%>
             		<a class = "nav_link" href="flight_login.jsp">
             		<%
             	} else {
             		%>
             		<a class = "nav_link" href = "logout.jsp">
             <%	}%>
             <h5><i class="now-ui-icons ui-1_lock-circle-open"></i><p>
             <%
             	if(session_id==null) {
             		%>
             		?????????
				<% }
				else { %>
					<%=session_name%>??? ???????????????!
				<%	}%>
			</p></h5>
            </a>
          </li>
			 <li class="nav-item">
             <a class="nav-link" href="join.jsp">
              <h5><i class="now-ui-icons emoticons_satisfied"></i>
              <p>????????????</p></h5>
            </a>
          </li>
            </div>
        </ul>
      </div>
    </div>
  </nav>

  <section > 
   <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style = "margin-top:-10px; margin-left:25%; margin-right:150px; width:1000px">
   
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-10" src="img/img1.jpg"  alt="First slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-10" src="img/img2.jpg"  alt="Second slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-10" src="img/img3.jpg"  alt="Third slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-10" src="img/img4.jpg"  alt="fourth slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-10" src="img/img5.jpg"  alt="fifth slide">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            
               
                <!-- ????????? ??????/??????/?????????/???????????? ?????? ????????? -->   
                
     </div>
             
   <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style = "margin-top:-10px; margin-left:25%; margin-right:150px; width:1000px">            
               <div class="menubar">
            <ul>
             <li><a href="javascript:typeRound();"  id = "round">??????</a></li>
             <li><a href="javascript:typeOneway();" id = "oneway">??????</a></li>
             <li><a href="javascript:typeMultiway();" id = "multiway">?????????</a></li>
             <li><a href="groupReservation.jsp">????????????</a></li>
             <input type="radio" name="radio">????????????
                 <input type="radio" checked name="radio">??????????????????
            </ul>
             </div>
   </div>         
      <div class="slideshow-container" style = " margin-left:25%;">
       <h1>???????????? ???????????????!
      <select class="selectpicker" style="width:300px;height:1px" multiple data-max-options="1" name = "departure" >
       <optgroup label="??????">
           <%for(int i = 0; i < 3; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 3; i < 10; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 10; i < 13; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 13; i < num; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
        </select>
   
      ???????????? ???????????????!
      <select class="selectpicker"  multiple data-max-options="1" name = "destination">
        <optgroup label="??????">
           <%for(int i = 0; i < 3; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 3; i < 10; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 10; i < 13; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 13; i < num; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
     </select></h1>
    
    <div id = "multiway-option">
           <h1>???????????? ???????????????!
      <select class="selectpicker" style="width:300px;height:1px" multiple data-max-options="1" name = "departure1" >
       <optgroup label="??????">
           <%for(int i = 0; i < 3; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 3; i < 10; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 10; i < 13; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 13; i < num; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
        </select>
   
      ???????????? ???????????????!
      <select class="selectpicker"  multiple data-max-options="1" name = "destination1">
        <optgroup label="??????">
           <%for(int i = 0; i < 3; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 3; i < 10; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 10; i < 13; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
       <optgroup label="?????????">
           <%for(int i = 13; i < num; i++){%>
        <option value = "<%=airport[i][1]%>"><%=airport[i][0]%></option>
        <%} %>
       </optgroup>
     </select></h1>
    </div>
    

      
         <div class="col-md-6">
           <div class="datepicker-container">
             <div class="form-group">
               <input type="text" class="form-control date-picker" value="??????????????? ???????????????!" data-datepicker-color="primary" name = "departure_date1">
             </div>
           </div>
         </div>
      
      
      <div id = "oneway-option">
         <div class="col-md-6">
           <div class="datepicker-container">
             <div class="form-group">
               <input type="text" class="form-control date-picker" value="??????????????? ???????????????!" data-datepicker-color="primary" name = "departure_date2">
             </div>
           </div>
         </div>
       </div>
       
   <div class="btn-group"> 
   <label value = "??????">??????
     <select class="selectpicker " name = "adultNum" data-style="select-with-transition btn-primary btn-round" data-size="9" >
       <option value="0">0???</option>
       <option value="1">1???</option>
       <option value="2">2???</option>
       <option value="3">3???</option>
       <option value="4">4???</option>
       <option value="5">5???</option>
       <option value="6">6???</option>
       <option value="7">7???</option>
       <option value="8">8???</option>
       <option value="9">9???</option>
   </select>
   </label>
   <label value = "??????">??????
   <select class="selectpicker "name = "kidNum" data-style="select-with-transition btn-primary btn-round"  data-size="9" >
       <option value="0">0???</option>
       <option value="1">1???</option>
       <option value="2">2???</option>
       <option value="3">3???</option>
       <option value="4">4???</option>
       <option value="5">5???</option>
       <option value="6">6???</option>
       <option value="7">7???</option>
       <option value="8">8???</option>
       <option value="9">9???</option>
    </select>
    </label>
    <label value = "??????">??????
    <select class="selectpicker "  name = "infantNum" data-style="select-with-transition btn-primary btn-round"data-size="9">
       <option value="0">0???</option>
       <option value="1">1???</option>
       <option value="2">2???</option>
       <option value="3">3???</option>
       <option value="4">4???</option>
       <option value="5">5???</option>
       <option value="6">6???</option>
       <option value="7">7???</option>
       <option value="8">8???</option>
       <option value="9">9???</option>
    </select>
   </label>
    </div>
       
   <button type = "submit" class="btn-3" style = "float:right;width: 200px">????????????</button>   
   
    </div>
   
    <script>
      var slideIndex = 0;
      showSlides();
      
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
      
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
      
      function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if(slideIndex > slides.length){
           slideIndex = 1
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 2000); 
      }
    </script>
          
    
    <script>
    $(document).ready(function() {
      // the body of this function is in assets/js/now-ui-kit.js
      nowuiKit.initSliders();
      
    });

    function scrollToDownload() {

      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }
  </script>
  
 
 </section> 
<input type = "hidden" id = "type" name = "type" value = "round">
</form>
  <div class="container" style = "margin-bottom:300px">
      <button class="btn btn-primary" data-toggle="modal" data-target="#myModal" style ="float:right; width:200px" >
        ??????, ?????? ?????? ??????
       </button>
       
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header justify-content-center">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
              <i class="now-ui-icons ui-1_simple-remove"></i>
            </button>
            <h1 class="title title-up">??????,?????? ?????? ??????</h1>
          </div>
          <div class="modal-body">
            <h1>??????</h1>
           <h1>[?????????] ???2???~???13??? ??????(?????? ????????? ??????)</h1>
           <h1>[?????????] ???2???~???12??? ??????(?????? ????????? ??????)</h1>
           
           <h1>??????</h1>
           <h1>[?????????] ?????? 7??? ??????~???2??? ??????(????????? ??????)</h1>
           <h1>[?????????] ?????? 14??? ??????~???2??? ??????(?????? ????????? ??????)</h1>
           <h1>*?????? ?????? ??? ???????????? ?????? ????????? ?????? ?????? ??????</h1>
            </h1>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">?????????????????????.</button>
          </div>
        </div>
      </div>
    </div>
      </div>
</body>
<script>

function typeRound(){
   $("#round").css("background","red");
   $("#oneway").css("background","#F96332");
   $("#multiway").css("background","#F96332");
   
   $("#multiway-option").hide();
   $("#oneway-option").show();
   
   $("#type").val("round");
   
}

function typeOneway(){
   $("#round").css("background","#F96332");
   $("#oneway").css("background","red");
   $("#multiway").css("background","#F96332");
   
   $("#multiway-option").hide();
   $("#oneway-option").hide();
   
   $("#type").val("oneway");
}

function typeMultiway(){
   $("#round").css("background","#F96332");
   $("#oneway").css("background","#F96332");
   $("#multiway").css("background","red");
   
   $("#multiway-option").show();
   $("#oneway-option").show();
   $("#type").val("multiway");
}

$(document).ready(function(){
   typeRound();
});
</script>
        
</html>