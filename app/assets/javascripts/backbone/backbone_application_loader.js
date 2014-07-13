console.log ("reading backbone_app_loader.js");

var app = app || { Models: {}, Collections: {}, Views: {} };


app.initialize = function(){
  console.log("running app.initialize (backbone_app.js)");
  

  // //Setup clock
  // kid = new app.Models.Kid({name:'Max'});
  // kidClockView = new app.Views.KidView({
  //   model: kid, 
  //   el: $('#kid-clock-column')
  // })
  // kidClockView.render()


  //Setup jobs
    jobsCollection = new app.Collections.JobsCollection();
    var jobListView = new app.Views.JobListView({
      collection: jobsCollection,
      el: $('#jobs-table-body')
    });
    jobsCollection.fetch();




  // backboneGobalHoverOn = function(){
  //   this.$el.css("color", "#2ecc71");
  //   return this;
  // }
  // backboneGobalHoverOff = function(){
  //   this.$el.css("color", "#34495e");
  //   return this;
  // }

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