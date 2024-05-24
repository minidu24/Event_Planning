<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>MovieHunter</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  color: black;
  width: 100%;
  border-style: groove;
  border-color: #202020;
  padding:2px;
  background-color: #E0E0E0;
  margin-top:20px;
  margin-bottom:100px;
}
tr{
  height:40px;
  border: 3px solid #404040;
}
.th2{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.th3{
	width:9%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.th4{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.th5{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.th6{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.th7{
	width:8%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
.th8{
	width:34%;
	font-size:12px;
	font-style:bold;
	text-align: center;
	padding:1px;
	border: 3px solid #404040;
}
td{
	width:4%;
	border: 3px solid #404040;
	text-align: center;
	padding: 5px;
	color: black;
}
#sub-navigation4{
	margin-bottom:0px;
	display:block;
	clear:right;
	/*border-top:1px dashed #666;*/
	border-bottom:1px dashed #666;
	padding:8px 0;
}
.topic{
	font-size: 30px;
	font-style:bold;
	color: #660000;
	text-align: center;
}
</style>

<script>
	function clearContents(element) {
	  element.value = '';
	}
</script>

</head>
<body>
<!-- START PAGE SOURCE -->
<div id="shell">
  <div id="header">
    <h1 id='logo'><a href="index.jsp">Arena</a></h1>
    <div class="social"> <span>FOLLOW US ON:</span>
      <ul>
        <li><a class="twitter" href="#">twitter</a></li>
        <li><a class="facebook" href="#">facebook</a></li>
        <li><a class="vimeo" href="#">vimeo</a></li>
        <li><a class="rss" href="#">rss</a></li>
      </ul>
    </div>
    <div id="navigation">
      <ul>
        <li><a class="active" href="index.jsp">HOME</a></li>
        <li><a href="#">NEWS</a></li>
        <li><a href="#">COMMENTS</a></li>
        <li><a href="#">CONTACT</a></li>
      </ul>
    </div>
    <div id="sub-navigation">
      <ul>
        <li><a href="#">SHOW ALL</a></li>
        <li><a href="#">TOP RATED</a></li>
        <li><a href="#">MOST COMMENTED</a></li>
      </ul>
      <div id="search">
        <form action="Search_Servlet" method="post" accept-charset="utf-8">
          <label for="search-field">SEARCH</label>
          <input type="text" name="search" value="Enter search here" onfocus="clearContents(this);" id="search-field" class="blink search-field"/>
          <input type="submit" value="GO!" class="search-button"/>
        </form>
      </div>
    </div>
  </div>
  <div id="main">
  		<h1 class="topic">Searching Result</h1>
		<table class="table table-bordered" border=2px>
                        <thead>
                            <tr>                           
							   <th class="th2">Event Name</th>
							   <th class="th3">Event Date</th>
							   <th class="th4">Event Code</th>
							   <th class="th5">Event Category</th>
							   <th class="th6">Event Theme</th>
							   <th class="th7">Venue</th>
							   <th class="th8">Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--   for (Todo todo: todos) {  -->
                            <c:forEach var="Srch" items = "${S_Details}">

                                <tr>
                                    <td>
                                        ${Srch.ename}
                                    </td>
                                    <td>
                                        ${Srch.edate}
                                    </td>
                                    <td>
                                        ${Srch.ecode}
                                    </td>
                                    <td>
                                        ${Srch.ecgory}
                                    </td>
                                    <td>
                                        ${Srch.etheme}
                                    </td>
                                    <td>
                                        ${Srch.evenue}
                                    </td>
                                    <td>
                                        ${Srch.edescript}
                                    </td>
                                </tr>
                            <!-- } -->
                          	</c:forEach> 
                 		</tbody>
					</table>
				<div id="sub-navigation4"></div>
		<div class="cl">&nbsp;</div>
    
    <div class="cl">&nbsp;</div>
  </div>
  <div id="footer">
    <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
    <p class="rf">Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</body>
</html>