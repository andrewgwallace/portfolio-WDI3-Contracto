console.log("reading company.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Models.Company = Backbone.Model.extend({
    // console.log("running app.Models.Company.initialize");
  initialize: function(){
  },

  singularName: 'company',
  pluralName: 'companies',

  defaults:{
    // name: ''
  }
});

// How to call this variable within the app name space
// var kid = new app.Models.Kid();