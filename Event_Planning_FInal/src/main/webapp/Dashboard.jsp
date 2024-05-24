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
  background: rgba(19, 35, 47, 0.9);
  padding: 40px;
  max-width: 600px;
  height:500px;
  margin: 40px auto;
  /*margin-top:15px;
  margin-bottom:100px;
  margin-left:180px;*/
  border-radius: 4px;
  box-shadow: 0 4px 10px 4px rgba(19, 35, 47, 0.3);
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
  background: #179b77;
  color: #ffffff;
}
.tab-group .active a {
  background: #1ab188;
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
  color: rgba(255, 255, 255, 0.5);
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
  border: 1px solid #a0b3b0;
  color: #ffffff;
  border-radius: 0;
  transition: border-color .25s ease, box-shadow .25s ease;
}
input:focus, textarea:focus {
  outline: 0;
  border-color: #1ab188;
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
}
.button:hover, .button:focus {
  background: #179b77;
}

.button-block {
  display: block;
  width: 100%;
}

.forgot {
  margin-top: -20px;
  text-align: right;
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
			        <li><a href="#After_Login">HOME</a></li>
			        <li><a href="#news">NEWS</a></li>
			        <li><a href="#comment">COMMENTS</a></li>
			        <li><a href="#contact">CONTACT</a></li>
			        <li><a href="${Up_update}">UPLOAD</a></li>
			        <li><a class="active" href="Dashboard.jsp">PROFILE</a></li>
			        
			      </ul>
			    </div>
			    <div id="sub-navigation1">
			      <ul>
			        <li><a href="#">SHOW ALL</a></li>
			        <li><a href="#">TOP RATED</a></li>
			        <li><a href="#">MOST COMMENTED</a></li>
			      </ul>
			      <div id="search1">
			        <form action="Search_Servlet" method="post" accept-charset="utf-8">
			          <label for="search-field">SEARCH</label>
			          <input type="text" name="search" value="Enter search here" id="search-field" onfocus="clearContents(this);" class="blink search-field"  />
			          <input type="submit" value="GO!" class="search-button" />
			        </form>
			      </div>
			    </div>
			  </div>
			  <div class="form">
      
			      <ul class="tab-group">
			        <li class="tab active"><a href="#login">Profile Log In </a></li>
			      </ul>
			      
			      <div class="tab-content">
			        <div id="login">   
			        <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
			          
			          <form action="Dashboard_loginServlet" method="post">
			          
			          <div class="field-wrap">
			            <label>
			              UserName<span class="req">*</span>
			            </label>
			            <input type="text" name="User_Id" required autocomplete="off"/>
			          </div>
			          
			          <div class="field-wrap">
			            <label>
			              Password<span class="req">*</span>
			            </label>
			            <input type="password" name="P_word" required autocomplete="off"/>
			          </div>
			          
			          <p class="forgot"><a href="#">Forgot Password?</a></p>
			          
			          <button class="button button-block"/>GET IN</button>
			          
			          </form>
			
			        </div>
			        
			        <div id="signup"></div>
			        
			      </div><!-- tab-content -->
      
			  </div> <!-- /form -->
    		  <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-157cd5b220a5c80d4ff8e0e70ac069bffd87a61252088146915e8726e5d9f147.js"></script>

  			  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
      		  <script id="rendered-js" >
					$('.form').find('input, textarea').on('keyup blur focus', function (e) {
					
					  var $this = $(this),
					  label = $this.prev('label');
					
					  if (e.type === 'keyup') {
					    if ($this.val() === '') {
					      label.removeClass('active highlight');
					    } else {
					      label.addClass('active highlight');
					    }
					  } else if (e.type === 'blur') {
					    if ($this.val() === '') {
					      label.removeClass('active highlight');
					    } else {
					      label.removeClass('highlight');
					    }
					  } else if (e.type === 'focus') {
					
					    if ($this.val() === '') {
					      label.removeClass('highlight');
					    } else
					    if ($this.val() !== '') {
					      label.addClass('highlight');
					    }
					  }
					
					});
					
					$('.tab a').on('click', function (e) {
					
					  e.preventDefault();
					
					  $(this).parent().addClass('active');
					  $(this).parent().siblings().removeClass('active');
					
					  target = $(this).attr('href');
					
					  $('.tab-content > div').not(target).hide();
					
					  $(target).fadeIn(600);
					
					});
					//# sourceURL=pen.js
    			</script>
		 		<div id="news">
			      <div class="head">
			        <h3>NEWS</h3>
			        <p class="text-right"><a href="#">See all</a></p>
			      </div>
			      <div class="content">
			        <p class="date">12.04.09</p>
			        <h4>Disney's A Christmas Carol</h4>
			        <p>&quot;Disney's A Christmas Carol,&quot; a multi-sensory thrill ride re-envisioned by Academy Award&reg;-winning filmmaker Robert Zemeckis, captures... </p>
			        <a href="#">Read more</a> </div>
			      <div class="content">
			        <p class="date">11.04.09</p>
			        <h4>Where the Wild Things Are</h4>
			        <p>Innovative director Spike Jonze collaborates with celebrated author Maurice Sendak to bring one of the most beloved books of all time to the big screen in &quot;Where the Wild Things Are,&quot;...</p>
			        <a href="#">Read more</a> </div>
			      <div class="content">
			        <p class="date">10.04.09</p>
			        <h4>The Box</h4>
			        <p>Norma and Arthur Lewis are a suburban couple with a young child who receive an anonymous gift bearing fatal and irrevocable consequences.</p>
			        <a href="#">Read more</a> </div>
			    </div>
			    <div id="coming">
			      <div class="head">
			        <h3>COMING SOON<strong>!</strong></h3>
			        <p class="text-right"><a href="#">See all</a></p>
			      </div>
			      <div class="content">
			        <h4>The Princess and the Frog </h4>
			        <a href="#"><img src="css/images/coming-soon1.jpg" alt="" /></a>
			        <p>Walt Disney Animation Studios presents the musical &quot;The Princess and the Frog,&quot; an animated comedy set in the great city of New Orleans...</p>
			        <a href="#">Read more</a> </div>
			      <div class="cl">&nbsp;</div>
			      <div class="content">
			        <h4>The Princess and the Frog </h4>
			        <a href="#"><img src="css/images/coming-soon2.jpg" alt="" /></a>
			        <p>Walt Disney Animation Studios presents the musical &quot;The Princess and the Frog,&quot; an animated comedy set in the great city of New Orleans...</p>
			        <a href="#">Read more</a> </div>
			    </div>
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