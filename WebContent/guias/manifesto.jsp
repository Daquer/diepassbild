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
.backImage {
	max-width: 100%;
	width: 100%;
/* 	opacity: 0; */
	z-index: 2;
	position: absolute;
	height: 667px;
	margin-top: 20px;
/* 	display: none; */
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
  	bottom: 25px;
}

.imageText>.titleENPT {
	font-size:1.7em;
}
</style>
<script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="../js/jquery.mousewheel.js"></script>
<script>

// 	$(document).ready(function() {
// 		$(".titleDescription").text($(".titleDescription").text().replace('e', String.fromCharCode(603)));
// 	});
// 	var lastScrollTop = 0;
// 	$(window).mousewheel(function(event) {
// 		if(event.deltaY > 0) {
// 			var lastOpacity = $('.backImage').css('opacity');
			
// 			var targetOpacity = parseFloat(lastOpacity) - 0.125;
// 			var compleOpacity = 1 - targetOpacity;
// 				$('.backImage').css({
// 					'opacity': targetOpacity
// 				});
				
				
// 				$('.mainImage').css({
// 					'opacity': compleOpacity
// 				});
// 		} else {
// 			var lastOpacity = $('.mainImage').css('opacity');
// 			var targetOpacity = parseFloat(lastOpacity) - 0.125;
// 			var compleOpacity = 1 - targetOpacity;
// 				$('.mainImage').css({
// 					'opacity': targetOpacity
// 				});
				
				
// 				$('.backImage').css({
// 					'opacity': compleOpacity
// 				});
// 		}
		
		
// 		var wunderOp = $('.backImage').css('opacity');
// 		var imgOp = $('.mainImage').css('opacity');
		
// 		if(imgOp == 0) {
// 			$('.mainImage').css("display", "none");
// 		} else if (imgOp > 0) {
// 			$('.mainImage').css("display", "table");
// 		}
		
// 		if(wunderOp == 0) {
// 			$('.backImage').css("display", "none");
// 		} else if (wunderOp > 0) {
// 			$('.backImage').css("display", "table");
// 		}
// 	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>júlia brümmer</title>
</head>
<body>
	<div class="wrapper">

		<!-- Content -->
		<div class="innerwrapper">
<!-- 			<div class="mainImage"> -->
<!-- 				<img src="../images/guias/manifest.jpg" style="width: 1000px;" /> -->
<!-- 				<div class="imageText"> -->
<!-- 					<span class="title">Ma.ni.fest</span><br /> -->
<!-- 					<span class="titleDescription">[manifest] sn, -es</span><br /><br /> -->
<!-- 					<span class="titleENPT">.manifest / manifesto.</span> -->
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
				<span class="diepass pageTitle">manifest</span>
			</div>
			- -
			<br />
			<div class="pageSubtitle">
<!-- 					<span class="diepass subtitle">für<div>eine</div> analog Welt</span> -->
				<span class="diepass pageSubtitle">manifest / manifesto</span>
			</div>
			
			<div class="backImage">
				<img src="../images/guias/manifesto 02.jpg" style="width: 1000px;" />
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