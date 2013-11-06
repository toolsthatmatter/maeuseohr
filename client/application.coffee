Router.configure
  autoRender: false

Router.map ->
  this.route 'kita',
    path: '/'

  this.route 'group',
    before: ->
      Session.set('currentGroupId', this.params._id)

    path: '/group/:_id'

  this.route 'family',
    path: '/family/:_id'


Deps.autorun ->
  Meteor.subscribe "groups"        
  Meteor.subscribe "people"        

