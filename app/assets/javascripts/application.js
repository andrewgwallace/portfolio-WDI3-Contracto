// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//


// RAILS
//= require jquery
//= require jquery_ujs
//= require turbolinks



// FRAMEWORKS
//= require vendor.js





// APPLICATION
  // CUSTOM INITIALIZERS
    //= require backbone_init
    //= require jqueryui_initializer
    //= require sidebar_initializer

  // HELPERS
    //= require attachments.fileupload
    


  // BACKBONE APP
    //= require_tree ./backbone/models/.
    //= require_tree ./backbone/collections/.
    //= require_tree ./backbone/views/.

// require_tree .
// require_self .
