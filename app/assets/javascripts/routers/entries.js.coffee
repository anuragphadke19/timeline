class Timeline.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new Timeline.Collections.Entries()
    @collection.fetch()
	
  index: ->
    view = new Timeline.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)
  
  show: (id) ->
    alert "entry #{id}"
