// var readline = require('readline'),
//     rl = readline.createInterface(process.stdin, process.stdout);

// rl.setPrompt('OHAI> ');
// rl.prompt();

// rl.on('line', function(line) {
//   switch(line.trim()) {
//     case 'hello':
//       console.log('world!');
//       break;
//     default:
//       console.log('Say what? I might have heard `' + line.trim() + '`');
//       break;
//   }
//   rl.prompt();
// }).on('close', function() {
//   console.log('Have a great day!');
//   process.exit(0);
// });

var stdin = process.openStdin();

stdin.addListener("data", function(d) {
    // note:  d is an object, and when converted to a string it will
    // end with a linefeed.  so we (rather crudely) account for that
    // with toString() and then substring()
    console.log("you entered: [" +
        d.toString().trim() + "]");
    process.closeStdin();
  });