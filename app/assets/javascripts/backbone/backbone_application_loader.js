console.log ("reading backbone_app_loader.js");

var app = app || { Models: {}, Collections: {}, Views: {} };



// Global helper functions

var currentTime = function(){
  return moment().format('YY-MM-DD hh:mm');
}


var checkboxify = function(input){
  if(input === true){
    return 'checked'
  }
  return 'output from checkboxify'
}


var changeDisplayTo = function(modelName){
  displayName = modelName+'-display';
  collectionName = modelName+'Collection';
  // console.log(displayName)
  $('.display').hide();
  $('.'+displayName).show();
  $('.created-at').text(currentTime());
  $('.updated_at').text(currentTime());
  collectionName.fetch();
}








app.initialize = function(){
  console.log("running app.initialize (backbone_app.js)");
 

  //setup data actions
    // $('body').on('click', '[data-action]', function(event) {
    //     var action = $(this).data('action');
    //     // if (action in actions) {
    //         // actions[action].apply(this, arguments);
    //     // }
    //   console.log(action);
    //   console.log(event);
    //   // console.log(this);
    //   // console.log(self);
    //   debugger
    // });


  //helpers 
    

  // //Setup clock
  // kid = new app.Models.Kid({name:'Max'});
  // kidClockView = new app.Views.KidView({
  //   model: kid, 
  //   el: $('#kid-clock-column')
  // })
  // kidClockView.render()


  //Setup jobs
    jobCollection = new app.Collections.JobCollection();
    var jobListView = new app.Views.JobListView({
      collection: jobCollection,
      el: $('#job-table-body')
    });
    jobCollection.fetch();
    
  //Setup entrys
    // entryCollection = new app.Collections.EntryCollection();
    // var entryListView = new app.Views.EntryListView({
      // collection: entryCollection,
      // el: $('#entry-table-body')
    // });
    // entryCollection.fetch();
    //set event listener for jobs-new-btn

    


  // runs when any button is clicked
    $('button').on('click', function() {
      console.log('button clicked')
    });

  // TABS
    // runs when any tab is clicked. slideToggles its sibling slider
      $('.tab').on('click', function(event) {
        console.log('a .tab was clicked');
        event.preventDefault();
        $(this).closest('.container').children('.slider')
          .slideToggle();
      });

    // $('.new-tab').on('click', function(e) {
    //   console.log('a .new-tab was clicked');
    //   $(this).closest('.container').children('.slider').slideToggle();
    // });


  // FILTER BUTTONS
    // $('#filters').on('click', '.buttton-name-with-same-name-as-datapoint', function() {
    //   $('.job').addClass('.hidden').
    //   $('.DATAPOINT').removeClass('.hidden').
    // });





}




$(function(){
  console.log("DOM ready from backbone_app_loader.js");
  
  // var oldSync = Backbone.sync;
  // Backbone.sync = function(method, model, options){
  //   options.beforeSend = function(xhr){
  //   xhr.setRequestHeader('X-CSRFToken', CSRF_TOKEN);
  //   };
  //   return oldSync(method, model, options);
  // };

  app.initialize();
  // testView = new app.Views.ChildcareView({model: new app.Models.Childcare({name: 'hello there'})})
});