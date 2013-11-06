Template.group.currentGroup = ->
  Groups.findOne(Session.get('currentGroupId'))
