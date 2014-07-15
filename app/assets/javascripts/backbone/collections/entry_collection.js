console.log("reading entrys_collection.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

// console.log("url is "+document.URL.replace(/calendar/g, "")+'entrys/')

app.Collections.EntryCollection = Backbone.Collection.extend({
  model: app.Models.Entry,
  url: 'company/entrys/'
});