console.log('reading navigation_init');

$(function(){
    console.log('DOM ready from navigation_init');


    $( "#dataTable tbody tr" ).on( "click", function() {
          alert( $( this ).text() );
        });

    $('#header-jobs-link').on("click", function(){
      console.log('jobs link');
        $('.focus-area').hide();
        $('#jobs-focus').show();
    });

    $('#header-customers-link').on("click", function(){
      console.log('customers link');
        $('.focus-area').hide();
        $('#customers-focus').show();
    });

    $('#header-sub-contractors-link').on("click", function(){
      console.log('subcontractors link');
        $('.focus-area').hide();
        $('#subcontractors-focus').show();
    });

    $('#header-employees-link').on("click", function(){
      console.log('employees link');
        $('.focus-area').hide();
        $('#employees-focus').show();
    });
});
