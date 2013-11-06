Template.group.currentGroup = ->
  Groups.findOne(Session.get('currentGroupId'))

Template.group.kids = ->
  #[{name: "Karl"}, {name: "Peter"}]
  group = Groups.findOne(Session.get('currentGroupId'))
  ids = group.peopleIds || []
  People.find({_id: {$in: ids}})

createPerson = ->
  $name = $('#name')
  groupId = Session.get('currentGroupId')

  personId = People.insert
    name: $name.val()
  $name.val("")
  Groups.update(groupId, { $addToSet: { peopleIds: personId } })

Template.group.events
  'click #event-addNew': ->
    createPerson()

  'keypress #name': (evt) ->
    if evt.which == 13
      createPerson()
