window.Vertebrae =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Vertebrae.Routers.Regions()
    Backbone.history.start()

$(document).ready ->
  Vertebrae.initialize()
