Template.group.currentGroup = ->
  Groups.findOne(Session.get('currentGroupId'))

Template.group.kids = ->
  group = Groups.findOne(Session.get('currentGroupId'))
  ids = group.peopleIds || []
  People.find({_id: {$in: ids}})

createPerson = ->
  #params = $('#adressForm').toJSON()
  #console.log params
  #return
  groupId = Session.get('currentGroupId')

  personId = People.insert
    firstname: $('#firstname').val()
    lastname: $('#lastname').val()
    #firstname: params.firstname
    #lastname: params.lastname
    #street: params.street
    #zipcode: params.zipcode
    #city: params.city
    #landline: params.landline
    #mobile: params.mobile
  $('#lastname').val("")
  Groups.update(groupId, { $addToSet: { peopleIds: personId } })

Template.create_person.events
  'click #event-addNew': ->
    console.log "Test"
    createPerson()

  'keypress #name': (evt) ->
    if evt.which == 13
      createPerson()


