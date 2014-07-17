console.log("reading jqueryui_init.js");

$(function(){
console.log('DOM ready from jquery_initializer.js')

  $('.ui-datepicker')
    $( ".datepicker" ).datepicker();

  $('ui-icon')
    $( ".job-closed-status" ).button();

  $(function() {
    $( ".entries-content-window" ).tabs();
  });

});
