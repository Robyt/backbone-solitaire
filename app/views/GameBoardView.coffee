class window.GameBoardView extends Backbone.View

  className: 'game-board'

  template: _.template ''

  initialize: ->
    # @collection.on 'add remove change', => @render()
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @collection
    @$el.append @collection.map (column) ->
      new ColumnView(collection: column).$el
