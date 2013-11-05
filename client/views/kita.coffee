createKita = ->
  $name = $('#name')
  Groups.insert
    name: $name.val()
  $name.val("")
        
Template.kita.groups = ->
  Groups.find({})

Template.kita.events
  'click .event-delete': ->
    Groups.remove this._id

  'click #event-addNew': ->
    createKita()

  'keypress #name': (evt) ->
    if evt.which == 13
      createKita()
