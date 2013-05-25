class window.CardView extends Backbone.View

  className: 'card'

  tagName: 'li'

  template: _.template '<%= rankName %> of <%= suitName %>'

  initialize: ->
    @model.on 'change', => @render
    @render()

  render: ->
    # console.log(@model.attributes[0])
    @$el.children().detach().end().html
    @$el.html @template @model.attributes[0].attributes
    # @$el.addClass 'covered' unless @model.get 'revealed'
