class window.Column extends Backbone.Collection

  model: Card

  initialize: (cardArray, @deck, columnID) ->