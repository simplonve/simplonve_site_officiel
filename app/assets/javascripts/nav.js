$(document).ready(function(){
  $("#nav-toggle").on("click", function() {
      $(this).toggleClass("active");
      if($(this).hasClass("active")){
         $(".layout_nav").css("margin-left", "0");
      }else{
         $(".layout_nav").css("margin-left", "-160px");
      }        
  });
});
