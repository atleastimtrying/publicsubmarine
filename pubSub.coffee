###
                     ___
                    /  _0
                    | |
                    | |
^^^^^^^^^^^^^^^^^^^^| |^^^^^^^^^^^^^^
-------------------/   \-------------
   P U B L I C   S U B M A R I N E
###

window.publicSubmarine =
  init: ->
    @events = {}

  publish: (label)->
    evnt() for evnt in @events[label] if @events[label]

  subscribe: (label, callback)->
    if @events[label]
      @events[label].push callback
    else
      @events[label] = [callback]

  unsubscribe: (label, callback)->
    if @events[label]
      position = @events[label].indexOf callback 
      @events[label].splice position,1 if position isnt -1

  surface: ->
    console.log @events

publicSubmarine.init()