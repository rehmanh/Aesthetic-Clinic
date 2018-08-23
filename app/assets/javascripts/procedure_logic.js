$(document).on('turbolinks:load', function() {
  $("#toggle-button").click(function() {
    $(".extra-procedures").slideToggle(250);
    $(this).text(function(i, text) {
      return $.trim(text) === "View More" ? "View Less" : "View More";
    })
  });
});
