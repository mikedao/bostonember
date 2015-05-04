import Ember from 'ember';

export default Ember.Component.extend({
   actions: {
    delete: function () {
      this.get('speaker').destroyRecord();
    }
  }
});
