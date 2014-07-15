console.log("reading job.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Models.Job = Backbone.Model.extend({
  initialize: function(){
    console.log("running app.Models.Job.initialize");
  },
  defaults:{
  },


  //DataAction Responders

    toggleClosedStatus: function(){
      console.log('running job.toggleClosedStatus');
      if (this.attributes.closed_status == true){
        this.save({closed_status: false}, {patch: true});
      }else{
        this.save({closed_status: true}, {patch: true});
      }
    },

    togglePausedStatus: function(){
      console.log('running job.togglePausedStatus');
      // console.log('pre-save paused status is now'+ this.attributes.paused);
      if (this.attributes.paused_status == true){
        this.save({paused_status: false}, {patch: true});
      }else{
        this.save({paused_status: true}, {patch: true});
      }
      // console.log('post-save paused status is now'+ this.attributes.paused)
    },


  //Navigation #FIX This should really be moved to a controller
    hello: function(){
      console.log('hello')
    },
    showJob: function(){
      console.log('running showJob');
      changeFocusTo('entries', this);
    }, 
});
