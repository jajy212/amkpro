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
                <!--<h1 class="page-header">Two Column Portfolio
                    <small>Subheading</small>
                </h1>-->
                <ol class="breadcrumb">
                    <li><a href="index.html">首页</a>
                    </li>
					<li><a href="${path }/front/news">新闻动态</a></li>
					<li class="active">${article.title }</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
            	<h3> 
            		<c:choose>
		    			<c:when test="${langType eq 'en'}">
		    				${article.titleEn }
		    			</c:when>
		    			<c:otherwise>
		    				${article.title }
		    			</c:otherwise>
		    		</c:choose>
            	</h3>
                <hr>
                <!-- Preview Image -->
               <!--   <img class="img-responsive" src="http://placehold.it/900x300" alt="">-->
                 <!-- Post Content -->
              	<c:choose>
	    			<c:when test="${langType eq 'en'}">
	    				${articleData.contentEn }
	    			</c:when>
	    			<c:otherwise>
	    				${articleData.content }
	    			</c:otherwise>
	    		</c:choose>
                <hr>
            </div>
        </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->

	<%@ include file="include/footer.jsp"%>	
	
	</body>
</html>
