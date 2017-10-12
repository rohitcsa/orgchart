<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CrossTab OrgChart</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  <link
	href=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.1/themes/smoothness/jquery-ui.css"
	rel="stylesheet">
	
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.1/jquery-ui.css"
	rel="stylesheet">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
<link href="getorgchart.css" rel="stylesheet" />
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
                  <small>Member since feb-2017</small>
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
          <p>CrossTab Employee</p>
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
          <li><a href="solution.jsp"><i class="fa fa-link"></i> <span>Solution</span></a></li>
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
        <div id='peopled' style="height: 460px;width:100%;"></div>
        
	<div id="dialog" title="Edit node">
				<form method="get" action="#">
					<h1>update the details</h1>
					
					<div>
				<label for="txtTitle">ID</label><br />
				<input id="id" type="text"name="id" >
			</div>
			
					<div>
						<label for="txtTitle">Post</label><br /> <input id="txtTitle"
							type="text" name="post" />
					</div>
					<div>
						<label for="txtTitle">Name</label><br /> <input id="txtTitle"
							type="text" name="name" />
					</div>
					<br />
					<div>
						<label for="txtTitle">Email</label><br /> <input id="txtTitle"
							type="text" name="email" />
					</div>
					<br /> <br /> <br />
					<input type="submit" value="save">
				</form>
			</div>
