class window.ColumnView extends Backbone.View

  className: 'game-board-column'

  template: _.template '<p>Column</p>'

  initialize: ->
    # @collection.on 'add remove change', => @render()
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @collection
    @$el.append @collection.map (card) ->
      new CardView(model: card).$el
