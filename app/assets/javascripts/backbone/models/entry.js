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
  toggleVisibleToClientStatus: function(){
    console.log('running entry.toggleVisibleToClientStatus');
    if (this.attributes.visible_to_client_status == true){
      // this.save({visible_to_client_status: false}, {patch: true}); #FIX
      this.save({visible_to_client_status: false});
    }else{
      // this.save({visible_to_client_status: true}, {patch: true});
      this.save({visible_to_client_status: true});
    }
    
  },
  toggleVisibleToSubcontractorsStatus: function(){
    console.log('running entry.toggleVisibleToSubcontractorsStatus');
    if (this.attributes.visible_to_subcontractors_status == true){
      // this.save({visible_to_subcontractors_status: false}, {patch: true});
      this.save({visible_to_subcontractors_status: false});
    }else{
      // this.save({visible_to_subcontractors_status: true}, {patch: true});
      this.save({visible_to_subcontractors_status: true});
    }
  },
  toggleAttachmentsVisability: function(){
    // this does nothing, is picked up by the view
  }

});

// How to call this variable within the app name space
// var appointments = new app.Models.Appointment();