@People = new Meteor.Collection("people")

@People.allow
  insert: ->
    true
  remove: ->
    true


