BackboneSample.Views.Posts ||= {}

class BackboneSample.Views.Posts.EditView extends Backbone.View
  template : JST["backbone/templates/posts/edit"]

  events :
    "submit #edit-post" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    id = @model.attributes.id
    title = @model.attributes.title
    content = @model.attributes.content
    @model.attributes={id: id, title: title, content: content}

    @model.save(null,
      success : (post) =>
        @model = post
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
