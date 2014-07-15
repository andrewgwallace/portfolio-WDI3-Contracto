console.log("reading job_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.JobView = Backbone.View.extend({

  initialize: function(){
    // console.log("running app.Views.JobView.initialize");
    this.listenTo( this.model, "change", this.render );
    this.listenTo( this.model, "destroy", this.remove );
  },


  // RENDERING

    getId: function(){
      // console.log("running app.Views.JobView.getID");
      return this.model.id;
    },
    showJobTemplateHolder: function(){
      // console.log("running app.Views.JobView.showJobTemplateHolder");
      return _.template( $('#job-show-template').html() );
    },

    render: function(){
      // console.log("running app.Views.JobView.render");
      this.$el.empty();
      this.$el.html(this.showJobTemplateHolder()( this.model.attributes ));
      return this;
    },
    tagName: "tr",
    className: 'job',

    // data-id=",//+this.getId(),

  // ????
    // hoverOn: function(){
    //   this.$el.addClass('highlighted');
    //   return this;
    // },
    // hoverOff: function(){
    //   this.$el.removeClass('highlighted');
    //   return this;
    // },


  // DATA ACTIONS
    events: {
      'click [data-action="destroy"]' : 'destroy',
      'click [data-action="show"]' : 'show',
      'click [data-action="toggleClosedStatus"]' : 'toggleClosedStatus',
      'click [data-action="togglePausedStatus"]' : 'togglePausedStatus',

      // 'click class= HasDataAction'

      // 'mouseenter' : 'hoverOn',
      // 'mouseleave' : 'hoverOff'
    },

    destroy: function(e){
      console.log("running destroy job")
      // e.preventDefault();
      this.model.destroy();
    },
    toggleClosedStatus: function(event){
      // console.log("running jobview.toggleClosed");
      this.model.toggleClosedStatus();
    },
    togglePausedStatus: function(event){
      // console.log("running jobview.togglePaused");
      this.model.togglePausedStatus();
    },
    // show: function(e){
    //   console.log("running show job");
    //   console.log (this.model.attributes.id);
    //   // this should add class 'hidden' to all item of 'display'
    //   // THEN this should unhide class "entries"
    // }

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
