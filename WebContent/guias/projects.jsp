<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="icon" type="image/png" sizes="16x16" href="../../favicon-16x16.png">
<!-- <link rel="stylesheet" href="../css/diepassbild.css" /> -->
<style>
@font-face {
	font-family: 'Prestige Elite Std';
	src: url('../css/fonts/PrestigeEliteStd-Bd.otf') format("opentype");
}

@font-face {
	font-family: 'Letter Gothic Std Medium';
	src: url('../css/fonts/LetterGothicStd.otf') format("opentype");
}

.wrapper {
	margin: 0 auto;
}

.innerwrapper {
/* 	max-width: 60%; */
	margin: 0 auto;
	position: relative;
	top: 25px;
  	width: 1000px;
  	height: 667px;
  	display: table;
}

div.title {
	max-width: 100%;
	width: 100%;
	position: relative;
	height: 3em;
	max-height: 3em;
    margin-bottom: -10px;
    cursor: pointer;
}

.diepass.title {
	font-family: 'Letter Gothic Std Medium';
/* 	letter-spacing: 1.15em; */
/*    	letter-spacing: 77.094px; */
 	font-size: 3.05em;
	font-weight: bold;
}

div.subtitle {
	max-width: 100%;
	width: 100%;
	position: relative;
	height: 1.1em;
	max-height: 1.1em;
/* 	margin-top: 0.5em; */
/* 	transform: translateX(50px); */

}

.diepass.subtitle {
	font-family: 'Letter Gothic Std Medium';
/*  	letter-spacing: 2.678em; */
 	font-size: 1.05em;
	font-weight: bold;
	white-space: nowrap;
/* 	margin-left: 3.6em; */
/* 	letter-spacing: 18.6508px; */
}

div.pageTitle {
	max-width: 100%;
	width: 100%;
	position: relative;
	height: 3em;
	max-height: 3em;
    margin-bottom: -18px;
	margin-top: 70px;
}

.diepass.pageTitle {
	font-family: 'Letter Gothic Std Medium';
/* 	letter-spacing: 1.15em; */
/*    	letter-spacing: 77.094px; */
 	font-size: 1.6em;
	font-weight: bold;
}

div.pageSubtitle {
	max-width: 100%;
	width: 100%;
	position: relative;
	height: 1.1em;
	max-height: 1.1em;
/* 	margin-top: 0.5em; */
/* 	transform: translateX(50px); */

}

.diepass.pageSubtitle {
	font-family: 'Prestige Elite Std';
/*  	letter-spacing: 2.678em; */
 	font-size: 1.05em;
	font-weight: bold;
	white-space: nowrap;
/* 	margin-left: 3.6em; */
/* 	letter-spacing: 18.6508px; */
}

.mainImage {
	max-width: 100%;
	width: 100%;
	z-index: 3;
	height: 667px;
	display: table;
	position: absolute;
}

.mainImage>img {
	position: absolute;
  	display: block;
}

/* .backImage { */
/* 	max-width: 100%; */
/* 	width: 100%; */
/* 	opacity: 0; */
/* 	z-index: 2; */
/* 	position: absolute; */
/* 	height: 667px; */
/* 	display: none; */
/* } */

.projetos {
	font-family: 'Prestige Elite Std';
	font-size: 1.2em;
/* 	opacity: 0; */
	z-index: 2;
	position: relative;
}

.projeto{
	width: 305px;
    height: 305px;
    position: relative;
/*     margin: 0 10px; */
    margin-top: 0px;
    margin-left: 10px;
    margin-right: 10px;
    margin-bottom: 55px;
    display: inline-block;
	padding-top: 5px;
}

.projeto p {
    font-family: 'Letter Gothic Std Medium';
    text-align: left;
    font-size: 19px;
    letter-spacing: 4px;
    text-indent: 0;
    margin-top: 10px;
	font-weight: bold;
	position: absolute;
}
.projetobox {
	margin: 0 auto;
	margin-top: 20px;
    position: relative;
    width: 100%;
}

.projetoimg {
	width: 100%;
    height: 100%;
    cursor: pointer;
}
    
.imageText {
	font-family: 'Prestige Elite Std';
	text-align: center;
	position: relative;
	display: table-cell;
  	vertical-align: middle;

}
.imageText>.title{
	font-size: 6.0em;
}

.imageText>.titleDescription{
	font-size:1.7em;
	position: relative;
  	bottom: 10px;
}

.imageText>.titleENPT {
	font-size:1.7em;
}

		#black_overlay{
			display: none;
			position: absolute;
			top: 0%;
			left: 0%;
			width: 100%;
			height: 100%;
			background-color: black;
			z-index:1001;
			-moz-opacity: 0.8;
			opacity:.80;
			filter: alpha(opacity=80);
		}
		#white_content {
			display: none;
			position: absolute;
			top: 25%;
			left: 25%;
			width: 50%;
			height: 50%;
			padding: 16px;
			border: 16px solid orange;
			background-color: white;
			z-index:1002;
			overflow: auto;
		}
</style>
<script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="../js/jquery.mousewheel.js"></script>
<script>
// 	var flagHideScrollBar = true;
// 	var flagFadeEffect = true;
// 	$(document).ready(function() {
// 		$(".titleDescription").text($(".titleDescription").text().replace('e', String.fromCharCode(603)));
// 		$(".titleDescription").text($(".titleDescription").text().replace('e', String.fromCharCode(603)));
		
