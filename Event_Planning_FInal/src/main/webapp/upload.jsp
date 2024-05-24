<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta charset="UTF-8">

<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />

<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/> 
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>

<title>Movie Hunter</title>
<script src="https://kit.fontawesome.com/e2ac9cc532.js" crossorigin="anonymous"></script>
  
  
  
<style>
@import url("https://fonts.googleapis.com/css?family=Montserrat:400,600&display=swap");
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  align-items: center;
  background:url('css/images/body-bg.gif');
  /*background: #E0E0E0;*/
  color: rgba(0, 0, 0, 0.8);
  display: grid;
  font-family: "Montserrat", sans-serif;
  font-size: 14px;
  font-weight: 400;
  height: 100vh;
  justify-items: center;
  weight: 100vw;
}

.signup-container {
  margin-top: 16px;
  margin-left: 10px;
  display: grid;
  grid-template-areas: "left right";
  max-width: 900px;
}

.left-container {
  background: white;
  overflow: hidden;
  padding: 40px 0 0 0;
  position: relative;
  width: 370px;
  margin-left: 50px;
  border-style: ridge;
}
.left-container h1 {
  color: rgba(0, 0, 0, 0.8);
  display: inline-block;
  font-size: 24px;
}
.left-container h1 i {
  background: #F7B1AB;
  border-radius: 50%;
  color: #807182;
  font-size: 24px;
  margin-right: 5px;
  padding: 10px;
  transform: rotate(-45deg);
}
.left-container img {
  height: 470px;
  width: 370px;
  margin-top: 35px;
  margin-right: 100px;
}
/*new start*/
.left-container a button {
  border: 1px solid rgba(0, 0, 0, 0.2);
  height: 38px;
  line-height: 38px;
  width: 100px;
  border-radius: 19px;
  font-family: "Montserrat", sans-serif;
  margin-left:140px;
  margin-top:45px;
}
.left-container a #back {
  background: #fff;
  transition: 0.2s all ease-in-out;
}
.left-container a #back:hover {
  background: #171A2B;
  color: white;
}
/*new end*/
.right-container {
  background: #CC0000;
  display: grid;
  grid-template-areas: "." ".";
  width: 500px;
}
.right-container h1:nth-of-type(1) {
  color: rgba(0, 0, 0, 0.8);
  font-size: 30px;
  font-weight: 600;
}
.right-container .set {
  display: flex;
  justify-content: space-between;
  margin: 10px 0;
}

.right-container .get {
  display: flex;
  justify-content: space-between;
  margin: 10px 0;
}

.right-container input {
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 4px;
  height: 38px;
  line-height: 38px;
  padding-left: 5px;
}
.right-container input, .right-container label {
  color: rgba(0, 0, 0, 0.8);
}
.right-container header {
  padding: 40px;
}
.right-container label, .right-container input, .right-container .pets-photo {
  width: 176px;
}
.right-container .pets-photo {
  align-items: center;
  display: grid;
  grid-template-areas: ". .";
}
.right-container .pets-photo button {
  border: none;
  border-radius: 50%;
  height: 38px;
  margin-right: 10px;
  outline: none;
  width: 38px;
}
.right-container .pets-photo button i {
  color: rgba(0, 0, 0, 0.8);
  font-size: 16px;
}
.right-container .pets-weight .radio-container {
  display: flex;
  justify-content: space-between;
  width: 100%;
}
.right-container footer {
  align-items: center;
  background: #fff;
  display: grid;
  padding: 5px 40px;
}
.right-container footer button {
  border: 1px solid rgba(0, 0, 0, 0.2);
  height: 38px;
  line-height: 38px;
  font-size:16px;
  width: 418px;
  border-radius: 19px;
  font-family: "Montserrat", sans-serif;
}
.right-container footer #next {
  background: #807182;
  border: 1px solid transparent;
  color: #fff;
}
.right-container footer #next:hover {
  background: #171A2B;
}
.right-container textarea{
  width: 420px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 1px;
  margin-bottom: -5px;
}

.pets-name label, .pets-breed label, .pets-birthday label, .pets-gender label, .pets-spayed-neutered label, .pets-weight label {
  display: block;
  margin-bottom: 5px;
}

.radio-container {
  background: #fff;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 4px;
  display: inline-block;
  padding: 5px;
}

.radio-container label {
  background: transparent;
  border: 1px solid transparent;
  border-radius: 2px;
  display: inline-block;
  height: 26px;
  line-height: 26px;
  margin: 0;
  padding: 0;
  text-align: center;
  transition: 0.2s all ease-in-out;
  width: 80px;
}

.radio-container input[type=radio] {
  display: none;
}

.radio-container input[type=radio]:checked + label {
  background: #F7B1AB;
  border: 1px solid rgba(0, 0, 0, 0.1);
}

.td1{
	width:3%;
	font-size:20px;
	font-style:bold;
	text-align: center;
	padding:1px;
}

.td2{
    width:1%;
	font-size:20px;
	font-style:bold;
	padding:1px;
}

.td3{
    width:1%;
	font-size:20px;
	font-style:bold;
	text-align: center;
	padding:1px;
}

.td4{
	width:2%;
	font-size:20px;
	font-style:bold;
	padding:1px;
}

