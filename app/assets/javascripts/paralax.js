$(document).ready(function(){
  $('div[data-type="background"]').each(function(){
    var $background_object = $(this);
    $(window).scroll(function() {
      var yPos = -($(window).scrollTop() / $background_object.data('speed'));
      var coords = '50% '+ yPos + 'px';
      $background_object.css({ backgroundPosition: coords });
    });
  });
});