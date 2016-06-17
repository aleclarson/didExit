
Event = require "Event"

didExit = Event()

process.once "SIGINT", ->
  process.exit 130

process.once "SIGTERM", ->
  process.exit 143

process.once "exit", (code) ->
  didExit.emit code

module.exports = didExit
