console.log("reading jobs_collection.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

// console.log("url is "+document.URL.replace(/calendar/g, "")+'jobs/')

app.Collections.JobsCollection = Backbone.Collection.extend({
  model: app.Models.Job,
  url: 'company/jobs/'
});