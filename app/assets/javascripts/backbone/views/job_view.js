console.log("reading job_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.JobView = Backbone.View.extend({

  // Don't need a listener for create.  Will un-comment when we get to the delete and update

  tagName: "div class='job'",
  // showJobTemplate: _.template( $(
  //   "<tr><td>I am a job</td><td> <%= name %> </td></tr>"
  //   ).html() ),
  showJobTemplateHolder: function(){
    return _.template( $('#job-show-template').html() );
  },


  // template: function(){
    // return _.template( $('#job-template').html() );
  // },
  // editTemplate: _.template( $('#job-edit-template').html() ),
  events: {
    // 'click [data-action="destroy"]' : 'destroyJob',
    // 'click [data-action="edit"]' : 'renderEditForm',
    // 'mouseenter' : 'hoverOn',
    // 'mouseleave' : 'hoverOff'
  },
  initialize: function(){
    console.log("running app.Views.JobView.initialize");
    this.listenTo( this.model, "change", this.render );
    // this.listenTo( this.model, "destroy", this.remove );
  // },
  },

  render: function(){
    console.log("running app.Views.JobView.render");
    this.$el.empty();
    this.$el.html(this.showJobTemplateHolder()( this.model.attributes ));
    return this;
  }
  
  // destroyJob: function(e){
  //   e.preventDefault();
  //   this.model.destroy();
  // },
  
  // renderEditForm: function(){
  //   var self = this;
  //   this.$el.html(this.editTemplate( this.model.attributes ));

  //   //Event listeners for the form and cancel button
  //   this.$el.find('form').on("submit", function(e){
  //     e.preventDefault();
  //     var nameField = self.$el.find('input');
  //     var newName = nameField.val();
  //     // nameField.val('');
  //     // to test what 'this' is in the current scope
  //     // console.log(this);
  //     self.model.set('name', newName);
  //     self.model.save();
  //   })

  //   this.$el.find('button').on('click', function(e){
  //     e.preventDefault;
  //     self.render();
  //   })
  // },

  // hoverOn: function(){
  //   this.$el.css("color", "#2ecc71");

  //   return this;
  // },

  // hoverOff: function(){
  //   this.$el.css("color", "#34495e");

  //   return this;
  // }

});
