<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="icon" type="image/png" sizes="16x16"
			href="../favicon-16x16.png">
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
				max-width: 975px !important;
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
			
			.projeto {
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
			
			.imageText>.title {
				font-size: 6.0em;
			}
			
			.imageText>.titleDescription {
				font-size: 1.7em;
				position: relative;
				bottom: 10px;
			}
			
			.imageText>.titleENPT {
				font-size: 1.7em;
			}
			
			#black_overlay {
				display: none;
				position: absolute;
				top: 0%;
				left: 0%;
				width: 100%;
				height: 100%;
				background-color: black;
				z-index: 1001;
				-moz-opacity: 0.8;
				opacity: .80;
				filter: alpha(opacity = 80);
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
				z-index: 1002;
				overflow: auto;
			}
		</style>
		<script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
		<script type="text/javascript" src="../js/jquery.mousewheel.js"></script>
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
		<script>
			function trim11(str) {
				str = str.replace(/^\s+/, '');
				for (var i = str.length - 1; i >= 0; i--) {
					if (/\S/.test(str.charAt(i))) {
						str = str.substring(0, i + 1);
						break;
					}
				}
				return str;
			}
		
			function abreProjeto(pasta) {
				$("#pastaProjeto").val(pasta);
		
				$("#formProjeto").submit();
			}
		
			$(document)
					.ready(
							function() {
		
								var projList = "";
		
								jQuery.ajax({
									url : '/RetrieveProjectList',
									success : function(result) {
										projList = result;
									},
									async : false
								});
		
								if (projList != undefined) {
		
									var projectsDecoded = decodeURI(projList);
		
									projectsDecoded = projectsDecoded.replace(/\+/g, " ");
		
									projectsDecoded = projectsDecoded.replace(/\%3B/g, ";");
		
									projList = projectsDecoded.split(";");
		
									for (var i = 0; i < projList.length; i++) {
		
										var proj = projList[i].substring(projList[i].indexOf("~") + 1);
		
										$("<div class='projeto'><img class='projetoimg' src='/uploads/"+ trim11(projList[i]) + "/capa.jpg' onclick='abreProjeto(\"" + trim11(projList[i].toUpperCase()) + "\")'/></p><input type='text' value='" + proj.toUpperCase() + "' /></div>").appendTo(".projetobox");
		
									}
								}
								
								$(".projeto").sortable();
								
							});
		</script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>D I E P A S S B I L D</title>
		<link rel="stylesheet" href="/css/diepassbild.css" />
		<link rel="stylesheet" href="/AdminSection/css/AdminSection.css" />
		<link rel="icon" type="/image/png" sizes="16x16" href="/favicon-16x16.png">
		<script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
		<script type="text/javascript" src="/plugins/cycle/jquery.cycle.lite.js"></script>
		<script type="text/javascript" src="/js/diepassbild-home.js"></script>
	</head>
	<body>
		<!-- Wrapper -->
		<div class="wrapper">
	
			<!-- Content -->
			<div class="innerwrapper">
				<div class="title" onclick="window.location = '../menu.jsp'">
					<span class="diepass title">júlia brümmer | Administrator</span>
				</div>
				<br /> - - <br />
				<div class="subtitle admin">
					<span class="diepass subtitle">analog photographer /
						conceptual artwork</span>
					<p class="diepass subtitle">Gerenciar projetos</p>
				</div>
				<div class="projetos">
					<div class="projetobox">
						<br /> <br /> <br />
					</div>
				</div>
			</div>
		</div>
		<form id="formProjeto" style="display: none;" action="/Projeto"
			method="post">
			<input type="text" id="pastaProjeto" name="path" />
		</form>
	</body>
</html>