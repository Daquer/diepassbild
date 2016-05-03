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

/* .backImage { */
/* 	max-width: 100%; */
/* 	width: 100%; */
/* 	opacity: 0; */
/* 	z-index: 2; */
/* 	position: absolute; */
/* 	height: 667px; */
/* 	display: none; */
/* } */
/* .projetobox { */
/* 	width: 100%; */
/* 	height: 100%; */
/*     position: relative; */
    
/* } */

.projetobox {
    margin-top: 75px;
}
.projetobox>a {
	cursor: pointer;
}
.projeto_linha2{
/* 	width: 242px; */
    height: 170px;
    position: relative;
    margin: 15px 16px;
    display: inline-block;
	padding-top: 5px;
}
.linha_projetos {

    height: 175px;
    /* margin: 0 auto; */
    position: absolute;
}

.projeto_linha1{
	width: 242px;
    height: 170px;
    position: relative;
/*     margin: 15px 16px; */
	
    display: inline-block;
	padding-top: 5px;
}

.detalhe-projetos {
	font-family: 'Prestige Elite Std';
	font-size: 1.2em;
	z-index: 2;
	position: relative;
}
.projetoimg {
	width: 100%;
    height: 100%;
}
.projetoimg_linha2 {
/* 	width: 203px; */
/*     height: 300px; */
}
		#black_overlay{
			display: none;
			position: fixed;
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
/*  		#white_content {  */
 		#controlLooper {
 			display: none; 
			position: fixed;
			top: 50%;
			left: 50%;
/* 			width: 100%;    */
			height: 100%;
/* 			width: 50%; */
/* 			height: 50%; */
/* 			padding: 16px; */
/* 			border: 16px solid orange; */
/* 			background-color: white; */
			z-index:1002;
/* 			overflow: auto; */
			margin-left: -260px; /*metade da imagem*/
			margin-top: -350px; /*metade da imagem (414 - 64 para a primeira) - 64px*/
			margin-bottom: 64px;
		}
		
		.icon-left {
		background-image: url('../images/icons/left33.png');
		}
		
		.icon-right {
		background-image: url('../images/icons/left33.png');
		}
		
		.looper-control {

		    background-image: url(../images/icons/left33.png) !important;
		    background-repeat: no-repeat !important;
     		border: none !important; 
    		width: 24px !important;
    		height: 24px !important;
    		

		}
		.looper-control.left {
			left: 0 !important;
		}
		.looper-control.right {
 			right: 0 !important;
			transform: rotate(180deg);
		}
		
		.looper .looper-inner,.looper .item.active {
		    width: 1% !important;
    		display: table !important;
    	}
		
</style>
<script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
<link rel="stylesheet" href="../plugins/justified-gallery/justifiedGallery.min.css" />
<link rel="stylesheet" href="../plugins/looper-master/src/looper.css" />
<script src="../plugins/justified-gallery/jquery.justifiedGallery.min.js"></script>
<script src="../plugins/looper-master/src/looper.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>júlia brümmer</title>
<script type="text/javascript">

function centerImage(elem) {
	var marginLeft = (elem.naturalWidth/2) - elem.naturalWidth;
	var marginTop = (elem.naturalHeight/2) - elem.naturalHeight;
	
	$("#controlLooper").css("margin-left", marginLeft).css("margin-top", marginTop);
}

function chamarImagemReferente(elem) {
	document.getElementById('controlLooper').style.display='block';
	document.getElementById('black_overlay').style.display='block';
	$('.item.active').removeClass('active');
	var index = parseInt($(elem).index());
	
	var nthChild = index + 1
	
	centerImage($(".looper-inner>div:nth-child(" + nthChild + ")>img")[0]);
	
	$(".looper-inner>div:nth-child(" + nthChild + ")").addClass('active');
	
}

$(document).ready(function() {
	$(".projetobox").justifiedGallery({
			rowHeight : 250,
		    lastRow : 'nojustify',
		    margins : 25
	});
	
	
	$('.looper').on("show", function(e) {
		var index = parseInt($(e.relatedTarget).index());
		
		var nthChild = index + 1;
		
		centerImage($(".looper-inner>div:nth-child(" + nthChild + ")>img")[0]);
	});
	
			
	
	
});
</script>
</head>
<body>
	<div class="wrapper">

		<!-- Content -->
		<div class="innerwrapper">
			<div class="detalhe-projetos">
