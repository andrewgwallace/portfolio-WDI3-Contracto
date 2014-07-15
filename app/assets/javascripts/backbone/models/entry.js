console.log("reading entry.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Models.Entry = Backbone.Model.extend({
  initialize: function(){
    console.log("running app.Models.Entry.initialize");
  },

  singularName:'entry',
  pluralName:'entries',

  defaults:{
    // closedCheckbox: checkboxify()
    // title: "Enter Entry Title",
    // client_id: "Enter client name",
    // description: 'Enter a brief entry description'//,
    // start_date: '',// #FIX HOW TO POPULATE WITH CURRENT DATE,
    // end_date: // #FIX HOW TO POPULATE WITH CURRENT DATE
  },
  toggleClosedStatus: function(){
    // console.log('running entry.toggleClosed');
    if (this.attributes.closed_status == true){
      this.save({closed_status: false}, {patch: true});
    }else{
      this.save({closed_status: true}, {patch: true});
    }
    
  },
  togglePausedStatus: function(){
    // console.log('running entry.togglePaused');
    // console.log('pre-save paused status is now'+ this.attributes.paused);
    if (this.attributes.paused_status == true){
      this.save({paused_status: false}, {patch: true});
    }else{
      this.save({paused_status: true}, {patch: true});
    }
    // console.log('post-save paused status is now'+ this.attributes.paused)
  }
});

// How to call this variable within the app name space
// var appointments = new app.Models.Appointment();