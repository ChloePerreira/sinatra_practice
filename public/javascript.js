
$(document).ready(function(){
  $(".github img").hover(function() {
    $(this).attr("src","/github-128-green.png");
      }, function() {
    $(this).attr("src","/github-128-black.png");
  });
  $(".linkedin img").hover(function() {
    $(this).attr("src","/linkedin-128-green.png");
      }, function() {
    $(this).attr("src","/linkedin-128-black.png");
  });
  $(".twitter img").hover(function() {
    $(this).attr("src","/twitter-128-green.png");
      }, function() {
    $(this).attr("src","/twitter-128-black.png");
  });
});    
