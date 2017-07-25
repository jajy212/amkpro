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
					<li>产品中心</li>
                    <li class="active">${menuName }</li>
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
		                    <a href="${path}/front/item?param=${article.id }">
		                    	<c:choose>
					    			<c:when test="${langType eq 'en'}">
					    				${article.titleEn }
					    			</c:when>
					    			<c:otherwise>
					    				${article.title }
					    			</c:otherwise>
					    		</c:choose>
		                    </a>
		                </h3>
		                <p>
			                <c:choose>
				    			<c:when test="${langType eq 'en'}">
				    				${article.descriptionEn }
				    			</c:when>
				    			<c:otherwise>
				    				${article.description }
				    			</c:otherwise>
				    		</c:choose>
		                </p>
		            </div>
	          </c:forEach>
	        </div>
        </c:forEach>
        <!-- /.row -->
        <hr>

    </div>
    <!-- /.container -->
	</div>

	<%@ include file="include/footer.jsp"%>	
	</body>
</html>
