// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require moment

(function() {
  'use strict';

  $(document).ready(function() {
    $('.timestring').each(function() {
      this.textContent = moment(this.textContent).format('lll');
    });

    $('.bark-form').submit(function() {
      var barkMoment = moment($('#raw_barked_at').val());

      if (barkMoment.isValid()) {
        $('#bark_barked_at').val(barkMoment.toISOString());
      }
    });
  });
})();
