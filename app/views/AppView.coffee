class window.AppView extends Backbone.View

  template: _.template '<div>It Works!</div>'

  initialize: ->
    @newGame()

  newGame: ->
    #TODO