.tab1{
  margin-top: -2px;
  margin-bottom: -8px;
  margin-right: 36px;
  margin-left: 460px;
  /*border-style: groove;*/
  /*border-color: #FFFFFF;*/
  padding:-1px;
  /*background-color: #FFFFFF;*/
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

<script>
	function clearContents(element) {
	  element.value = '';
	}
</script>

<script>
	function myFunction() {
	  alert("!Details Uploaded Successfully!");
	}
</script>

</head>

<body translate="no">
	<%
		String id = request.getParameter("id");
		String username = request.getParameter("username");
	%>
	<div id="shell">
		<div id="header1">
			    <h1 id='logo'><a href="index.jsp">Arena</a></h1>
			    <div class="social2">
			    &nbsp;
			    &nbsp;
			    &nbsp;
			    &nbsp;
			    </div>
			    <div id="navigation">
			      <ul>
			        <li><a href="index.jsp">HOME</a></li>
			        <li><a href="#">NEWS</a></li>
			        <li><a href="#">COMMENTS</a></li>
			        <li><a href="#">CONTACT</a></li>
			        <li><a class="active" href="${Up_update}">UPLOAD</a></li>
			        <li><a href="Dashboard.jsp">PROFILE</a></li>
			        <li><a href="index.jsp">LOGOUT</a></li>
			        
			      </ul>
			    </div>
			    <div id="sub-navigation1"> 
			    </div>
			  </div>
			<c:url value="After_Upload.jsp" var="upload">
				<c:param name="id" value="<%=id%>"/>
				<c:param name="username" value="<%=username%>"/>
			</c:url>
		
		  <div class='signup-container'>
			  <div class='left-container'>
			    <img src='css/images/e71.jpg'>
			    <div class='get'>
			        <a href="${upload}">
			        	<button id='back'>EXIT</button>
			    	</a>
			    </div>      
			  </div>
			  
			 
			  <div class='right-container'>
			   <form action="UploadDbServlet" method="post"> 
			    <header>
			      <h1>Add Your Events Here</h1>
			      <div class='set'>
			        <div class='pets-name'>
			          <label for='pets-name'><b>Uploader's ID:</b></label>
			          <input id='pets-name' type='text' name="Id" value="<%=id%>" readonly>
			        </div>
			        <div class='pets-name'>
			          <label for='pets-upload'><b>Uploader's Username:</b></label>
			          <input id='pets-name' type="text" name="Username" value="<%=username%>" readonly>
			        </div>
			      </div>
			      <div class='set'>
			        <div class='pets-name'>
			          <label for='pets-name'><b>Event Name:</b></label>
			          <input id='pets-name' placeholder="wiramaya" type='text' name="ename" required autocomplete="off">
			        </div>
			        <div class='pets-name'>
			          <label for='pets-upload'><b>Event Date:</b></label>
			          <input id='pets-name' placeholder='MM/DD/YYYY' type="date" name="edate" value="0000-00-00"
					       min="2018-01-01" max="2025-12-31" required autocomplete="off">
			        </div>
			      </div>
			      <div class='set'>
			        <div class='pets-breed'>
			          <label for='pets-breed'><b>Event Code:</b></label>
			          <input id='pets-breed' placeholder="00000" type="text" name="ecode" required autocomplete="off">
			        </div>
			        <div class='pets-gender'>
			          <label for='pet-gender-female'><b>Event Category:</b></label>
			          <div class='radio-container'>
			            <input checked='' id='pet-gender-female' type='radio' value='singing' name="ecgory" required autocomplete="off">
			            <label for='pet-gender-female'>Singing</label>
			            <input id='pet-gender-male' type='radio' value='dancing' name="ecgory" required autocomplete="off">
			            <label for='pet-gender-male'>Dancing</label>
			          </div>
			        </div>
			      </div>
			      <div class='set'>
			        <div class='pets-spayed-neutered'>
			          <label for='pet-spayed'><b>Event Theme:</b></label>
			          <div class='radio-container'>
			            <input checked='' id='pet-spayed' type='radio' value='Foreign' name="etheme" required autocomplete="off">
			            <label for='pet-spayed'>Foreign</label>
			            <input id='pet-neutered' type='radio' value='Local' name="etheme" required autocomplete="off">
			            <label for='pet-neutered'>Local</label>
			          </div>
			        </div>
			        <div class='pets-name'>
			          <label for='pets-name'><b>Venue:</b></label>
			          <input id='pets-name' placeholder="colombo" type='text' name="evenue" required autocomplete="off">
			        </div>
			      </div>
			      <div class='set'>
				      <div class='pets-name'>
				        <label for='pets-name'><b>Description:</b></label>
				        <textarea id='pets-name' onfocus="clearContents(this);" placeholder="" type='text' name="edescript" rows="3" cols="50" required autocomplete="off"></textarea>
				      </div>
				  </div>
			      <div class='set'>
			        <div class='pets-name'>
			          <label for='pets-name'><b>Organizor's Name:</b></label>
			          <input id='pets-name' placeholder="perera" type='text' name="eorgname" required autocomplete="off">
			        </div>
			        <div class='pets-name'>
			          <label for='pets-upload'><b>Organize Date:</b></label>
			          <input id='pets-name' placeholder='MM/DD/YYYY' type="date" name="eorgdt" value="0000-00-00"
					       min="2018-01-01" max="2025-12-31" required autocomplete="off">
			        </div>
			      </div>
			    </header>
			    
			    <footer>
			      <div class='get'>
			        <button id='next' onclick="myFunction()">UPLOAD EVENT</button>
			      </div>
			    </footer>
			   </form> 
			   
			  </div>
			 
			</div>
			
			<div id="sub-navigation3">
				<div id="footer">
			    <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
			    <p class="rf">Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a></p>
			    <div style="clear:both;"></div>
			  	</div>
	  		</div>
		</div>
</body>

</html>