class Vertebrae.Routers.Regions extends Backbone.Router
  routes:
    '': 'index'
    'regions/:id': 'show'

  initialize: ->
    @regions = new Vertebrae.Collections.Regions()
    @regions.fetch()

  index: ->
    view = new Vertebrae.Views.RegionsIndex(collection: @regions)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Region #{id}"