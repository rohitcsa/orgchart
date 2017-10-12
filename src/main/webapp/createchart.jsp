<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link href="getorgchart.css" rel="stylesheet" />
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <style>
ul#list li {
	display: inline;
}

ul#list2 li {
	display: inline;
}

.get-text {
	fill: #686868 !important;
	font-size: 20px !important;
}

.get-text-0 {
	fill: #686868 !important;
	font-size: 30px !important;
}

.get-box {
	fill: #e8ecf0 !important;
}

.get-org-chart {
	background-color: #ffffff !important;
}

.myCustomTheme-box {
	fill: #FFFFFF;
	stroke: #DDDAB9;
}

.reporters {
	fill: #0072C6;
}

.reporters-text {
	fill: #ffffff;
}

@media print {
	#section-to-print, #section-to-print * {
		visibility: visible;
	}
	#section-to-print {
		position: absolute;
		left: 0;
		top: 0;
	}
}
</style>
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img src="crosstablogo.png"width=50px height=50px></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Cross</b>TAB</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <!-- Menu toggle button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the messages -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <!-- User Image -->
                        <img src="user.png" class="img-circle" alt="User Image">
                      </div>
                      <!-- Message title and timestamp -->
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <!-- The message -->
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                </ul>
                <!-- /.menu -->
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
          <!-- /.messages-menu -->

          <!-- Notifications Menu -->
          <li class="dropdown notifications-menu">
            <!-- Menu toggle button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- Inner Menu: contains the notifications -->
                <ul class="menu">
                  <li><!-- start notification -->
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <!-- end notification -->
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- Tasks Menu -->
          <li class="dropdown tasks-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-flag-o"></i>
              <span class="label label-danger">9</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 9 tasks</li>
              <li>
                <!-- Inner menu: contains the tasks -->
                <ul class="menu">
                  <li><!-- Task item -->
                    <a href="#">
                      <!-- Task title and progress text -->
                      <h3>
                        Design some buttons
                        <small class="pull-right">20%</small>
                      </h3>
                      <!-- The progress bar -->
                      <div class="progress xs">
                        <!-- Change the css width attribute to simulate progress -->
                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <!-- end task item -->
                </ul>
              </li>
              <li class="footer">
                <a href="#">View all tasks</a>
              </li>
            </ul>
          </li>
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="user.png" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs">CrossTab Employee</span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="user.png" class="img-circle" alt="User Image">

                <p>
                 CrossTab Employee - Web Developer
                  <small>Member since FEB. 2017</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="user.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Crosstab Employee</p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">HEADER</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="dashboard.jsp"><i class="fa fa-link"></i> <span>DashBoard</span></a></li>
        <li><a href="group.jsp"><i class="fa fa-link"></i> <span>Finance</span></a></li>
         <li><a href="finance.jsp"><i class="fa fa-link"></i> <span>Consulting</span></a></li>
          <li><a href="#"><i class="fa fa-link"></i> <span>Solution</span></a></li>
           <li><a href="technology.jsp"><i class="fa fa-link"></i> <span>Technology</span></a></li>
       <li class="treeview">
          <a href="#"><i class="fa fa-link"></i> <span>Advanced</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="createchart.jsp">Create own chart</a></li>
            <li><a href="uploadexcel.jsp">Upload excel data</a></li>
          </ul>
        </li>
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header"style="height:50px">
      <h1>
       DASHBOARD
        <small>CrossTAB orgchart</small>
      </h1>
      <ol class="breadcrumb">
        
        <li><span style="font-size: 40px; color: black;"
						class="glyphicon glyphicon-envelope" title="send mail" id=mail></span></li>

					<li><span style="font-size: 40px; color: black;"
						class="glyphicon glyphicon-filter" id="search"></span>
					<li><input type=image
						onclick="window.location.href='javascript:genPDF();'"
						style="width: 40px; height: 40px;" src="styles/pdf1.png"
						style="width:40px;height:40px" title="Save as PDF">
					<li><input type=image onclick="takesScreenshot()"
						style="width: 40px; height: 40px;" src="styles/jpg.png"
						style="width:40px;height:40px;" title="save as PNG">
					<li><input type=image onclick="printDiv('page-content')"
						style="width: 40px; height: 40px;" src="styles/print.png"
						style="width:40px;height:40px;" title="print">
					<li><a href="#"><span style="font-size: 40px; color: red;"
							class="glyphicon glyphicon-plus" title="new chart" id="new"></span></a>
					<li>
					<li class="dropdown"><a class="dropdown"
						data-toggle="dropdown" href="#"><input type=image
							style="width: 40px; height: 40px;" src="styles/color.jpg"
							style="width:40px;height:40px;" title="change color"> <span
							class="caret"></span></a>
						<ul class="dropdown-menu" id=list2>
							<li><button class="btn btn-danger" id=redcolor
									style="width: 20px; height: 20px;"></button></li>
							<li>
								<button class="btn btn-info" style="width: 20px; height: 20px;"
									id=yellowcolor></button>
							</li>
							<li>
								<button class="btn btn-warning"
									style="width: 20px; height: 20px;" id=orangecolor></button>
							</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->
         <div class="col-sm-2"
						style="background-color: white; height: 500px;"
						id="dia">
						<br />
						<center>
							<div style="border: 1px solid black; height: 100px; width: 100px"
								id="rec"></div>
						</center>
						<hr>
						<center>
							<div class="turn"
								style="height: 100px; width: 120px; border-radius: 3px" id="tri">
								<textarea rows="4" cols="10"></textarea>
							</div>
						</center>
						<hr>
						<center>
							<div class="circle"
								style="width: 100px; height: 0px; border: solid 1px;" id="cir"></div>
							<br />
							<div class="circle"
								style="width: 0px; height: 40px; border: solid 1px;" id="cir1"></div>
						</center>
						<hr>
						<center>
							<div id="type" style="width: 100px">
								<input type="text" style="width: 80px">
						</center>
					</div>
        <script type="text/javascript"
					src="https://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.7.1/ckeditor.js"></script>
				<div id="edit">
					<form class="form-horizontal" method="post" name="myform"
						action="emailservlet">
						<div class="form-group">
							<label class="control-label col-sm-2 !important" !important>TO:</label>
							<div class="col-sm-10 !important">
								<input type="text" class="form-control" id="email"
									placeholder="Enter email" name="recipient" required="required">
							</div>
						</div>

						<div class="form-group !important" !important>
							<label class="control-label col-sm-2 !important" !important>SUBJECT:</label>
							<div class="col-sm-10 !important" !important>
								<input type="text" class="form-control" id="pwd"
									placeholder="Enter subject" name="subject" required="required" />
							</div>
						</div>

						<textarea name="editor1" id="editor1" style="height: 400px">           
            </textarea>
						<script>
							CKEDITOR.replace('editor1');
						</script>

						<center>
							<input type="submit" style="width: 100px" value="SEND"
								class="btn">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								type="reset" value="RESET" style="width: 100px" class="btn">
						</center>
					</form>

				</div>
       
        
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$('#rec,#cir,#cir1,#tri,#type').draggable({
			helper : "clone"
		}).on('dragstart', function(e, ui) {
			$(ui.helper).css('z-index', '999999');
		}).on('dragstop', function(e, ui) {
			$(this).after($(ui.helper).clone().draggable());
		});
	</script>

	
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			$("#dialog").dialog({
				modal : true,
				autoOpen : false,
				show : {
					effect : "explode",
					duration : 200
				},
				hide : {
					effect : "explode",
					duration : 200
				}
			});
		});
	</script>
	<Script type="text/javascript">
	$(document).ready(function() {
	$("#redcolor").click(function() {
		$(".myCustomTheme-box").css("fill", "red");
	});
	$("#yellowcolor").click(function() {
		$(".myCustomTheme-box").css("fill", "skyblue");
	});
	$("#orangecolor").click(function() {
		$(".myCustomTheme-box").css("fill", "orange");
	});
	$("#edit").hide();
	
	$("#mail").click(function() {
		$("#edit").fadeIn(2000);
		$("#createchart").hide();
		$("#dia").hide();
});
	});
	</Script>
	
	
	
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2017-18 <a href="#">CrossTAB IT</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading"> Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
  <script
  src="https://code.jquery.com/ui/1.12.1/jquery.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>