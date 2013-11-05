Router.configure
  autoRender: false

Router.map ->
  this.route 'kita',
    path: '/'

  this.route 'group',
    path: '/group/:_id'

  this.route 'family',
    path: '/family/:_id'



Template.kita.groups = ->
  Groups.find({})