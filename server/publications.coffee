Meteor.publish "groups", ->
  Groups.find({})

Meteor.publish "people", ->
  People.find({})
