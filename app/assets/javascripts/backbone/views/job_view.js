console.log("reading job_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.JobView = Backbone.View.extend({

  initialize: function(){
    // console.log("running app.Views.JobView.initialize");
    this.listenTo( this.model, "change", this.render );
    this.listenTo( this.model, "destroy", this.remove );
  },


  // Helpers

    // getId: function(){
    //   return this.model.id;
    // },

    showJobTemplateHolder: function(){
      // console.log("running app.Views.JobView.showJobTemplateHolder");
      return _.template( $('#job-template').html() );
    },


  // RENDERING

    render: function(){
      console.log("running app.Views.JobView.render");
      this.$el.empty();
      this.$el.html(this.showJobTemplateHolder()( this.model.attributes ));
      return this;
    },
    tagName: "tr",
    className: 'job table_row',


  // EVENTS AND DATA ACTIONS

    events: {
      'click [data-action]' : 'processDataAction',
      'hover [data-action]' : 'testHover',
    },

    processDataAction: function(event){
      console.log('running processDataAction');

      // console.log('THIS is'+this);
      // console.log(this)
      // console.log('---------------------')
      
      // console.log('EVENT.target is'+event.target);
      // console.log(event.target);
      // console.log('---------------------')
      
      // console.log('EVENT.currentTarget is'+event.target);
      // console.log(event.currentTarget);
      // console.log('---------------------')
      
      console.log('action is ' +event.currentTarget.dataset.action);

      // console.log(event.target.dataset.action);
      // console.log(this.model.attributes.id);
      // this.model['hello']();
      this.model[event.currentTarget.dataset.action]();
    },

    testHover: function(event){
      console.log('running testhover')
      // this.addClass('test-blue')
      event.target.dataset.addClass('test-blue');
    }

});
