import Ember from 'ember';

export default Ember.Controller.extend({
  name: null,
    actions: {
      addNewSpeaker: function () {
        let speaker = this.getProperties('name');
        this.store.createRecord('speaker', speaker).save();
         }
       }
});
