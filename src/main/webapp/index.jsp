<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js" type="text/javascript"></script>
<link href =" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"rel = "stylesheet">
<link href =  "https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" rel = "stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="demo.css" rel="stylesheet">
<title>Welcome to crosstab</title>

</head>
 <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<div id="modals" class="modal">       
            <center> <strong>Login Details</strong></center>
                <form class="form-horizontal" method="post" action="check">
                        <div class="form-group">
                            <label for="User name" class="control-label col-xs-4">User Name</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="uname" id="dummyText" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Email" class="control-label col-xs-4">Email</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="email" id="emailtext" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label col-xs-4">password</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="pass" id="password" class="form-control" />
                            </div>
                        </div>
                         <button class="btn btn-default" type="reset" >Reset</button>
                        <button class="btn btn-primary" type="submit" >Login</button>
                    
                </form>          
      </div>
      <div id="dialog" class="modal">       
            <center> <strong>Sign Up Details</strong></center>
                <form class="form-horizontal" method="post" action="signup">
                        <div class="form-group">
                            <label for="User name" class="control-label col-xs-4">User Name</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="uname" id="dummyText" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Email" class="control-label col-xs-4">Email</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="email" id="emailtext" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label col-xs-4">password</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="pass" id="password" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="control-label col-xs-4">Phone</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="phone" id="password" class="form-control" />
                            </div>
                        </div>
                         <div class="form-group">
                            <label for="password" class="control-label col-xs-4">City</label>
                            <div class="input-group col-xs-7">
                                <input type="text" name="city" id="password" class="form-control" />
                            </div>
                        </div>
                         <button class="btn btn-default" type="reset" >Reset</button>
                        <button class="btn btn-primary" type="submit" >Sign UP</button>
                    
                </form>          
      </div>


<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#myPage">CROSSTAB</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <li><a href="#band">ABOUT</a></li>
       
        <li><a href="#contact">CONTACT</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">what we do</a></li>
            <li><a href="#">Extras</a></li>
            <li><a href="#">Media</a></li> 
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<br/><br/><br/>
	
        <marquee ><center><img src="crosstab.png" width="80%" height="80%"></center></marquee>
   <div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0"class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item-active">
        <img src="photos/org2.jpg"  style="width:100%;">   
      </div> 
      <div class="item">
        <img src="photos/org3.jpg" style="width:100%;">
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><br/><br/><br/><hr>

		<!--BEGIN BACK TO TOP-->
		<a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
		<!--END BACK TO TOP-->
		<!--BEGIN TOPBAR-->
		
<button class="btn btn-success"style="position: absolute; left: 270px; top: 430px;width:180px; height:40px;"
	 id="signin">SIGN IN</button>
		<button class="btn btn-success"style="position: absolute; left: 270px; top: 530px;width:180px; height:40px;"
		 id="signup">SIGN UP</button>
 <footer class="container-fluid text-center"Style="background-color:black; color:white;">
  <a href="#" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>ALL RIGHT RESERVED (2017-2018) <a href="#"><b><font color="#2bd881">CROSSTAB</font></b></a></p>
</footer>  
    
      
      <%--script goes here --%>
      
      
       <script type="text/javascript">
$(function() {
    $( "#modals" ).dialog({
       autoOpen:
		false, 
       hide: "puff",
       show: "slide",
    width:500    
    });
    $( "#signin" ).click(function() {
       $( "#modals" ).dialog( "open" );
    });
 });


		</script>
 <script type="text/javascript">
 $(function() {
        $("#dialog").dialog({
            modal: true,
            autoOpen: false,            
            show: {
                effect: "explode",
                duration: 200
            },
            hide: {
                effect: "explode",
                duration: 200
            },
            width:500
        });
        $( "#signup" ).click(function() {
            $( "#dialog" ).dialog( "open" );
         });
 });
        </script>
</body>
</html>