// 		if (flagHideScrollBar) {
// 			$('.projetos').css("display",'none');
// 			flagHideScrollBar = false;
// 		}
// 	});
// 	var lastScrollTop = 0;
	
// 	if (flagFadeEffect) {
// 		$(window).mousewheel(function(event) {
// 			$('.projetos').css("display", "table");
// 			if(event.deltaY > 0) {
// 	// 			var lastOpacity = $('.projetos').css('opacity');
				
// 	// 			var targetOpacity = parseFloat(lastOpacity) - 0.125;
// 	// 			var compleOpacity = 1 - targetOpacity;
// 	// 				$('.projetos').css({
// 	// 					'opacity': targetOpacity
// 	// 				});
					
					
// 	// 				$('.mainImage').css({
// 	// 					'opacity': compleOpacity
// 	// 				});
// 			} else {
// 				var lastOpacity = $('.mainImage').css('opacity');
// 				var targetOpacity = parseFloat(lastOpacity) - 0.125;
// 				var compleOpacity = 1 - targetOpacity;
// 					$('.mainImage').css({
// 						'opacity': targetOpacity
// 					});
					
					
// 					$('.projetos').css({
// 						'opacity': compleOpacity
// 					});
// 			}
			
			
// 			var wunderOp = $('.backImage').css('opacity');
// 			var imgOp = $('.mainImage').css('opacity');
			
// 			if(imgOp == 0) {
// 				$('.mainImage').css("display", "none");
// 				flagFadeEffect = false;
// 			} else if (imgOp > 0) {
// 	// 			$('.mainImage').css("display", "table");
// 				return false;
// 			}
			
// 			if(wunderOp == 0) {
// 	// 			$('.projetos').css("display", "none");
// 			} else if (wunderOp > 0) {
// 				$('.projetos').css("display", "table");
				
// 			}
// 		});
// 	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>júlia brümmer</title>
</head>
<body>
	<div class="wrapper">

		<!-- Content -->
		<div class="innerwrapper">
<!-- 			<div class="mainImage"> -->
<!-- 				<img src="../images/guias/projekt.jpg" style="width: 1000px;" /> -->
<!-- 				<div class="imageText"> -->
<!-- 					<span class="title">Pro.jekt(e)</span><br /> -->
<!-- 					<span class="titleDescription">[pro´jekte] sn, -e</span><br /><br /> -->
<!-- 					<span class="titleENPT">.projects / projetos.</span> -->
<!-- 				</div>	 -->
<!-- 			</div> -->
			<div class="title" onclick="window.location = '../'">
				<span class="diepass title">júlia brümmer</span>
			</div>
			<br />
			- -
			<br />
			<div class="subtitle">
<!-- 					<span class="diepass subtitle">für<div>eine</div> analog Welt</span> -->
				<span class="diepass subtitle">analog photographer / conceptual artwork</span>
			</div>
			<div class="pageTitle">
				<span class="diepass pageTitle">projekte</span>
			</div>
			- -
			<br />
			<div class="pageSubtitle">
<!-- 					<span class="diepass subtitle">für<div>eine</div> analog Welt</span> -->
				<span class="diepass pageSubtitle">projects / projetos</span>
			</div>
			<div class="projetos">
<!-- 				<img src="../images/guias/manifesto 02.jpg" style="width: 1000px;" /> -->
<!-- 				.photography / fotografia.<br /><br /> -->
<!-- 				- -<br /> -->

				<div class="projetobox">
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/mallen.jpg" 
					onclick = "window.location='projects/MALLEN.jsp'"/><p>MALLEN</p></div>
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/gurlz_capa.jpg" 
					onclick = "window.location='projects/GURLZ.jsp'"/><p>GURLZ</p></div>
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/POLAROAD.jpg" 
					onclick = "window.location='projects/POLAROAD.jsp'"/><p>POLAROAD</p></div>
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/pink_capa.jpg" 
					onclick = "window.location='projects/PINK.jsp'"/><p>FEMALE PINK</p></div>
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/kali_capa.jpg" 
					onclick = "window.location='projects/KALI.jsp'"/><p>KALI</p></div>
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/lumen_capa.jpg" 
					onclick = "window.location='projects/LUMEN.jsp'"/><p>LÚMEN</p></div>
					
<!-- 					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/capa_goddesses_of_the_nature.jpg"  -->
<!-- 					onclick = "window.location='projects/GODDESSES OF THE NATURE.jsp'"/><p>GODDESSES OF THE NATURE</p></div> -->
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/experimental_processing_capa.jpg" 
					onclick = "window.location='projects/EXPERIMENTAL PROCESSING.jsp'"/><p>EXPERIMENTAL PROCESSING</p></div>
					
					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/victorian_capa.jpg" 
					onclick = "window.location='projects/VICTORIAN.jsp'"/><p>VICTORIAN</p></div>
					
					
					<br />
					<br />
					<br />
<!-- 					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/banhadas.jpg" /><p>VICTORIAN</p></div> -->
<!-- 					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/FEMALE PINK.jpg" /><p>FEMALE PINK</p></div> -->
<!-- 					<div class="projeto"><img class="projetoimg" src="../images/guias/projetos/ao_mar.jpg" /><p>The Sea Love</p></div> -->
				</div>
			</div>
		</div>
	</div>
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