var stdTitLetSpace;
var stdTitFontSize;

var stdSubLetSpace;
var stdSubLetSpace;

var stdImgWidth = "896px";
var stdImgHeight = "534px";

var titleResizeRate = 0.0995;
//var subtitleResizeRate = 0.0599;
var subtitleResizeRate = 0.0699;

var imgList = "";
var currentImage = 0;
var firstTime = true;

$(window).load(	function() {
		/*Setando valores de variaveis globais*/
		stdTitLetSpace = $(".diepass.title").css(
				"letter-spacing"); /*letter-spacing: 1.15em;*/
		stdTitFontSize = $(".diepass.title").css(
				"letter-spacing"); /*font-size: 3.05em;*/
	
		stdSubLetSpace = $(".diepass.subtitle").css(
				"letter-spacing"); /*letter-spacing: 1.85em*/
		stdSubFontSize = $(".diepass.subtitle")
				.css("font-size"); /*font-size: 1.05em*/
		
		/*Declarando funcoes e eventos*/
		function resizeTitles() {
//			var newTitleLetterSpacing = parseInt(stdTitLetSpace) - ((parseInt(stdImgWidth) - parseInt($(".mainArts").width())) * titleResizeRate);
//			var newSubTitleLetterSpacing = parseInt(stdSubLetSpace)	- ((parseInt(stdImgWidth) - parseInt($(".mainArts").width())) * subtitleResizeRate);
	
//			$(".diepass.title").css("letter-spacing", newTitleLetterSpacing.toString() + "px");
//			$(".diepass.subtitle").css("letter-spacing", newSubTitleLetterSpacing.toString() + "px");
			
			$(".mainImage").css("height", $(".mainArts").height() + "px");
		}
	
		function setFirstArt() {
//			jQuery.ajax({
//				url : 'RetrieveImgList',
//				success : function(result) {
//					imgList = result;
//				},
//				async : false
//			});
			var imgList = "1.jpg;2.jpg";
			if (imgList != undefined) {
				imgList = imgList.split(";");
				for (var i = 0; i < imgList.length; i++) {
					
					$("<img class='mainArts' src='images/main/" + imgList[i] + "'" + ( i>0 ? " style='display:none;'":"" )+ "/>").appendTo(".mainImage");
				}
			}
		}
	
		function startMainArtsFading() {
			$('.mainImage').cycle({
				fx : 'fade',
				timeout : 2
			});
		}
	
//		$(window)
//				.resize(
//						function() {
//							var newTitleLetterSpacing = parseInt(stdTitLetSpace)
//									- ((parseInt(stdImgWidth) - parseInt($(
//											".mainArts")
//											.width())) * 0.0995);
//							var newSubTitleLetterSpacing = parseInt(stdSubLetSpace)
//									- ((parseInt(stdImgWidth) - parseInt($(
//											".mainArts")
//											.width())) * 0.0559);
//	
//							$(".diepass.title").css(
//									"letter-spacing",
//									newTitleLetterSpacing
//											.toString()
//											+ "px");
//							$(".diepass.subtitle").css(
//									"letter-spacing",
//									newSubTitleLetterSpacing
//											.toString()
//											+ "px");
//							
//							$("div.footer").css(
//									"width", $(".mainArts").width() + "px");
//							
//							$("div.footer").css(
//									"max-width", $(".mainArts").width() + "px");
//							
//							console.log("Resizing HEIGHT "
//									+ $(window).height()
//									+ " WIDTH "
//									+ $(window).width()
//									+ " IMAGE SIZE "
//									+ $(".mainArts").height()
//									+ "x"
//									+ $(".mainArts").width());
//	
//						});
//	
		/*Processamento*/
		setFirstArt();
		$(".mainArts").load(function() {
			resizeTitles();
			startMainArtsFading();
			
			$("div.footer").css(
					"width", $(".mainArts").width() + "px");
			
			$("div.footer").css(
					"max-width", $(".mainArts").width() + "px");
		});
	
});