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
<title>júlia brümmer</title>
<script type="text/javascript">
	$(document).ready(function() {
		var pastaProjeto = "../../images/guias/projetos/Lumen";
		var numFotos = 5;
		prepararProjeto(pastaProjeto, numFotos);
	});
</script>
<script type="text/javascript" src="../../js/innerProject.js"></script>
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
				<span class="diepass subtitle">analog photographer / conceptual artwork</span>
			</div>
			
			<div class="detalhe-projetos">
				<br />

				LÚMEN (2015).<br /><br /> 
				
				a photograph series for a t-shirt collection inspired
				by the animals who live in the deep seas. "lumen", in honor of the
				effects that the surface and the depths lights cause in the water.
				all the t-shirt prints were made from collages of fish-rays and
				water photograms in ilford paper.<br /> <br /> 
				
				cameras: polaroid supercolor 635CL / yashica 108 multiprogram.<br /><br />
				
				films: impossible project color instant film / ilford hp5.<br /><br />
				
				location: arpoador, rj, br.

				<div class="projetobox">
				</div>
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
	<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		  ga('create', 'UA-75125329-1', 'auto');
		  ga('send', 'pageview');
			
	</script>	
</body>
</html>