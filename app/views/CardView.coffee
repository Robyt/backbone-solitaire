class window.CardView extends Backbone.View

  className: 'card'

  tagName: 'li'

  template: _.template '<p><%= rankName %> of <%= suitName %></p>'

  initialize: ->
    @model.on 'change', => @render
    @render()

  render: ->
    @$el.children().detach().end().html
    @$el.html @template @model.attributes[0].attributes
    @$el.addClass 'covered'
