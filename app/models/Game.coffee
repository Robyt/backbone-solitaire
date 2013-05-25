class window.Game extends Backbone.Model

  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'gameBoard', deck.dealGameBoard()
    @set 'gamePile', deck.dealPile()
