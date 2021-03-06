<%@page import="flight.FlightDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "flight.Flight" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <link rel="apple-touch-icon" sizes="76x76" href="./img/apple-icon.png">
  <link rel="icon" type="image/png" href="./img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    SJK Air
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  
  <link href="./css/bootstrap.min.css" rel="stylesheet" />
  <link href="./css/now-ui-kit.css?v=1.2.0" rel="stylesheet" />
  
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
  
  #reserveStatus{
    float: left;
    left:50%;
    width: 100%;
  	list-style:none;
  	margin:20px;
  	padding:0;
  	both:clear;
  }
  
  #status{
 	width: 18%;
  	margin-right:30px;
	padding-top: 15px;
	padding-left: 10px;
  	border: 0;
  	float: left;
  }
  
  #content{
  	margin-left: 50px;
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

input {
	margin: 10px;
}

  </style>
</head>
<body class="index-page sidebar-collapse">
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
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link"href="home.jsp">
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
             <a class="nav-link" href="javascript:void(0)">
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
            </div>
        </ul>
      </div>
    </div>
  </nav>

  <div class="wrapper">
		<div class = "main">
			<div class = "section section-images">
				<div class = "container">
				<h1 style = "margin-top:60px">????????? ??????</h1>
				<ul id = "reserveStatus">
					<li id = "status">STEP1. <br><h4>????????????<h4></h4></li>
					<li id = "status" style = "background-color:#F96332;"><p style="color:white; font-size:25px;">STEP2. <br>????????? ????????????</p></li>
					<li id = "status">STEP3. <h4>??????????????? ??????</h4></li>
					<li id = "status">STEP4. <h4>????????? ??????</h4></li>					
				</ul>
				
<%
try{
String type = request.getParameter("type");
int adultNum  = Integer.parseInt(request.getParameter("adultNum"));
int kidNum  = Integer.parseInt(request.getParameter("kidNum"));
int infantNum  = Integer.parseInt(request.getParameter("infantNum"));
int totalNum = adultNum + kidNum + infantNum;
FlightDAO flightDAO = new FlightDAO();
String []contact = flightDAO.getContact(session_id);
		String firstName = null;
		String lastName = null;
		String departureCode = request.getParameter("departureCode");
		String arrivalCode = request.getParameter("arrivalCode");
		%>
		<form method = "post" action = "service.jsp">
		<div id = "content">
		<img src="./img/jeju_orange.PNG">   
        <h2 class="font-color">????????? ?????????</h2> 
        <p>
		????????? : <%=contact[0] %> <input type = hidden name ="phone" value = "<%=contact[0] %>" onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'> <br>
		????????? : <%=contact[1] %><input type = "hidden" name = "email" value = "<%=contact[1]%>">
		</p>
		<img src="./img/jeju_orange.PNG">   
        <h2 class="font-color">????????? ??????</h2> 
		<%
		for(int i=0;i<adultNum;i++){
			firstName = "firstName" + i;
		%>
		<h4>>??????<%=i+1 %></h4>
		?????? ?????? : <input type = text name ="<%=firstName%>" placeholder="??????(First Name)"> <input type = "text" name = "lastName<%=i+1 %>" placeholder="???(Last Name)"> 
		<select name = "gender"><option value = "male">???</option><option value = "female">???</option></select> <br/>
		?????? ID : &nbsp;&nbsp; <input type = text name ="userID<%=i%>">
		<br>
			<%
		} %>
		
		<%
		for(int i=adultNum;i< adultNum + kidNum;i++){
			firstName = "firstName" + i;
		%>
		<h4>>?????????<%=i-adultNum+1 %></h4>
		?????? ?????? : <input type = text name ="<%=firstName%>" placeholder="??????(First Name)"> <input type = "text" name = "lastName<%=i+1 %>" placeholder="???(Last Name)"> 
		<select name = "gender"><option value = "male">???</option><option value = "female">???</option></select> <br/>
		?????? ID : &nbsp;&nbsp; <input type = text name ="userID<%=i%>">
		<br>
			<%
		} %>
		
		<%for(int i=adultNum+kidNum;i<adultNum+kidNum+infantNum;i++){
			firstName = "firstName" + i;
		%>
		<h4>>??????<%=i-adultNum-kidNum+1 %></h4>
		?????? ?????? : <input type = text name ="<%=firstName%>" placeholder="??????(First Name)"> <input type = "text" name = "lastName<%=i+1 %>" placeholder="???(Last Name)"> 
		<select name = "gender"><option value = "male">???</option><option value = "female">???</option></select> <br/>
		?????? ID : &nbsp;&nbsp; <input type = text name ="userID<%=i%>">
		<br>
			<%
		} %>
		
		
		<input type = "hidden" name = "departureCode" value =<%=departureCode %>>
		<input type ="hidden" name = "arrivalCode" value = <%=arrivalCode %>>
		<input type ="hidden" name = "totalNum" value =<%=totalNum %>>
		<input type ="hidden" name = "adultNum" value =<%=adultNum %>>
		<input type ="hidden" name = "kidNum" value =<%=kidNum %>>
		<input type ="hidden" name = "infantNum" value =<%=infantNum %>>
		<input type ="hidden" name ="type" value =<%=type %>>
		<button type = "submit" class="btn-3"style = "width:300px"><h4 style="margin-top:13px"><b>????????? ?????? ????????????</b></h4></button>
		</div>
		</form>
		<%
}catch(Exception e){
	%>
	<script>
	   alert('?????? ????????? ??????????????????')
	   history.back()
	</script>
	<%
}
%>
				
				
				</div>
			</div>
		</div>
</div>

</body>
</html>


<script>
function onlyNumber(event){
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        return false;
}
 
function removeChar(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

</script>