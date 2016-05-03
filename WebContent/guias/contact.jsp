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

textarea {
    resize: none;
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
	font-size: 1.2em;
/* 	opacity: 0; */
	z-index: 2;
/* 	position: relative; */
	position: absolute;
    width: 100%;
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

.contactInput {
/*   background-color: rgb(243,232,247); */
  border: 1;
  font-family: 'Prestige Elite Std';
  height: 50px;
  font-size: 1.1em;
  width: 985px;
  padding-left: 15px;
  padding-top: 15px;
  margin-top: 15px;
}

textarea.contactInput {
  height: 250px;
  margin-top: 70px;
  padding-top: 35px;
  padding-bottom: 20px;
}

.inputTitle {
	position: absolute;
	margin-top: 15px;
}

.message {
  margin-top: 70px;
  position: absolute;
  text-align: center;
  width: 100%;
}

.logo {
  width: 40px;
  margin: auto;	
  display: block;
  margin-top: 25px;
}

.send_email {
    font-family: 'Letter Gothic Std Medium';
    padding-top: 10px;
    padding-right: 29px;
    padding-bottom: 10px;
    padding-left: 29px;
    background-color: black;
    color: white;
    border: none;
    font-size: 14px;
    font-weight: bold;
    float: right;
    margin-top: 10px;
    margin-top: -38px;
    margin-right: -3px;
    position: relative;
    cursor: pointer;
}

.receiverEMail {
	text-align: center;
    width: 100%;
    position: absolute;
    margin-top: 20px;
    font-weight: bold;
    margin-bottom: 20px;
}

</style>
<script type="text/javascript" src="../js/jquery-1.11.2.js"></script>
<script type="text/javascript" src="../js/jquery.mousewheel.js"></script>
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
	
	function limitText(limitField, limitNum) {
		if (limitField.value.length > limitNum) {
			limitField.value = limitField.value.substring(0, limitNum);
		}
	}
	
	function sendEmail() {
		var email_from = $("#email_from").val();
		var subject	   = $("#subject").val();
		var text       = $("#text").val();
		var erro	   = false;
		
		
		if(email_from == "") {
			alert('E-mail cannot be empty.');
			return false;
		}
		
		if(subject == "") {
			var enviarAssuntoVazio = confirm("Subject empty. Want to send it anyway?");
			
			if(enviarAssuntoVazio == false) {
				return false;
			}
			
		}
		
		if(text == "") {
			var enviarTextoVazio = confirm("E-mail body empty. Want to send it anyway?");
			
			if(enviarTextoVazio == false) {
				return false;
			}
		}
		
		if (!erro) {
			var jqxhr = $.ajax('../SendEmail?email_from=' + email_from + "&subject=" + subject + "&text=" + text);
			
			jqxhr.done(function() {
				alert('E-mail sent.');
			});
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>júlia brümmer</title>
</head>
<body>
	<div class="wrapper">

		<!-- Content -->
		<div class="innerwrapper">
<!-- 			<div class="mainImage"> -->
<!-- 				<img src="../images/guias/contact.jpg" style="width: 1000px;" /> -->
<!-- 				<div class="imageText"> -->
<!-- 					<span class="title">in kontakt <br/>treten</span><br /> -->
<!-- 					<span class="titleDescription">[Verbindung von Menschen]</span><br /><br /> -->
<!-- 					<span class="titleENPT">.contact / contato.</span> -->
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
				<span class="diepass pageTitle">kontakt</span>
			</div>
			- -
			<br />
			<div class="pageSubtitle">
<!-- 					<span class="diepass subtitle">für<div>eine</div> analog Welt</span> -->
				<span class="diepass pageSubtitle">contact / contato</span>
			</div>
			<div class="wunderFrauFont">
<!-- 				- -<br /> -->
				<span class="inputTitle">.e-mail</span>
				<input type="text" class="contactInput" id="email_from"/>
				<span class="inputTitle">.about</span>
				<input type="text" class="contactInput" id="subject" />
				
				
	<!-- 			<input type="textarea" class="contactInput" /> -->
				<div class="message">.message.</div>
				<textarea class="contactInput" maxlength="924" onKeyUp="limitText(this, 924)" onKeyDown="limitText(this, 924)" id="text"></textarea>
<!-- 				<img class="logo" src="../images/logo.png" /> -->
				<span class="receiverEMail">e-mail: diepassbild@gmail.com</span>
				<input type="button" onclick="sendEmail()" value="SEND" class="send_email"/>
			</div>
			
			<br />
			
			
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