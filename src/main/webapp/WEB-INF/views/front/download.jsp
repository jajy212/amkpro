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
					<li class="active">文件下载</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
        <!-- /.row -->
		<div class="fh5co-spacer-sm"></div>
		<!-- Content Row -->
        <div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="###">艾明坷产品手册 （手套箱、溶剂净化系统等）</a>
				<p>发布日期：2017-01-01   下载次数：100</p>
            </div>
        </div>
		<hr>
		<div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="###">溶剂参数表</a>
				<p>发布日期：2017-01-01   下载次数：100</p>	
				<p></p>				
            </div>
        </div>
		<hr>
		<div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="###">有机实验室常用仪器与使用</a>
				<p>发布日期：2017-01-01   下载次数：100</p>		
				<p></p>
            </div>
        </div>
		<hr>
		<div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="###">EX-SPS5-800溶剂净化系统</a>
				
				<p>发布日期：2017-01-01   下载次数：100</p>
            </div>
        </div>
        <!-- /.row -->
        
 

    </div>
    <!-- /.container -->
	</div>
	

	<%@ include file="include/footer.jsp"%>	

	
	</body>
</html>
