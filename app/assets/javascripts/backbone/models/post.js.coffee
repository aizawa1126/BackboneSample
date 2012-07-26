class BackboneSample.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class BackboneSample.Collections.PostsCollection extends Backbone.Collection
  model: BackboneSample.Models.Post
  url: '/posts'
