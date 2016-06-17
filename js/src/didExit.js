var Event, didExit;

Event = require("Event");

didExit = Event();

process.once("SIGINT", function() {
  return process.exit(130);
});

process.once("SIGTERM", function() {
  return process.exit(143);
});

process.once("exit", function(code) {
  return didExit.emit(code);
});

module.exports = didExit;

//# sourceMappingURL=../../map/src/didExit.map
