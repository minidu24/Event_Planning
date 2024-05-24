<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="userRegister.Deo.*"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/> 
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />


<title>Movie Hunter</title>
<link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
  
<style>
*, *:before, *:after {
  box-sizing: border-box;
}

html {
  overflow-y: scroll;
}

body {
  background:url('css/images/body-bg.gif');
  font-family: 'Titillium Web', sans-serif;
}

a {
  text-decoration: none;
  color: #1ab188;
  transition: .5s ease;
}
a:hover {
  color: #179b77;
}

.form {
  /*background:url('css/images/chess.jpg');*/
  background-image: url('css/images/finance.jpg');
  padding: 40px;
  max-width: 980px;
  height:auto;
  margin: 80px auto;
  /*margin-top:15px;
  margin-bottom:100px;
  margin-left:180px;*/
  border-radius: 4px;
  box-shadow: 0px 4px 8px 4px rgba(255, 255, 255, 0.2);
}

.tab-group {
  list-style: none;
  padding: 0;
  margin: 0 0 40px 0;
}
.tab-group:after {
  content: "";
  display: table;
  clear: both;
}
.tab-group li a {
  display: block;
  text-decoration: none;
  padding: 15px;
  background: rgba(160, 179, 176, 0.25);
  color: #a0b3b0;
  font-size: 30px;
  float: left;
  width: 100%;
  text-align: center;
  cursor: pointer;
  transition: .5s ease;
}
.tab-group li a:hover {
  background: #3333ff;
  color: #ffffff;
}
.tab-group .active a {
  background: #0000ff;
  color: #ffffff;
}

.tab-content > div:last-child {
  display: none;
}

h1 {
  text-align: center;
  color: #ffffff;
  font-weight: 300;
  margin: 0 0 40px;
}

label {
  position: absolute;
  transform: translateY(6px);
  left: 13px;
  color: rgba(255, 255, 255, 0.7);
  transition: all 0.25s ease;
  -webkit-backface-visibility: hidden;
  pointer-events: none;
  font-size: 22px;
}
label .req {
  margin: 2px;
  color: #1ab188;
}

label.active {
  transform: translateY(50px);
  left: 2px;
  font-size: 14px;
}
label.active .req {
  opacity: 0;
}

label.highlight {
  color: #ffffff;
}

input, textarea {
  font-size: 22px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #202020;
  color: #ffffff;
  border-radius: 0;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus, textarea:focus {
  outline: 0;
  border-color: #ffffff;
}

textarea {
  border: 2px solid #a0b3b0;
  resize: vertical;
}

.field-wrap {
  position: relative;
  margin-bottom: 40px;
}

.top-row:after {
  content: "";
  display: table;
  clear: both;
}
.top-row > div {
  float: left;
  width: 48%;
  margin-right: 4%;
}
.top-row > div:last-child {
  margin: 0;
}

.button {
  border: 0;
  outline: none;
  border-radius: 0;
  padding: 15px 0;
  font-size: 2rem;
  font-weight: 600;
  text-transform: uppercase;
  letter-spacing: .1em;
  background: #1ab188;
  color: #ffffff;
  transition: all 0.5s ease;
  -webkit-appearance: none;
  border-radius: 13px;
  cursor: pointer;
}
.button:hover, .button:focus {
  background: #FF6666;
}

.button-block {
  display: block;
  width: 80%;
  margin-top:68px;
}
.button-block1 {
  display: block;
  width: 80%;
  margin-top:70px;
}
.button-block2 {
  display: block;
  width: 80%;
  margin-top:40px;
}

.forgot {
  margin-top: -20px;
  text-align: right;
}
#sub-navigation4{
	margin-bottom:0px;
	display:block;
	clear:right;
	border-top:1px dashed #666;
	border-bottom:1px dashed #666;
	padding:8px 0;
}
.txt{
	font-weight: bold;
	font-size: 2rem;
	text-align:center;
}
</style>

<script>
  window.console = window.console || function(t) {};
</script>

  
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no">
	<div id="shell">
			  <div id="header1">
			    <h1 id='logo'><a href="index.jsp">Arena</a></h1>
			    <div class="social1"> <span>FOLLOW US ON:</span>
			      <ul>
			        <li><a class="twitter" href="#">twitter</a></li>
			        <li><a class="facebook" href="#">facebook</a></li>
			        <li><a class="vimeo" href="#">vimeo</a></li>
			        <li><a class="rss" href="#">rss</a></li>
			      </ul>
			    </div>
			    <div id="navigation">
			      <ul>
			        <li><a href="Admin.jsp">HOME</a></li>
			        <li><a class="active" href="Selection2.jsp">ADMIN</a></li>
			        <li><a href="index.jsp">LOGOUT</a></li>
			        
			      </ul>
			    </div>
			    <div id="sub-navigation4"></div>
					<p class="txt">ADMIN PANEL</p>
				<div id="sub-navigation4"></div>
			  </div>
			  <div class="form">
			  	<a href="MovieInsert.jsp">
			  		<center><button class="button button-block"/>ADD EMPLOYEES</button></center>
			  	</a>
			
			  	<a href="MovieLog.jsp">
			  		<center><button class="button button-block2"/>VIEW EMPLOYEES</button></center>
			  	</a>
			  	
			  	<a href="Admin_login_1.jsp">
			  		<center><button class="button button-block2"/>BACK</button></center>
			  	</a>
			  </div> <!-- /form -->
			  
    		  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>

  			  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
      		 
			    <div class="cl">&nbsp;&nbsp;&nbsp;&nbsp;</div>
	  
			  	<div id="sub-navigation">
					<div id="footer">
				    <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
				    <p class="rf">Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a></p>
				    <div style="clear:both;"></div>
				  	</div>
			  	</div>
	
	</div>

</body>

</html>