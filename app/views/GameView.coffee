class window.GameView extends Backbone.View

  template: _.template '
    <div>Backbone Solitaire</div>
    <div class="piles-container"></div>
    <div class="build-piles-container"></div>
    <div class="game-board-container"></div>
  '

  initialize: ->
    @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$el.addClass('gameContainer')
    @$('.game-board-container').html new GameBoardView(collection: @model.get 'gameBoard').el
