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
  var error;
  try {
    return didExit.emit(code);
  } catch (error1) {
    error = error1;
    console.log(code);
    return console.error(error);
  }
});

module.exports = didExit;

//# sourceMappingURL=map/didExit.map
