<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>EventPlanner</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
  <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
  <script type="text/javascript" src="js/jquery-func.js"></script>
  <!--[if IE 6]><link rel="stylesheet" href="css/ie6.css" type="text/css" media="all" /><![endif]-->

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
    <h1 id='logo'>
      <img src="../webapp/css/images/logo.png" alt="Logo" />
      <a href="index.jsp">EventPlanner</a>
    </h1>
    <div class="social"> <span>FOLLOW US ON:</span>
      <ul>
        <li><a class="twitter" href="#">twitter</a></li>
        <li><a class "facebook" href="#">facebook</a></li>
        <li><a class="vimeo" href="#">vimeo</a></li>
        <li><a class="rss" href="#">rss</a></li>
      </ul>
    </div>
    <div id="navigation">
      <ul>
        <li><a class="active" href="index.jsp">HOME</a></li>
        <li><a href="#">CHARITY EVENTS</a></li>
        <li><a href="#">CORPORATE EVENTS</a></li>
        <li><a href="#">LIVE EVENTS</a></li>
        <li><a href="#">PRIVATE EVENTS</a></li>
        <li><a href="Admin_login_2.jsp">ADMIN</a></li>
        <li><a href="Uploader_register.jsp">REGISTRATION/SIGNIN</a></li>
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
    <div id="content">
      <div class="box">
        <div class="head">
          <h2>CHARITY EVENTS</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <!-- Charity Event Placeholder Images -->
        <div class="event">
          <div class="event-image"> <span class="play"><span class="name">Charity Event 1</span></span> <a href="#"><img src="css/images/Charity Events/Charity Auctions.jpg" alt="Charity Event 1" /></a> </div>
          <div class="details">
            <p>DETAILS</p>
            <!-- Add charity event details here -->
            <span class="comments">12</span>
          </div>
        </div>
        <!-- Add more charity event placeholders as needed -->
        <div class="cl">&nbsp;</div>
      </div>
      
      <div class="box">
        <div class="head">
          <h2>CORPORATE EVENTS</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <!-- Corporate Event Placeholder Images -->
        <div class="event">
          <div class="event-image"> <span class="play"><span class="name">Corporate Event 1</span></span> <a href="#"><img src="css/images/Corporate Events/Business Dinners.jpg" alt="Corporate Event 1" /></a> </div>
          <div class="details">
            <p>DETAILS</p>
            <!-- Add corporate event details here -->
            <span class="comments">12</span>
          </div>
        </div>
        <!-- Add more corporate event placeholders as needed -->
        <div class="cl">&nbsp;</div>
      </div>
      
      <div class="box">
        <div class="head">
          <h2>LIVE EVENTS</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <!-- Live Event Placeholder Images -->
        <div class="event">
          <div class="event-image"> <span class="play"><span class="name">Live Event 1</span></span> <a href="#"><img src="css/images/Live Events/Music-Arts-Dance Concerts.jpg" alt="Live Event 1" /></a> </div>
          <div class="details">
            <p>DETAILS</p>
            <!-- Add live event details here -->
            <span class="comments">12</span>
          </div>
        </div>
        <!-- Add more live event placeholders as needed -->
        <div class="cl">&nbsp;</div>
      </div>
      
      <div class="box">
        <div class class="head">
          <h2>PRIVATE EVENTS</h2>
          <p class="text-right"><a href="#">See all</a></p>
        </div>
        <!-- Private Event Placeholder Images -->
        <div class="event">
          <div class="event-image"> <span class="play"><span class="name">Private Event 1</span></span> <a href="#"><img src="css/images/Private Events/Exhibitions.jpeg" alt="Private Event 1" /></a> </div>
          <div class="details">
            <p>DETAILS</p>
            <!-- Add private event details here -->
            <span class="comments">12</span>
          </div>
        </div>
        <!-- Add more private event placeholders as needed -->
        <div class="cl">&nbsp;</div>
      </div>
    </div>
    <div class="cl">&nbsp;</div>
  </div>
  <div id="footer">
    <p class="lf">Copyright &copy; 2023 <a href="#">EventPlanner</a> - All Rights Reserved</p>
    <p class="rf">Design by <a href="http://chocotemplates.com/">ChocoTemplates.com</a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<!-- END PAGE SOURCE -->
</body>
</html>
