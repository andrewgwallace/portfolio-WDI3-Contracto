console.log("reading backbone_init.js");

var app = app || { Models: {}, Collections: {}, Views: {} };



// BackBone App helper functions
  var currentTime = function(){
    return moment().format('YY-MM-DD hh:mm');
  }

  var checkboxify = function(input){
    if(input === true){
      return 'checked';
    }
    return 'output from checkboxify';
  }


  var changeFocusTo = function(modelName, model){
    console.log('running changeFocusTo to '+modelName+" with "+ model.attributes.id);


    // THIS NEEDS TO BE DRYED OUT AN MADE MODULAR
    
    //Start Fetching New Data
      // collectionName = modelName+'Collection';
      entryCollection.url = '/company/jobs/'+model.id+'/entries';
      console.log ("url is "+ entryCollection.url)
      entryCollection.fetch();

    //Helpers for new focus
      $('.created-at').text(currentTime());
      $('.updated_at').text(currentTime());

    //Fliping the Focus
      newFocusName = modelName+'-focus';
      console.log('newFocusName is '+newFocusName);

      $('.focus-area').hide();
      $('#'+newFocusName).show();

  }




// Backbone App Initalizer
app.initialize = function(){
  console.log("running app.initialize (backbone_app.js)");

  //Setup jobs
    jobCollection = new app.Collections.JobCollection();
    var jobListView = new app.Views.JobListView({
      collection: jobCollection,
      el: $('#jobs-index-table_body')
    });
    jobCollection.fetch();

    
  // Setup entrys
    entryCollection = new app.Collections.EntryCollection();
    // entryCollection.url = '/company/jobs/'+model.id+'/entries';
    var entryListView = new app.Views.EntryListView({
      collection: entryCollection,
      el: $('#entries-index-table_body')
    });
    // entryCollection.fetch();


  // TABS
    // runs when any tab is clicked. slideToggles its sibling slider
      $('.tab').on('click', function(event) {
        console.log('a .tab was clicked');
        event.preventDefault();
        $(this).closest('.container').children('.slider')
          .slideToggle();
      });


  // FILTER BUTTONS
    //Fileter 1
      // $('#filters').on('click', '.buttton-name-with-same-name-as-datapoint', function() {
      //   $('.job').addClass('.hidden').
      //   $('.DATAPOINT').removeClass('.hidden').
      // });
}




$(function(){
  console.log("DOM ready from backbone_app_loader.js");

  app.initialize();
});
