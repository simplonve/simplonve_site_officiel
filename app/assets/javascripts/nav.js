$(document).ready(function(){
  $("#nav-toggle").on("click", function() {
      $(this).toggleClass("active");
      var mq = window.matchMedia('all and (max-width: 760px)');
      if($(this).hasClass("active")){
         $(".layout_nav").css("margin-left", "0");
      }else{
      	if (mq.matches){
        	$(".layout_nav").css("margin-left", "-90%");
      	}else{
        	$(".layout_nav").css("margin-left", "-160px");
      	}
      }        
  });
});
