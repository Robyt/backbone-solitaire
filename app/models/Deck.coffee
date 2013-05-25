class window.Deck extends Backbone.Collection

  model: Card

  initialize: ->
    @add _(_.range(1, 53)).shuffle().map (card) ->
      new Card
        rank: card % 13
        suit: Math.floor((card / 13) % 4)

  dealGameBoard: ->
    i = 0
    while i < 7
      column = new BoardColumn([@pop()], @, i)
      i++

  dealPile: ->


  # dealPlayer: -> hand = new Hand [ @pop(), @pop() ], @

  # dealDealer: -> new Hand [ @pop().flip(), @pop() ], @, true