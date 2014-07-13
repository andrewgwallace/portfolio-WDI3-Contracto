console.log("reading jobs_list_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.JobListView = Backbone.View.extend({
  initialize: function(){
    console.log("running app.Views.JobsListView.initialize")
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'change', this.render);
    // this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    console.log("running app.Views.JobsListView.render")
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(Job){
      var JobView = new app.Views.JobView({model: Job})
      self.$el.append( JobView.render().el );
    })
  }
})