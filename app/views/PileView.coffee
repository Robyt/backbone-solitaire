class window.PileView extends Backbone.View

  className: 'pile'

  template: _.template '
  <h2>Deck</h2>
  <div class="card covered deck-pile"></div>
  <div class="card discard-pile"></div>
  '

  initialize: ->
    # @collection.on 'add remove change', => @render()
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @collection.models
    console.log(@collection)
