console.log ("reading backbone_app_loader.js");

var app = app || { Models: {}, Collections: {}, Views: {} };


app.initialize = function(){
  console.log("running app.initialize (backbone_app.js)");

  //Setup jobs
  jobsCollection = new app.Collections.JobsCollection();

  var jobListView = new app.Views.JobListView({
    collection: jobsCollection,
    el: $('#jobs-table-body')
  });

  jobsCollection.fetch();
},

// Setup entries
entriesCollection = new app.Collections.EntriesCollection();

var entryListView = new app.Views.EntryListView({
  collection: entriesCollection,
  el: $('#entries-table-body')
});

  entriesCollection.fetch();

  app.initialize();
});
