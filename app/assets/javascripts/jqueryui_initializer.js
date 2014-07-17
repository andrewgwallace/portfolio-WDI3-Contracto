console.log("reading jqueryUI_init.js");

$(function(){
console.log('DOM ready from jqueryUI_initializer.js')

  $('.ui-datepicker')
    $( ".datepicker" ).datepicker();

  $('ui-icon')
    $( ".job-closed-status" ).button();

  $('ui-menu')
    $( "#menu").menu();

});
