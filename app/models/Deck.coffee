class window.Deck extends Backbone.Collection

  model: Card

  initialize: ->
    @add _(_.range(1, 53)).shuffle().map (card) ->
      new Card
        rank: card % 13
        suit: Math.floor((card / 13) % 4)

  dealGameBoard: ->
    columnStorage = []
    i = 0
    while i < 7
      columnStorage[i] = []
      j = 0
      while j <= i
        columnStorage[i].push(@pop())
        j++
      console.log(columnStorage[i])
      i++
      new GameBoard columnStorage, @

  dealPile: ->
    #TODO
