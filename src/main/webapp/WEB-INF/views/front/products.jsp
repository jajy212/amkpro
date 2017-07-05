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
					<li>产品中心</li>
                    <li class="active">超级净化手套箱</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        
        <!-- Projects Row -->
        <c:forEach var="articleList" items="${article}">
	        <div class="row">
	          <c:forEach var="article" items="${articleList}">
		            <div class="col-md-6 img-portfolio">
		           
		                <a href="${path}/front/item?param=${article.id }">
		                <c:if test="${article.imageArr != '' }">
		                	<c:forEach var="img" begin="0" end="0" items="${article.imageArr  }">
				           		<img class="img-responsive img-hover" src=${img } alt=""/>
				           	</c:forEach>
				         </c:if>  
		                </a>
		                <h3>
		                    <a href="${path}/front/item?param=${article.id }">${article.title }</a>
		                </h3>
		                <p>${article.description }</p>
		            </div>
	          </c:forEach>
	        </div>
        </c:forEach>
        <!-- /.row -->

        <!-- Projects Row 
        <div class="row">
            <div class="col-md-6 img-portfolio">
                <a href="item.dhtml?param=1">
                    <img class="img-responsive img-hover" src="${path}/static/img/product/700400.png" alt="">
                </a>
                <h3>
                    <a href="item.dhtml?param=1">产品五</a>
                </h3>
                <p>EXCEL超越系列是一款高效、易用的手套箱系统，富于高品质的设计，可适用于多领域对惰性气氛保护的不同技术需求。</p>
            </div>
            <div class="col-md-6 img-portfolio">
                <a href="item.dhtml?param=1">
                    <img class="img-responsive img-hover" src="${path}/static/img/product/700400.png	" alt="">
                </a>
                <h3>
                    <a href="item.dhtml?param=1">产品六</a>
                </h3>
                <p>EXCEL超越系列是一款高效、易用的手套箱系统，富于高品质的设计，可适用于多领域对惰性气氛保护的不同技术需求。</p>
            </div>
            
            
        </div>-->
        <!-- /.row -->

        <hr>

        <!-- Pagination
        <div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li>
                        <a href="#">&laquo;</a>
                    </li>
                    <li class="active">
                        <a href="#">1</a>
                    </li>
                    <li>
                        <a href="#">2</a>
                    </li>
                    <li>
                        <a href="#">3</a>
                    </li>
                    <li>
                        <a href="#">4</a>
                    </li>
                    <li>
                        <a href="#">5</a>
                    </li>
                    <li>
                        <a href="#">&raquo;</a>
                    </li>
                </ul>
            </div>
        </div> -->
        <!-- /.row -->

    </div>
    <!-- /.container -->
	</div>
	

	<%@ include file="include/footer.jsp"%>	

	
	</body>
</html>
