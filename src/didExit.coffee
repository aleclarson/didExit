
isNodeJS = require "isNodeJS"
Event = require "Event"

module.exports =
  didExit = Event {async: no}

if isNodeJS

  process.once "SIGINT", ->
    process.exit 130

  process.once "SIGTERM", ->
    process.exit 143

  process.once "exit", (code) ->
    try didExit.emit code
    catch error
      console.log code
      console.error error
