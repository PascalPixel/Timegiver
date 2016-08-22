document.addEventListener('turbolinks:load', function() {
  return $(document).ready(function() {
    var myCustomConfirmBox;
    myCustomConfirmBox = function(message, callback) {
      bootbox.confirm(message, function(confirmed) {
        if (confirmed) {
          callback();
        }
      });
    };
    $.rails.allowAction = function(element) {
      var answer, callback, message;
      message = element.data('confirm');
      answer = false;
      callback = void 0;
      if (!message) {
        return true;
      }
      if ($.rails.fire(element, 'confirm')) {
        myCustomConfirmBox(message, function() {
          var oldAllowAction;
          callback = $.rails.fire(element, 'confirm:complete', [answer]);
          if (callback) {
            oldAllowAction = $.rails.allowAction;
            $.rails.allowAction = function() {
              return true;
            };
            element.trigger('click');
            $.rails.allowAction = oldAllowAction;
          }
        });
      }
      return false;
    };
  });
});
