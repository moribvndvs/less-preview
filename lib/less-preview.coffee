LessPreviewView = require './less-preview-view'

module.exports =
  lessPreviewView: null

  activate: (state) ->
    @lessPreviewView = new LessPreviewView(state.lessPreviewViewState)

  deactivate: ->
    @lessPreviewView.destroy()

  serialize: ->
    lessPreviewViewState: @lessPreviewView.serialize()
