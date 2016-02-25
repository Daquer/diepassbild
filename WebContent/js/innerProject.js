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

	//permite a troca de fotos através de seta.
	$("#controlLooper").focus();
	
}

function prepararProjeto(pastaProjeto, numFotos) {
	 
	for(i = 1;i<=numFotos;i++) {
		$($(".projetobox")[0]).append("<a onclick='chamarImagemReferente(this)'><img src='" + pastaProjeto + "/" + i + ".jpg' /></a>");
		$("#controlLooper>.looper-inner").append("<div class='item'><img src='" + pastaProjeto + "/" + i + ".jpg' alt='' ></div>");
	}
}



$(document).ready(function() {
	
	//Formatação das fotos do projeto (pode acabar sendo específico)
	$(".projetobox").justifiedGallery({
		rowHeight : 250,
	    lastRow : 'nojustify',
	    margins : 25
	});
	
	var clickedRight = false;
	var clickedLeft = false;
	
	$('.looper>nav>.right').on("click", function() {
		clickedRight = true;
	});
	
	$('.looper>nav>.left').on("click", function() {
		clickedLeft = true;
	});
	
	//Possibilita a saída da visualização de fotos através do ESC
	$(window).on("keydown", function(event) {
		if($('#black_overlay').css("display") == "block") {
			
			//Esc
			if(event.keyCode == '27') {
				document.getElementById('controlLooper').style.display='none';document.getElementById('black_overlay').style.display='none'			
			}
		}		
	});
	
	//Exibição da imagem
	$('.looper').on("show", function(e) {
		var index = parseInt($(e.relatedTarget).index());
		
		var nthChild = index + 1;
		
		centerImage($(".looper-inner>div:nth-child(" + nthChild + ")>img")[0]);
	});
});