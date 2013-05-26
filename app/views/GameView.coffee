class window.GameView extends Backbone.View

  template: _.template '
    <h1>Backbone Solitaire</h1>
    <div class="piles-container"></div>
    <div class="build-piles-container"></div>
    <div class="game-board-container"></div>
  '

  initialize: ->
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$el.addClass('game-container')
    @$('.game-board-container').html new GameBoardView(collection: @model.get 'gameBoard').el
