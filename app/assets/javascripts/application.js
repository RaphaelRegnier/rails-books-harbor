//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require jquery.dotdotdot
//= require bootstrap-datepicker
//= require_tree.
//= require underscore
//= require gmaps/google

$(document).ready(function() {
  $('.attachinary-input').attachinary();
  $(".book-description").dotdotdot(); // SHOULD MAKE IT WORK
  $.fn.datepicker.defaults.format = "dd/mm/yyyy";
});

