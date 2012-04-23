window.Timeline =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    new Timeline.Routers.Entries()
    Backbone.history.start()
	
$(document).ready ->
  Timeline.init()
