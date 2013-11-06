createKita = ->
  $form = $('#newRecord')
  params = $form.toJSON()
  Groups.insert
    name: params.name
  $form.reset()
        
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
