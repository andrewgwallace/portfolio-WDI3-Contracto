console.log("reading entry_list_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.EntryListView = Backbone.View.extend({
  initialize: function(){
    console.log("running app.Views.EntrysListView.initialize")
    this.listenTo(this.collection, 'add', this.render);
    this.listenTo(this.collection, 'change', this.render);
    // this.listenTo(this.collection, 'all', this.render);
  },
  render: function(){
    console.log("running app.Views.EntrysListView.render")
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(Entry){
      var EntryView = new app.Views.EntryView({model: Entry})
      self.$el.append( EntryView.render().el );
    });
    attachFileupload();
  }
})