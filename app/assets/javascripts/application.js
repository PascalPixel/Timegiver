//= require cable
//= require jquery2
//= require jquery_ujs
//= require turbolinks
//= require tether
//= require bootstrap-sprockets
//= require bootbox
//= require bootbox_custom
//= require jquery_nested_form
//= require hide_broken_images
//= require chosen

document.addEventListener('turbolinks:load', function() {
  return $(document).ready(function() {
    $(".chosen-select").chosen();
  });
});
