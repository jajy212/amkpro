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


	</head>
	<body>	
	<%@ include file="include/header.jsp"%>
	<!-- END .header -->
	<div class="fh5co-slider">
		<div class="owl-carousel owl-carousel-fullwidth">
		
			<c:forEach items="${list }" var="article" begin="0" end="4">
				<div class="item" style="background-image:url(${path}${article.image })">
		    	  <div class="fh5co-overlay"></div>
			    	<div class="container">
			    		<div class="row">
			    			<div class="col-md-8 col-md-offset-2">
				    			<div class="fh5co-owl-text-wrap">
							    	<div class="fh5co-owl-text text-center to-animate">
							    		<h1 class="fh5co-lead">
							    		<c:choose>
							    			<c:when test="${langType eq 'en'}">
							    				${article.titleEn }
							    			</c:when>
							    			<c:otherwise>
							    				${article.title }
							    			</c:otherwise>
							    		</c:choose>
							    		
							    		</h1>
										<h2 class="fh5co-sub-lead">
											<c:choose>
								    			<c:when test="${langType eq 'en'}">
								    				${article.descriptionEn }
								    			</c:when>
								    			<c:otherwise>
								    				${article.description }
								    			</c:otherwise>
								    		</c:choose>
										</h2>
							    	</div>
							    </div>
						    </div>
			    		</div>
			    	</div>
			    </div>
			</c:forEach>
			
		</div>
	</div>	
	<div id="fh5co-main">
		<!-- Features -->

		<div id="fh5co-features">
			<div class="container">
				<div class="row text-left">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="fh5co-section-lead"><spring:message code="index.infotitle"/></h2>
						<h3 class="fh5co-section-sub-lead"><spring:message code="index.info"/></h3>
					</div>
					<div class="fh5co-spacer fh5co-spacer-md"></div>
				</div>
				<div class="row">
					<div class="col-md-4 col-sm-4 fh5co-feature-border">
						<div class="fh5co-feature">
							<div class="fh5co-feature-icon to-animate">
								<i class="icon-box"></i>
							</div>
							<div class="fh5co-feature-text">
								<h3>超级净化手套箱</h3>
								<p>主要应用：核电、防御等，医药半导体和手套等</p>
								<p><a href="${path }/products?param=stx">更多>></a></p>
							</div>
						</div>
						<div class="fh5co-feature no-border">
							<div class="fh5co-feature-icon to-animate">
								<i class="icon-lab-flask"></i>
							</div>
							<div class="fh5co-feature-text">
								<h3>溶剂净化系统</h3>
								<p>桌面型溶剂净化系统，模块化设计，每组净化</p>
								<p><a href="${path }/products?param=rj">更多>></a></p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 fh5co-feature-border">
						<div class="fh5co-feature">
							<div class="fh5co-feature-icon to-animate">
								<i class="icon-funnel"></i>
							</div>
							<div class="fh5co-feature-text">
								<h3>气体净化系统</h3>
								<p>主要应用：核电、防御等，医药半导体和手套等</p>
								<p><a href="${path }/products?param=qt">更多>></a></p>
							</div>
						</div>
						<div class="fh5co-feature no-border">
							<div class="fh5co-feature-icon to-animate">
								<i class="icon-direction"></i>
							</div>
							<div class="fh5co-feature-text">
								<h3>高纯供气系统</h3>
								<p>桌面型溶剂净化系统，模块化设计，每组净化</p>
								<p><a href="${path }/products?param=gq">更多>></a></p>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="fh5co-feature">
							<div class="fh5co-feature-icon to-animate">
								<i class="icon-yelp"></i>
							</div>
							<div class="fh5co-feature-text">
								<h3>真空镀膜系统</h3>
								<p>应用于实验室研究级别，晶片或粉末腔体可供选择</p>
								<p><a href="${path }/products?param=zk">更多>></a></p>
							</div>
						</div>
						<div class="fh5co-feature no-border">
							<div class="fh5co-feature-icon to-animate">
								<i class="icon-thermometer"></i>
							</div>
							<div class="fh5co-feature-text">
								<h3>高温炉</h3>
								<p>应用于实验室研究级别，晶片或粉末腔体可供选择应用于实验室研究级别</p>
								<p><a href="${path }/products?param=gwl">更多>></a></p>
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Features -->

		<!-- custom image -->
		<div id="fh5co-clients">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-client-logo text-center"><img src="${path}/static/img/client_1.png" alt="" class="img-responsive"></div>
					<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-client-logo text-center"><img src="${path}/static/img/client_2.png" alt="" class="img-responsive"></div>
					<div class="visible-sm-block visible-xs-block clearfix"></div>
					<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-client-logo text-center"><img src="${path}/static/img/client_3.png" alt="" class="img-responsive"></div>
					<div class="col-md-3 col-sm-6 col-xs-6 col-xxs-12 fh5co-client-logo text-center"><img src="${path}/static/img/client_4.png" alt="" class="img-responsive"></div>
				</div>
			</div>
		</div>

		<div class="fh5co-bg-section" style="background-image: url(${path}/static/img/slide_2.jpg); background-attachment: fixed;">
			<div class="fh5co-overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<div class="fh5co-hero-wrap">
							<div class="fh5co-hero-intro text-center">
								<h1 class="fh5co-lead"><span class="quo">&ldquo;</span>艾明坷科技是您最可信赖的合作伙伴 <span class="quo">&rdquo;</span></h1>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

<%@ include file="include/footer.jsp"%>	
	
	</body>
</html>
