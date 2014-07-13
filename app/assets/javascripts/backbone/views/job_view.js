console.log("reading job_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.JobView = Backbone.View.extend({

  initialize: function(){
    console.log("running app.Views.JobView.initialize");
    this.listenTo( this.model, "change", this.render );
    this.listenTo( this.model, "destroy", this.remove );
  },


  // RENDERING
    tagName: "tr class='job'",
    showJobTemplateHolder: function(){
      return _.template( $('#job-show-template').html() );
    },

    render: function(){
      console.log("running app.Views.JobView.render");
      this.$el.empty();
      this.$el.html(this.showJobTemplateHolder()( this.model.attributes ));
      return this;
    },


  // ????
    hoverOn: function(){
      this.$el.css("color", "#2ecc71");
      return this;
    },
    hoverOff: function(){
      this.$el.css("color", "#34495e");
      return this;
    },


  // DATA ACTIONS
    events: {
      'click [data-action="destroy"]' : 'destroy',
      'click [data-action="show"]' : 'show',
      // 'click [data-action="edit"]' : 'renderEditForm',
      'mouseenter' : 'hoverOn',
      'mouseleave' : 'hoverOff'
    },

    destroy: function(e){
      console.log("running destory job")
      // e.preventDefault();
      this.model.destroy();
    },
    show: function(e){
      console.log("running show job");
      // e.preventDefault();

      console.log (this.model.attributes.id);
      // job-list-cons
    },
  
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



});
