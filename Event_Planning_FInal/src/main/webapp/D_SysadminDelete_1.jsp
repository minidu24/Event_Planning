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
  margin: 40px auto;
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
  background: #A0A0A0;
}

.button-block {
  display: block;
  width: 80%;
  margin-top:50px;
}
.button-block1 {
  display: block;
  width: 80%;
  margin-top:70px;
}
.button-block2 {
  display: block;
  width: 80%;
  margin-top:70px;
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
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  border-style: groove;
  border-color: #FFFFFF;
  padding:0px;
  background-color: #1C1C1C;
}
.th1{
	width:4%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th2{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th3{
	width:9%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th4{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th5{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th6{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th7{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th8{
	width:34%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th9{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th10{
	width:10%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
.th11{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
}
td{
	width:4%;
	border: 1px solid #dddddd;
	text-align: left;
	padding: 5px;
}
.update{
  cursor: pointer;
  font-size: 14px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #00CC00;
  color: #ffffff;
  border-radius: 0;
  transition: border-color .25s ease, box-shadow .25s ease;
}
.delete{
  cursor: pointer;
  font-size: 14px;
  display: block;
  width: 100%;
  height: 100%;
  padding: 5px 10px;
  background: none;
  background-image: none;
  border: 1px solid #FF0000;
  color: #ffffff;
  border-radius: 0;
  transition: border-color .25s ease, box-shadow .25s ease;
}
.topic{
	font-size: 36px;
	font-style:bold;
	color: #00CCCC;
}
.pointer {cursor: pointer;}
/*td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}*/
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
			        <li><a href="Admin_login_2.jsp">HOME</a></li>
			        <li><a class="active" href="Admin_login_1.jsp">ADMIN</a></li>
			        <li><a href="index.jsp">LOGOUT</a></li>
			        
			      </ul>
			    </div>
			    <div id="sub-navigation4"></div>
					<p class="txt">ADMIN PANEL</p>
				<div id="sub-navigation4"></div>
			  </div>
			  <div class="form">
			  		<h1 class="topic">Uploaded Details</h1>
			  		<table class="table table-bordered" border=2px>
                        <thead>
                            <tr>
                               <th class="th1">ID</th>
							   <th class="th2">Event Name</th>
							   <th class="th3">Event Date</th>
							   <th class="th4">Event Code</th>
							   <th class="th5">Event Category</th>
							   <th class="th6">Event Theme</th>
							   <th class="th7">Venue</th>
							   <th class="th8">Description</th>
							   <th class="th9">Organizor's Name</th>
							   <th class="th10">Organize Date</th>
							   <th class="th11">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="up" items = "${upDetails}">
								  <c:set var="id" value="${up.id}" />
								  <c:set var="ename" value="${up.ename}" />
								  <c:set var="edate" value="${up.edate}" />
								  <c:set var="ecode" value="${up.ecode}" />
								  <c:set var="ecgory" value="${up.ecgory}" />
								  <c:set var="etheme" value="${up.etheme}" />
								  <c:set var="evenue" value="${up.evenue}" />
								  <c:set var="edescript" value="${up.edescript}" />
								  <c:set var="eorgname" value="${up.eorgname}" />
								  <c:set var="eorgdt" value="${up.eorgdt}" />
                                <tr>
                                    <td>
                                        ${up.id}
                                    </td>
                                    <td>
                                        ${up.ename}
                                    </td>
                                    <td>
                                        ${up.edate}
                                    </td>
                                    <td>
                                        ${up.ecode}
                                    </td>
                                    <td>
                                        ${up.ecgory}
                                    </td>
                                    <td>
                                        ${up.etheme}
                                    </td>
                                    <td>
                                        ${up.evenue}
                                    </td>
                                    <td>
                                        ${up.edescript}
                                    </td>
                                    <td>
                                        ${up.eorgname}
                                    </td>
                                    <td>
                                        ${up.eorgdt}
                                    </td>
                                    <td>
                                    	<c:url value="updateFinal.jsp" var="upupdate">
										     <c:param name="id1" value="${id}"/>
										     <c:param name="ename1" value="${ename}"/>
										     <c:param name="edate1" value="${edate}"/>
										     <c:param name="ecode1" value="${ecode}"/>
										     <c:param name="ecgory1" value="${ecgory}"/>
										     <c:param name="etheme1" value="${etheme}"/>
										     <c:param name="evenue1" value="${evenue}"/>
										     <c:param name="edescript1" value="${edescript}"/>
										     <c:param name="eorgname1" value="${eorgname}"/>
										     <c:param name="eorgdt1" value="${eorgdt}"/>
										</c:url>

											<a href="${upupdate}"><input class="update" type="button" name="upld" value="UPDATE" ></a>&nbsp;&nbsp;&nbsp;&nbsp;
											  
										<c:url value="DeleteUpDetails.jsp" var="updelete">
										     <c:param name="id1" value="${id}"/>
										     <c:param name="ename1" value="${ename}"/>
										     <c:param name="edate1" value="${edate}"/>
										     <c:param name="ecode1" value="${ecode}"/>
										     <c:param name="ecgory1" value="${ecgory}"/>
										     <c:param name="etheme1" value="${etheme}"/>
										     <c:param name="evenue1" value="${evenue}"/>
										     <c:param name="edescript1" value="${edescript}"/>
										     <c:param name="eorgname1" value="${eorgname}"/>
										     <c:param name="eorgdt1" value="${eorgdt}"/>
    
										</c:url>

											<a href="${updelete}"><input class="delete" type="button" name="delete" value="DELETE" >  </a>
                                    </td>
                                </tr>
                            <!-- } -->
                          	</c:forEach> 
                 		</tbody>
					</table>
					<a href="Admin_login_1.jsp">
						<center><button class="button button-block"/>EXIT</button></center>
					</a>
			  </div> <!-- /form -->
    		  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>

  			  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
      		 
			    <div class="cl">&nbsp;</div>
	  
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