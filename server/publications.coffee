Meteor.publish "groups", ->
  Groups.find({})
