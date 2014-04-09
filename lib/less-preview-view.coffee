{View} = require 'atom'

module.exports =
class LessPreviewView extends View
  @content: ->
    @div class: 'less-preview overlay from-top', =>
      @div "The LessPreview package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "less-preview:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LessPreviewView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
