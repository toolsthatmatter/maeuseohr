Template.group.currentGroup = ->
  Groups.findOne(Session.get('currentGroupId'))

Template.group.kids = ->
  #[{name: "Karl"}, {name: "Peter"}]      
  People.find({groupId: Session.get('currentGroupId')})



createPerson = ->
  $name = $('#name')
  groupId = Session.get('currentGroupId')

  person = People.insert
    name: $name.val()
    groupId: groupId
  $name.val("")

Template.group.events
  'click #event-addNew': ->
    createPerson()

  'keypress #name': (evt) ->
    if evt.which == 13
      createPerson()
