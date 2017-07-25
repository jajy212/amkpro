<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!--[if lte IE 9]> 
	<style type="text/css">
	.ieTip{
			position: absolute;
		    left: 58px;
		    top: 37px;
		    z-index: 9999;
		    color: red;
		    font-size: larger;}
	</style>
<![endif]-->
 <style type="text/css">
	.lang{
			position: absolute;
		    right: 5px;
		    top: 0px;
		    z-index: 9999;}
	</style>
	<div class="ieTip">为获得更好的用户体验，请使用IE9以上版本或最新版谷歌浏览器。</div>
	<div class="lang"><a href="index?locale=zh_CN">中文</a>/<a href="index?locale=en">English</a></div>
	<header id="fh5co-header" role="banner">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header"> 
				<!-- Mobile Toggle Menu Button -->
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
				<a class="navbar-brand" href="index"><spring:message code="common.title"/></a>
				</div>
				<div id="fh5co-navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index?locale=${langType }"><span><spring:message code="header.firstpage"/><span class="border"></span></span></a></li>
										
				  	<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><spring:message code="header.prducts"/> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="products?param=stx"><spring:message code="header.stx"/></a>
                            </li>
                            <li>
                                <a href="products?param=rj"><spring:message code="header.rj"/></a>
                            </li>
                            <li>
                                <a href="products?param=qt"><spring:message code="header.qt"/></a>
                            </li>
							 <li>
                                <a href="products?param=gq"><spring:message code="header.gq"/></a>
                            </li>
                            <li>
                                <a href="products?param=zk"><spring:message code="header.zk"/></a>
                            </li>
                            <li>
                                <a href="products?param=gwl"><spring:message code="header.gwl"/></a>
                            </li>
                            <li>
                                <a href="products?param=he"><spring:message code="header.he"/></a>
                            </li>
                        </ul>
					</li>
						<li><a href="service"><span><spring:message code="header.service"/><span class="border"></span></span></a></li>
						<li><a href="faq"><span><spring:message code="header.faq"/><span class="border"></span></span></a></li>
						<li><a href="download"><span><spring:message code="header.download"/><span class="border"></span></span></a></li>
						<li><a href="news"><span><spring:message code="header.news"/><span class="border"></span></span></a></li>	
						<li><a href="about"><span><spring:message code="header.about"/><span class="border"></span></span></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- END .header -->