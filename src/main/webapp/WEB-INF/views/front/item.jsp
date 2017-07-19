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
                <ol class="breadcrumb">
                    <li><a href="index.html">首页</a>
                    </li>
					<li>产品中心</li>
                    <li class="active">${article.title }</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="row">

            <div class="col-md-6">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                    	<c:forEach var="img"  items="${article.imageArr  }" varStatus="status">
                    		<li data-target="#carousel-example-generic" data-slide-to="${status.index }" <c:if test="${status.index == 0 }">class="active"</c:if> ></li>
                    	</c:forEach>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                    	<c:forEach var="img"  items="${article.imageArr  }" varStatus="status">
                    	<c:choose>
                    		<c:when test="${status.index == 0 }">
                    			<div class="item active">
                    		</c:when>
                    		<c:otherwise>
                    			<div class="item">
                    		</c:otherwise>
                    	</c:choose>
	                            <img class="img-responsive" src=${img } alt=""/>
	                        </div>
				        </c:forEach>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>

            <div class="col-md-6">
                <h3 class="fontcolor">${article.title }</h3>
                ${articleData.content }
               <!--   <p>APEX 巅峰系列是一款集智能化、高品质于一身的手套箱系统，丰富的报表资源让您对设备了如指掌，高效的远程诊断功能为您免去一切后顾之忧，巅峰系列产品完全可满足您对惰性气氛保护的严苛要求，为不同应用领域、不同术要求提供更多选择。</p>
                <h3 class="fontcolor">产品型号</h3>
                <ul>
                    <li>APEX(1200/780)	APEX(1200/1000)	APEX(1200/1200)</li>
                    <li>APEX(1800/780)	APEX(1800/1000)	APEX(1800/1200)</li>
                    <li>APEX(2400/780)	APEX(2400/1000)	APEX(2400/1200)</li>
                </ul>-->
            </div>
        </div>
        <!-- /.row -->
     </div>

    </div>
    <!-- /.container -->

	<%@ include file="include/footer.jsp"%>	
	
	</body>
</html>
