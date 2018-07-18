$(document).on('turbolinks:load', function() {

  $("#menuHamburger").click(function() {
    $(this).toggleClass("is-active");
    $(this).animate({
      marginLeft: '25%'
    });
    $("#sideBar").toggleClass("minimized");  
  });

});
