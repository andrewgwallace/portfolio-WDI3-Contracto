$(function(){

    $('#header-customers-link').on('click', function(){
      console.log('customers link')
        hide('.focus-area');
        show('#customers-focus');
    });

    $('#header-sub-contractors-link').on('click', function(){
      console.log('subcontractors link')
        hide('.focus-area');
        show('#subcontractors-focus');
    });

    $('#header-employees-link').on('click', function(){
      console.log('employees link')
        hide('.focus-area');
        show('#employees-focus');
    });
});
