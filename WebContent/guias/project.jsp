<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" type="image/png" sizes="16x16" href="../../favicon-16x16.png">
<link rel="stylesheet" href="../../css/innerProject.css" />
<script type="text/javascript" src="../../js/jquery-1.11.2.js"></script>
<link rel="stylesheet" href="../../plugins/justified-gallery/justifiedGallery.min.css" />
<link rel="stylesheet" href="../../plugins/looper-master/src/looper.css" />
<script src="../../plugins/justified-gallery/jquery.justifiedGallery.min.js"></script>
<script src="../../plugins/looper-master/src/looper.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>D I E P A S S B I L D</title>
<script type="text/javascript">
	$(document).ready(function() {
	    var photos = "<%=(String) request.getAttribute("fotos")%>";
		var photoList = photos.split(";");

		var pastaProjeto = "/uploads/" + "<%=(String) request.getAttribute("pastaProjeto")%>";
		var numFotos = photoList.length;
		prepararProjeto(pastaProjeto, numFotos);
	});
</script>
<script type="text/javascript" src="/js/innerProject.js"></script>
</head>
<body>
	<div class="wrapper">

		<!-- Content -->
		<div class="innerwrapper">
		
			<div class="title" onclick="window.location = '../../'">
				<span class="diepass title">júlia brümmer</span>
			</div>
			<br />
			- -
			<br />
			<div class="subtitle">
<!-- 					<span class="diepass subtitle">für<div>eine</div> analog Welt</span> -->
				<span class="diepass subtitle">analog photographer / conceptual artwork</span>
			</div>
			<div class="detalhe-projetos">
<!-- 				<img src="../images/guias/manifesto 02.jpg" style="width: 1000px;" /> -->
				<br />
				<%=(String) request.getAttribute("description") %>

				<div class="projetobox"></div>
			</div>
		</div>

	</div>
	<div id="controlLooper" data-looper="go" data-interval="false" class="looper slider">
	    <div class="looper-inner">
	    </div>
	    <nav>
	        <a class="looper-control left" data-looper="prev" href="#controlLooper">
	            <i class="icon-left"></i>
	        </a>
	        <a class="looper-control right" data-looper="next" href="#controlLooper">
	            <i class="icon-right"></i>
	        </a>
	    </nav>
	</div>
	<div id="black_overlay" onclick="document.getElementById('controlLooper').style.display='none';document.getElementById('black_overlay').style.display='none'"></div>
</body>
</html>