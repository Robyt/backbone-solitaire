class window.PileView extends Backbone.View

  className: 'pile'

  template: _.template '<h2>Deck</h2>'

  initialize: ->
    # @collection.on 'add remove change', => @render()
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @collection
    @$el.append 