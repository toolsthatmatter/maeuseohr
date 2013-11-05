@Groups = new Meteor.Collection("groups")

@Groups.allow
  insert: ->
    true

if Meteor.isServer
  Meteor.publish "groups", ->
    Groups.find({})

if Meteor.isClient
  Deps.autorun ->
    Meteor.subscribe "groups"        