<script src="getorgchart.js"></script>
<script type="text/javascript">
		getOrgChart.themes.myCustomTheme = {
			size : [ 270, 150 ],
			toolbarHeight : 50,
			textPoints : [ {
				x : 100,
				y : 50,
				width : 250
			}, {
				x : 100,
				y : 90,
				width : 250
			} ],
			textPointsNoImage : [ {
				x : 130,
				y : 50,
				width : 250
			}, {
				x : 130,
				y : 90,
				width : 250
			} ],
			expandCollapseBtnRadius : 20,
			defs : '<filter id="f1" x="0" y="0" width="200%" height="200%"><feOffset result="offOut" in="SourceAlpha" dx="5" dy="5" /><feGaussianBlur result="blurOut" in="offOut" stdDeviation="5" /><feBlend in="SourceGraphic" in2="blurOut" mode="normal" /></filter>',
			box : '<rect x="0" y="0" height="150" width="270"background-color="skyblue" border="2px solid" stroke="ffffff" rx="10" ry="10" class="myCustomTheme-box" filter="url(#f1)"  />',
			text : '<text text-anchor="middle" width="[width]" class="get-text get-text-[index]" x="[x]" y="[y]">[text]</text>',
			image : '<clipPath id="getMonicaClip"><circle cx="135" cy="255" r="85" /></clipPath><image preserveAspectRatio="xMidYMid slice" clip-path="url(#getMonicaClip)" xlink:href="[href]" x="50" y="150" height="190" width="170"/>',

			reporters : '<text class="reporters-text" text-anchor="middle" width="100" x="80" y="65">[reporters]</text>'

		//ddddd: '<text x="0" y="0">1</text>'
		};

		var peopleElement = document.getElementById("peopled");
		var btnAdd = '<g data-action="add" class="btn" transform="matrix(0.14,0,0,0.14,0,0)"><rect style="opacity:20" x="0" y="0" height="300" width="300" /><path  fill="#ffffff" d="M149.996,0C67.157,0,0.001,67.158,0.001,149.997c0,82.837,67.156,150,149.995,150s150-67.163,150-150 C299.996,67.156,232.835,0,149.996,0z M149.996,59.147c25.031,0,45.326,20.292,45.326,45.325 c0,25.036-20.292,45.328-45.326,45.328s-45.325-20.292-45.325-45.328C104.671,79.439,124.965,59.147,149.996,59.147z M168.692,212.557h-0.001v16.41v2.028h-18.264h-0.864H83.86c0-44.674,24.302-60.571,40.245-74.843 c7.724,4.15,16.532,6.531,25.892,6.601c9.358-0.07,18.168-2.451,25.887-6.601c7.143,6.393,15.953,13.121,23.511,22.606h-7.275 v10.374v13.051h-13.054h-10.374V212.557z M218.902,228.967v23.425h-16.41v-23.425h-23.428v-16.41h23.428v-23.425H218.9v23.425 h23.423v16.41H218.902z"/></g>';
		var btnEdit = '<g data-action="edit" class="btn" transform="matrix(0.14,0,0,0.14,50,0)"><rect style="opacity:20" x="0" y="0" height="300" width="300" /><path fill="#ffffff" d="M149.996,0C67.157,0,0.001,67.161,0.001,149.997S67.157,300,149.996,300s150.003-67.163,150.003-150.003 S232.835,0,149.996,0z M221.302,107.945l-14.247,14.247l-29.001-28.999l-11.002,11.002l29.001,29.001l-71.132,71.126 l-28.999-28.996L84.92,186.328l28.999,28.999l-7.088,7.088l-0.135-0.135c-0.786,1.294-2.064,2.238-3.582,2.575l-27.043,6.03 c-0.405,0.091-0.817,0.135-1.224,0.135c-1.476,0-2.91-0.581-3.973-1.647c-1.364-1.359-1.932-3.322-1.512-5.203l6.027-27.035 c0.34-1.517,1.286-2.798,2.578-3.582l-0.137-0.137L192.3,78.941c1.678-1.675,4.404-1.675,6.082,0.005l22.922,22.917 C222.982,103.541,222.982,106.267,221.302,107.945z"/></g>';
		var btnDel = '<g data-action="delete" class="btn" transform="matrix(0.14,0,0,0.14,100,0)"><rect style="opacity:120" x="0" y="0" height="300" width="300" /><path fill="#ffffff" d="M112.782,205.804c10.644,7.166,23.449,11.355,37.218,11.355c36.837,0,66.808-29.971,66.808-66.808 c0-13.769-4.189-26.574-11.355-37.218L112.782,205.804z"/> <path stroke="#686868" fill="#686868" d="M150,83.542c-36.839,0-66.808,29.969-66.808,66.808c0,15.595,5.384,29.946,14.374,41.326l93.758-93.758 C179.946,88.926,165.595,83.542,150,83.542z"/><path stroke="#686868" fill="#686868" d="M149.997,0C67.158,0,0.003,67.161,0.003,149.997S67.158,300,149.997,300s150-67.163,150-150.003S232.837,0,149.997,0z M150,237.907c-48.28,0-87.557-39.28-87.557-87.557c0-48.28,39.277-87.557,87.557-87.557c48.277,0,87.557,39.277,87.557,87.557 C237.557,198.627,198.277,237.907,150,237.907z"/></g>';

		getOrgChart.themes.myCustomTheme.box += '<g transform="matrix(0.6,0,0,0.6,180,120)">'
				+ btnAdd + btnEdit + btnDel

				+ '</g>';

		var orgChart = new getOrgChart(peopleElement, {
			theme : "myCustomTheme",
			enableGridView : true,
			enableEdit : false,
			color : "black",
			primaryFields : [ "name", "title", "phone", "mail" ],
			enableEdit : false,
			enableDetailsView : false,
			updatedEvent : function() {
				init();
			},
			dataSource : [ {
				id : 1,
				parentId : null,
				name : "Amber McKenzie",
				title : "CEO",
				phone : "678-772-470",
				mail : "lemmons@jourrapide.com",
				adress : "Atlanta, GA 30303",
				image : "images/f-11.jpg"
			}, {
				id : 2,
				parentId : 1,
				name : "Ava Field",
				title : "Paper goods machine setter",
				phone : "937-912-4971",
				mail : "anderson@jourrapide.com",
				image : "images/f-10.jpg"
			}, {
				id : 3,
				parentId : 1,
				name : "Evie Johnson",
				title : "Employer relations representative",
				phone : "314-722-6164",
				mail : "thornton@armyspy.com",
				image : "images/f-9.jpg"
			}, {
				id : 4,
				parentId : 1,
				name : "Paul Shetler",
				title : "Teaching assistant",
				phone : "330-263-6439",
				mail : "shetler@rhyta.com",
				image : "images/f-5.jpg"
			}, {
				id : 5,
				parentId : 2,
				name : "Rebecca Francis",
				title : "Welding machine setter",
				phone : "408-460-0589",
				image : "images/f-4.jpg"
			}, {
				id : 6,
				parentId : 2,
				name : "Rebecca Randall",
				title : "Optometrist",
				phone : "801-920-9842",
				mail : "JasonWGoodman@armyspy.com",
				image : "images/f-8.jpg"
			}, {
				id : 7,
				parentId : 2,
				name : "Spencer May",
				title : "System operator",
				phone : "Conservation scientist",
				mail : "hodges@teleworm.us",
				image : "images/f-7.jpg"
			}, {
				id : 8,
				parentId : 6,
				name : "Max Ford",
				title : "Budget manager",
				phone : "989-474-8325",
				mail : "hunter@teleworm.us",
				image : "images/f-6.jpg"
			}, {
				id : 9,
				parentId : 7,
				name : "Riley Bray",
				title : "Structural metal fabricator",
				phone : "479-359-2159",
				image : "images/f-3.jpg"
			}, {
				id : 10,
				parentId : 7,
				name : "Callum Whitehouse",
				title : "Radar controller",
				phone : "847-474-8775",
				image : "images/f-2.jpg"
			} ]
		});
		function getNodeByClickedBtn(el) {
			while (el.parentNode) {
				el = el.parentNode;
				if (el.getAttribute("data-node-id"))
					return el;
			}
			return null;
		}
		var init = function() {
			var btns = document.getElementsByClassName("btn");
			for (var i = 0; i < btns.length; i++) {

				btns[i].addEventListener("click", function() {
					var nodeElement = getNodeByClickedBtn(this);
					var action = this.getAttribute("data-action");
					var id = nodeElement.getAttribute("data-node-id");
					var node = orgChart.nodes[id];

					switch (action) {
					case "add":
						orgChart.insertNode(id);
						break;
					case "edit":

						$("#dialog").dialog("open");
						break;
					case "delete":
						orgChart.removeNode(id);
						break;
					}
				});
			}
		}
		init();
		function renderNodHandler(sender, args) {
			for (var i = 0; i < args.content.length; i++) {
				if (args.content[i].indexOf("[reporters]") != -1) {
					args.content[i] = args.content[i].replace("[reporters]",
							args.node.children.length);
				}
			}
		}
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
		$("#peopled").hide();
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
      Give Feedback
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