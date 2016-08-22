document.addEventListener('turbolinks:load', function() {
  return $(document).ready(function() {
    return $('img').on('error', function() {
      $(this).hide();
    });
  });
});
