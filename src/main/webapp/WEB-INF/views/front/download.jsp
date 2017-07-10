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
                <a href="${path}/front/downfile?param=file1.docx">艾明坷产品手册 （手套箱、溶剂净化系统等）</a>
				<p>发布日期：2017-01-01   下载次数：100</p>
            </div>
        </div>
		<hr>
		<div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="${path}/front/downfile?param=file2.docx">溶剂参数表</a>
				<p>发布日期：2017-01-01   下载次数：100</p>	
				<p></p>				
            </div>
        </div>
		<hr>
		<div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="${path}/front/downfile?param=file3.docx">有机实验室常用仪器与使用</a>
				<p>发布日期：2017-01-01   下载次数：100</p>		
				<p></p>
            </div>
        </div>
		<hr>
		<div class="row">
            <div class="col-md-push-3 col-md-6">
                <a href="${path}/front/downfile?param=file4.docx">EX-SPS5-800溶剂净化系统</a>
				
				<p>发布日期：2017-01-01   下载次数：100</p>
            </div>
        </div>
        <!-- /.row -->
        
 

    </div>
    <!-- /.container -->
	</div>
	<script type="text/javascript">
	
		function test(param){
			
			$.post("${path}/front/downfile?param="+param);
			
		}
	</script>

	<%@ include file="include/footer.jsp"%>	

	
	</body>
</html>
