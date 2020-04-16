var info_message = {
  init : function() {
    $("[data-toggle='popover']").popover();
  }
};

document.addEventListener('DOMContentLoaded', info_message.init);
