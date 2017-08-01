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
					<li class="active">技术支持</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
<div class="fh5co-spacer-sm"></div>
		<!-- Content Row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel-group" id="accordion">
                    <c:forEach items="${articleList}" var="article" varStatus="idx">
                    
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapse${idx.index }">
                                <c:choose>
					    			<c:when test="${langType eq 'en'}">
					    				${article.titleEn }
					    			</c:when>
					    			<c:otherwise>
					    				${article.title }
					    			</c:otherwise>
					    		</c:choose>
                                </a>
                            </h4>
                        </div>
                        <div id="collapse${idx.index }" class="panel-collapse collapse <c:if test="${idx.index == 0 }">in</c:if>">
                            <div class="panel-body">
								<span class="glyphicon glyphicon-ok text-primary"></span>
                               <c:choose>
				    			<c:when test="${langType eq 'en'}">
				    				${article.descriptionEn }
				    			</c:when>
				    			<c:otherwise>
				    				${article.description }
				    			</c:otherwise>
				    		</c:choose>
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
            		</c:forEach>
                </div>
                <!-- /.panel-group -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
	</div>
	

	<%@ include file="include/footer.jsp"%>	

	
	</body>
</html>
