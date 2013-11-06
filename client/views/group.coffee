Template.group.currentGroup = ->
  Groups.find({_id: currentGroupId})
