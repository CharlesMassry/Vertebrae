class Vertebrae.Views.RegionsIndex extends Backbone.View

  template: JST['regions/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(regions: @collection))
    this