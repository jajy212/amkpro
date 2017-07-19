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
					<li class="active">新闻动态</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
       <!-- /.row -->
		<div class="fh5co-spacer-sm"></div>
		
		<form id="searchForm"  action="${path}/front/news" method="post" >
			<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
			<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		</form>
		<!-- Content Row -->
		<c:forEach var="article" items="${page.list}">
        <div class="row">
            <div class="col-md-1 text-center">
                <p><i class="fa fa-camera fa-4x text-primary"></i>
                </p>
                <p><fmt:value="${article.updateDate }" pattern="yyyy-MM-dd"/></p>
            </div>
            <div class="col-md-4">
                <a href="${path}/front/detail?param=${article.id}">
                    <img class="img-responsive img-hover" src="http://placehold.it/600x300" alt="">
                </a>
            </div>
            <div class="col-md-7">
                <h3>
                    <a href="${path}/front/detail?param=${article.id}">${article.title }</a>
                </h3>
                </p>
                ${article.description }
               <!-- <a class="btn btn-primary" href="blog-post.html">Read More <i class="fa fa-angle-right"></i></a>-->
            </div>
        </div>
        <hr>
        </c:forEach>
        <!-- /.row -->
		  <!-- Pagination -->
		  
		   <div class="row text-center">
            <div class="col-lg-12">
               ${page}
            </div>
        </div>
		  
        
    </div>
    <!-- /.container -->
	</div>
	

	<%@ include file="include/footer.jsp"%>	
	<script type="text/javascript">
	
	function page(n,s){
		$("#pageNo").val(n);
		$("#pageSize").val(s);
		$("#searchForm").submit();
    	return false;
    }
	</script>
	
	</body>
</html>
