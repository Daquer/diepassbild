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
/*   	top: 0px; */
  	display: block;
}
.wunderFrauFont {
	font-family: 'Prestige Elite Std';
	text-align: center;
	font-size: 1.2em;
/* 	opacity: 0; */
	z-index: 2;
	position: relative;
	margin-top: 55px;
	margin-bottom: 30px;
/* 	display: table-cell; */
/* 	vertical-align: middle; */
}

.imageText {
	font-family: 'Prestige Elite Std';
	text-align: center;
	position: relative;
	display: table-cell;
  	vertical-align: middle;
/* 	top: 50%; */
/* 	left: 50%; */
/* 	height: 30%; */
/* 	width: 52%; */
/* 	margin: -15% 0 0 -25%; */

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
<!-- <script type="text/javascript" src="../js/jquery.mousewheel.js"></script> -->
<script>
// 	var lastScrollTop = 0;
// 	$(window).mousewheel(function(event) {
// 		if(event.deltaY > 0) {
// 			var lastOpacity = $('.wunderFrauFont').css('opacity');
			
// 			var targetOpacity = parseFloat(lastOpacity) - 0.125;
// 			var compleOpacity = 1 - targetOpacity;
// 				$('.wunderFrauFont').css({
// 					'opacity': targetOpacity
// 				});
				
				
// 				$('.mainImage').css({
// 					'opacity': compleOpacity
// 				});
// 				console.log();
// 		} else {
// 			var lastOpacity = $('.mainImage').css('opacity');
// 			var targetOpacity = parseFloat(lastOpacity) - 0.125;
// 			var compleOpacity = 1 - targetOpacity;
// 				$('.mainImage').css({
// 					'opacity': targetOpacity
// 				});
				
				
// 				$('.wunderFrauFont').css({
// 					'opacity': compleOpacity
// 				});
// 		}
		
		
// 		var wunderOp = $('.wunderFrauFont').css('opacity');
// 		var imgOp = $('.mainImage').css('opacity');
		
// 		if(imgOp == 0) {
// 			$('.mainImage').css("display", "none");
// 		} else if (imgOp > 0) {
// 			$('.mainImage').css("display", "table");
// 		}
		
// 		if(wunderOp == 0) {
// 			$('.wunderFrauFont').css("display", "none");
// 		} else if (imgOp > 0) {
// 			$('.wunderFrauFont').css("display", "table-cell");
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
<!-- 				<img src="../images/guias/wunder frau.jpg" style="width: 1000px;" /> -->
<!-- 				<div class="imageText"> -->
<!-- 					<span class="title">über mich</span><br /> -->
<!-- 					<span class="titleDescription">[der Akt des Beschreibens jemand]</span><br /><br /> -->
<!-- 					<span class="titleENPT">.about me / sobre mim.</span> -->
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
				<span class="diepass pageTitle">über mich</span>
			</div>
			- -
			<br />
			<div class="pageSubtitle">
<!-- 					<span class="diepass subtitle">für<div>eine</div> analog Welt</span> -->
				<span class="diepass pageSubtitle">about me / sobre mim</span>
			</div>
			
			<div class="wunderFrauFont">
				
				
				my name is júlia brümmer<br />
				i was born in 1995. joinville, sc, br.
				<br /><br />
				i work with analog photography and<br />
				experimental processing applied to<br />
				conceptual area
				<br /><br />
				you may also know me as the<br />
				"purple head thing".
				<br /><br />
				i believe in nightmares and i make<br />
				them real through the art.
				<br /><br /><br />
				welcome to my corner.
				<br /><br />
				- -
				
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