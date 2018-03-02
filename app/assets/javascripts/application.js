// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

function flashAlert(message, klass, delay) {
  rand = Math.random().toString(36).substring(7);
  if ($('.flashAlertAlpha').length <= 0) {
    $("body").append('<div id="success-flash-' + rand + '" class="col-lg-6 col-xs-8 alert flashAlertAlpha alert-' + klass + ' center" style="position: fixed; top: 50px; z-index: 9999; left: 50%; transform: translateX(-50%);"><button class="close" data-dismiss="alert" name="button" type="button">x</button>' + message + '</div>')
    $("#success-flash-" + rand).delay(delay).fadeOut(function(){
      $("#success-flash-" + rand).remove();
    });
  } else {
    $(".flashAlertAlpha").removeClass('alert-success alert-info alert-warning alert-danger').addClass('alert-' + klass);
    $(".flashAlertAlpha").empty().html('<button class="close" data-dismiss="alert" name="button" type="button">x</button>' + message).show();
  }
}
