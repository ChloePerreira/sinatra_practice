
$(document).ready(function(){
  $(".github img").hover(function() {
    $(this).attr("src","/github-128-green1.png");
      }, function() {
    $(this).attr("src","/github-128-black.png");
  });
  $(".linkedin img").hover(function() {
    $(this).attr("src","/linkedin-128-green1.png");
      }, function() {
    $(this).attr("src","/linkedin-128-black.png");
  });
  $(".twitter img").hover(function() {
    $(this).attr("src","/twitter-128-green.png");
      }, function() {
    $(this).attr("src","/twitter-128-black.png");
  });

  var divs = $('div[id^="quote-"]').hide(),
    i = 0;
  (function cycle() { 
    divs.eq(i).fadeIn(400)
              .delay(7000)
              .fadeOut(400, cycle);
    i = ++i % divs.length;
  })();
});    
