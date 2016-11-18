
Event = require "Event"

didExit = Event {async: no}

process.once "SIGINT", ->
  process.exit 130

process.once "SIGTERM", ->
  process.exit 143

process.once "exit", (code) ->
  try didExit.emit code
  catch error
    console.log code
    console.error error

module.exports = didExit
