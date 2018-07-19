$(document).on('turbolinks:load', function() {
  
 //  var num_clicks = 0;

 //  $("#menuHamburger").click(function() {
 //    $(this).toggleClass("is-active");
 //    if (num_clicks % 2 == 0) {
 //      $(this).animate({
 //        marginLeft: '20%'
 //      });
 //    } else {
 //      $(this).animate({
 //        marginLeft: '0'
 //      });
 //    }
 //    $("#sideBar").toggleClass("minimized");  
 //    ++num_clicks;
 //  });

  $("#menuHamburger").click(function() {
    $(this).toggleClass("is-active");
    $(this).css('visibility', 'hidden');
    $("#sideHamburger").toggleClass("is-active");
    $("#sideBar").toggleClass("minimized");
  });

  $("#sideHamburger").click(function() {  
    $(this).toggleClass("is-active");
    $("#menuHamburger").css('visibility', 'visible');
    $("#menuHamburger").toggleClass("is-active");
    $("#sideBar").toggleClass("minimized");
  });

});
