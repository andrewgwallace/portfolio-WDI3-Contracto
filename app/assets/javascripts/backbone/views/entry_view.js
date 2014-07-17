console.log("reading entry_view.js");

var app = app || { Models: {}, Collections: {}, Views: {} };

app.Views.EntryView = Backbone.View.extend({

  initialize: function(){
    // console.log("running app.Views.EntryView.initialize");
    this.listenTo( this.model, "change", this.render );
    this.listenTo( this.model, "destroy", this.remove );
  },


  // RENDERING
    
    getId: function(){
      // console.log("running app.Views.EntryView.getID");
      return this.model.id;
    },
    showEntryTemplateHolder: function(){
      // console.log("running app.Views.EntryView.showEntryTemplateHolder");
      return _.template( $('#entry-template').html() );
    },
    showAttachmentsTemplateHolder: function(){
      // console.log("running app.Views.EntryView.showEntryTemplateHolder");
      return _.template( $('#attachments-row-template').html() );
    },

    render: function(){
      // console.log("running app.Views.EntryView.render");
      this.$el.empty();
      this.$el.html(this.showEntryTemplateHolder()( this.model.attributes ));
      return this;
    },
    renderAttachmentsRow: function(){
      // console.log("running app.Views.EntryView.render");
      this.$el.empty();
      this.$el.html(this.showEntryTemplateHolder()( this.model.attributes ));
      // debugger
      return this;
    },
    tagName: "tr",
    className: 'entry',
    

  // EVENTS AND DATA ACTIONS
    events: {
      'click [data-action]' : 'processDataAction',
      // 'click [data-action]' : 'processDataActionView',
    },

    processDataAction: function(event){
      console.log('running processDataAction');
      // console.log('action is ' +event.target.dataset.action);
      // console.log(event.target.dataset.action);
      // console.log(this.model.attributes.id);
      // this.model['hello']();
      this.model[event.currentTarget.dataset.action]();
      this[event.currentTarget.dataset.action]();
    },
    // processDataActionView: function(event){
    //   console.log('running processDataActionView');
    //   // console.log('action is ' +event.target.dataset.action);
    //   // console.log(event.target.dataset.action);
    //   // console.log(this.model.attributes.id);
    //   // this.model['hello']();
    //   this[event.currentTarget.dataset.action]();
    // },
    toggleAttachmentsVisability: function(){
      // renderAttachmentsRow: function(){
      console.log("running entryView.toggleAttachmentsVisability");


      // this.$el.empty();
      // this.$el.html(this.showEntryTemplateHolder()( this.model.attributes ));
      // return this;

      // attachmentsRow = function(){
      //   '<tr><td>HELLO</td><tr>'
      // }
      self = this;
      _.each( this.model.attributes.attachments, function(attachment){
        attachmentsRow = self.showAttachmentsTemplateHolder()( attachment );
        self.$el.after(attachmentsRow)
      });
    },
    


});
