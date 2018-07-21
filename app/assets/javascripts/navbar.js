$(document).on('turbolinks:load', function() {
 
  var is_toggled = false;

  $(window).resize(function() {
    if ($(window).width() < 992 && is_toggled) { // if window is resized and sidebar is showed
      $("#sideBar").css("width", "100%");
    } else if ($(window).width() > 992 && is_toggled) { // if window is resized from mobile and sidebar is showed
      $("#sideBar").css("width", "25%");
    }
  });

  function showSidebar() {
    if ($(window).width() < 992) { 
      $("#sideBar").css("width", "100%");
    } else {
      $("#sideBar").css("width", "25%");
    }
  }

  function hideSidebar() {
    $("#sideBar").css("width", "0");
  }


  $("#menuHamburger").click(function() {
    is_toggled = true;
    $(this).toggleClass("is-active");
    $("#sideHamburger").toggleClass("is-active");
    showSidebar();
  });

  $("#sideHamburger").click(function() {
    is_toggled = false;
    $(this).toggleClass("is-active");
    $("#menuHamburger").toggleClass("is-active");
    hideSidebar();
  });

});
