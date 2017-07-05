<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setAttribute("path", request.getContextPath());%>

    
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<%@ include file="include/meta.jsp"%>

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts 
	<link href='http://fonts.useso.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>-->
   
	<!-- Animate.css -->
	<link rel="stylesheet" href="${path}/static/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${path}/static/css/icomoon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="${path}/static/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${path}/static/css/owl.theme.default.min.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${path}/static/css/magnific-popup.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="${path}/static/css/style.css">
	
	<!-- Custom Fonts -->
	<link href="${path}/static/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<!-- Modernizr JS -->
	<script src="${path}/static/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="${path}/static/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>	
	<%@ include file="include/header.jsp"%>
	<!-- END .header -->
	
		<div class="fh5co-spacer-md"></div>
	
	<div id="fh5co-main">
		
		<!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-md-12">
                <!--<h1 class="page-header">Two Column Portfolio
                    <small>Subheading</small>
                </h1>-->
                <ol class="breadcrumb">
                    <li><a href="index.html">首页</a>
                    </li>
					<li class="active">解决方案</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
        <!-- Image Header -->
        <div class="row">
            <div class="col-lg-12">
                <img class="img-responsive" src="${path}/static/img/1200300.png" alt="">
            </div>
        </div>
        <!-- /.row -->

	<!-- Service List -->
        <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">产品应用领域</h2>
            </div>
            <div class="col-md-4">
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-tree fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">锂离子电池研发及生产</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-car fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">OLED研发及制造</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-support fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">特种灯研发及制造</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-database fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">有机合成实验</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-bomb fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">纳米材料</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-bank fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">粉末冶金</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-paper-plane fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">催化实验</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-space-shuttle fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">核工业防护</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
                <div class="media">
                    <div class="pull-left">
                        <span class="fa-stack fa-2x">
                              <i class="fa fa-circle fa-stack-2x text-primary"></i>
                              <i class="fa fa-recycle fa-stack-1x fa-inverse"></i>
                        </span> 
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">医药研发</h4>
                        <p>这里是各应用领域的说明这里是各应用领域的说明这里是各应用领域的说明</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->
            
            
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
	</div>
	

	<%@ include file="include/footer.jsp"%>	

	
	</body>
</html>
