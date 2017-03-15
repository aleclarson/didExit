
isNodeJS = require "isNodeJS"
Event = require "eve"

module.exports =
  didExit = Event()

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
