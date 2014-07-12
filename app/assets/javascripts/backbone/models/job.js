console.log("reading job.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Models.Job = Backbone.Model.extend({
  initialize: function(){
    console.log("running app.Models.Job.initialize");
  },
  defaults:{
    // title: "Enter Job Title",
    // client_id: "Enter client name",
    // description: 'Enter a brief job description'//,
    // start_date: '',// #FIX HOW TO POPULATE WITH CURRENT DATE,
    // end_date: // #FIX HOW TO POPULATE WITH CURRENT DATE
  }
});

// How to call this variable within the app name space
// var appointments = new app.Models.Appointment();