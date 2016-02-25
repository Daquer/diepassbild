<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="ISO-8859-1">
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
					<span class="diepass title">j�lia br�mmer | Administrator</span>
				</div>
				<br />
				- -
				<br />
				<div class="subtitle admin" >
<!-- 					<span class="diepass subtitle">f�r<div>eine</div> analog Welt</span> -->
					<span class="diepass subtitle">analog photographer / conceptual artwork</span>
					<p class="diepass subtitle">Criar novo projeto</p>
				</div>
				<div>
					<form action="/NewProject" enctype="multipart/form-data" method="post">
					    <div>
					    	<span>Projeto:</span> 
					    	<input type="text" name="projeto"/>
					    </div>
					    <div>
					    	<span>Projeto:</span> 
					    	<input type="text" name="posicao" />
					    </div>
					    <div>
					    	<span>Fotos:</span>
					    	<input type="file" name="uploadFile" multiple/>
					    </div>
					    <div>
					    	<span>Capa:</span>
					    	<input type="file" name="capa" />
					    </div>
					    
					    <div>
					    	<span>Descri��o:</span>
					    	<textarea name="description" rows="20" cols="100"></textarea>
					    </div>
					    <input type="submit" />
					</form>
				</div>
			</div>
		</div>
	</body>
</html>