<!-- 				<img src="../images/guias/manifesto 02.jpg" style="width: 1000px;" /> -->
				- -<br />
				KALI (2015).
				<br /><br />
				inspired by the god of the destruction. the god of the men.
				
				camera: yashica 108 mp | lomo smena 7 | polaroid supercolor 635CL
				films: kodak colorplus 200 | lomography redscale | impossible project color instant film
				<br /><br />
				location: joinville, sc, br

				<div class="projetobox">
						<a style="cursor:pointer;" onclick="chamarImagemReferente(this)">
							<img src="../images/guias/projetos/Kali/1.jpg" />
						</a>
						<a style="cursor:pointer;" onclick="chamarImagemReferente(this)">
							<img  src="../images/guias/projetos/Kali/2.jpg" />
						</a>
						<a onclick="chamarImagemReferente(this)">
		           			<img src="../images/guias/projetos/Kali/3.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/4.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/5.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/6.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/7.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/8.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/9.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/10.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/11.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/12.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/13.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/14.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/15.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/16.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/17.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/18.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/19.jpg" alt="">
				        </a>
				        <a onclick="chamarImagemReferente(this)">
				            <img src="../images/guias/projetos/Kali/20.jpg" alt="">
				        </a>
<!-- 						<a href="#"> -->
<!-- 						<img  src="../images/guias/projetos/VICTORIAN.jpg" /> -->
					</a>
					
						
<!-- 						<a href="#"> -->
<!-- 						<img src="../images/guias/projetos/GURLZ.JPG" />   -->
<!-- 						</a> -->
						
<!-- 						<a href="#"> -->
<!-- 						<img class="projetoimg_linha2" src="../images/guias/projetos/ao_mar.jpg" /> -->
<!-- 						</a><a href="#"> -->
<!-- 						<img class="projetoimg_linha2" src="../images/guias/projetos/SCARS - OPENING TITLES.jpg" /> -->
<!-- 						</a> -->
<!-- 						<a href="#"> -->
<!-- 						<img class="projetoimg_linha2" src="../images/guias/projetos/.jpg" /> -->
<!-- 					</a> -->
<!-- 					<div class="linha_projetos"> -->
<!-- 						<div class="projeto_linha1"><img class="projetoimg" src="../images/guias/projetos/FEMALE PINK.jpg" /></div> -->
<!-- 						<div class="projeto_linha1"><img class="projetoimg" src="../images/guias/projetos/GODDESS.jpg" /></div> -->
<!-- 						<div class="projeto_linha1"><img class="projetoimg" src="../images/guias/projetos/VICTORIAN.jpg" /></div> -->
<!-- 					</div> -->
<!-- 					<div class="linha_projetos"> -->
<!-- 						<div class="projeto_linha2"><img class="projetoimg_linha2" src="../images/guias/projetos/BY THE GALAXY.jpg" /></div> -->
						
<!-- 						<div class="projeto_linha2"><img class="projetoimg_linha2" src="../images/guias/projetos/GURLZ.JPG" /> </div>  -->
						
						
						
<!-- 						<div class="projeto_linha2"><img class="projetoimg_linha2" src="../images/guias/projetos/SCARS - OPENING TITLES.jpg" /></div> -->
<!-- 						<div class="projeto_linha2"><img class="projetoimg_linha2" src="../images/guias/projetos/red.jpg" /></div> -->
<!-- 					</div> -->
				</div>
			</div>
		</div>

	</div>
	
<!-- 		<div id="white_content"><img src="../images/guias/projetos/FEMALE PINK.jpg" /> -->
<!-- 		<a href = "javascript:void(0)" onclick = "document.getElementById('white_content').style.display='none';document.getElementById('black_overlay').style.display='none'"> -->
<!-- 		</div> -->
		<div id="controlLooper" data-looper="go" data-interval="false" class="looper slider">
		    <div class="looper-inner">
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/1.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/2.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/3.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/4.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/5.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/6.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/7.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/8.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/9.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/10.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/11.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/12.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/13.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/14.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/15.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/16.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/17.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/18.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/19.jpg" alt="">
		        </div>
		        <div class="item">
		            <img src="../images/guias/projetos/Kali/20.jpg" alt="">
		        </div>
<!-- 		        <div class="item"> -->
<!-- 		            <img src="../images/guias/projetos/FEMALE PINK.jpg" alt=""> -->
<!-- 		        </div> -->
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