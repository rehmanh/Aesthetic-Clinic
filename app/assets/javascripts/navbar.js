$(document).on('turbolinks:load', function() {
  $("#sideBar").hide();
  var numClicks = 0;
  
  $("#menuHamburger").click(function() {
    $(this).toggleClass("is-active");
    if(numClicks % 2 == 0) { 
      $("#sideBar").show({width: '100'});
    } else {
      $("#sideBar").hide();
    }
    numClicks++;
  });

});
