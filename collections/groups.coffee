@Groups = new Meteor.Collection("groups")

@Groups.allow
  insert: ->
    true
  remove: ->
    true


