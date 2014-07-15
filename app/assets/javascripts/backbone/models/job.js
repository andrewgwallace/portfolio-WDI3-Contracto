console.log("reading job.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Models.Job = Backbone.Model.extend({
  initialize: function(){
    console.log("running app.Models.Job.initialize");
  },
  defaults:{
    // closedCheckbox: checkboxify()
    // title: "Enter Job Title",
    // client_id: "Enter client name",
    // description: 'Enter a brief job description'//,
    // start_date: '',// #FIX HOW TO POPULATE WITH CURRENT DATE,
    // end_date: // #FIX HOW TO POPULATE WITH CURRENT DATE
  },
  hello: function(){
    console.log('hello')
  },
  showJob: function(){
    console.log('running showJob');
    changeDisplayTo('entries');
    // $('.display').hide();
    // $('.entries-display').show();
  },

  toggleClosedStatus: function(){
    console.log('running job.toggleClosedStatus');
    if (this.attributes.closed_status == true){
      this.save({closed_status: false}, {patch: true});
    }else{
      this.save({closed_status: true}, {patch: true});
    }
    
  },
  togglePausedStatus: function(){
    console.log('running job.togglePausedStatus');
    // console.log('pre-save paused status is now'+ this.attributes.paused);
    if (this.attributes.paused_status == true){
      this.save({paused_status: false}, {patch: true});
    }else{
      this.save({paused_status: true}, {patch: true});
    }
    // console.log('post-save paused status is now'+ this.attributes.paused)
  },
 
});

// How to call this variable within the app name space
// var appointments = new app.Models.Appointment();