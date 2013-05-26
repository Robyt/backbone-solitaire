class window.BuildPilesView extends Backbone.View

  className: 'build-piles'

  template: _.template '
  <div class="card build-pile"></div>
  <div class="card build-pile"></div>
  <div class="card build-pile"></div>
  <div class="card build-pile"></div>
  '

  initialize: ->
    # @collection.on 'add remove change', => @render()
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @collection.models
    console.log(@collection)
