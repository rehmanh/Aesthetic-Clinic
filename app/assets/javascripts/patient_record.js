$(document).on('turbolinks:load', function() {
  $('.table > tbody > tr').click(function() { // allow for redirect to patient record when clicked
    var id = $(this).text().trim().charAt(0);
    var url = window.location.href + "/" + id;
    window.location.href = url;
  }); 
});
