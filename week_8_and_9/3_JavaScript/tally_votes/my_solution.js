
// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge [with: Keving Kang and Sebastian Belmar]

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// DEFINE a var counter as a function
//   ITERATE using for over votes 
//     DEFINE var voters
//       ITERATE through the positions in the ballot
//    if the vote count doesn't exist, set it equal to 0
//    otherwise add one

// DEFINE a variable winner as a function that takes voteCount in as a argument
//  iterate through votecount's position
//    iterate through each candidates votes
//      put all of the votes into an array
//        find the candidate with the highest value in the array
//        set a variable equal to the above value
//        put the name value of the variable into the corresponding position of officers


// __________________________________________
// Initial Solution

// var counter = function(){
//  for(var voter in votes){
//    var ballot = votes[voter];
//    for(var position in ballot){
//       var candidate = ballot[position];
//       if(!voteCount[position][candidate]){
//         voteCount[position][candidate] = 0;
//       }
//       voteCount[position][candidate]++;    
//     }
//   }
// }

// counter();

// var winner = function() {
//   for (var position in voteCount) {
//     var initial = 0;
//     for (var officer in voteCount[position]) {
//       if (voteCount[position][officer] > initial) {
//         officers[position] = officer;
//         initial = voteCount[position][officer];
//       }
//     }
//   }
// }

// winner();

// __________________________________________
// Refactored Solution

var counter = function(){
 for(var voter in votes){
   var ballot = votes[voter];
   for(var position in ballot){
      var candidate = ballot[position];
      var votesForPosition = voteCount[position]
      if(!votesForPosition[candidate]){
        votesForPosition[candidate] = 0;
      }
      votesForPosition[candidate]++;    
    }
  }
}

counter();

var winner = function() {
  for (var position in voteCount) {
    var initial = 0;
    for (var officer in voteCount[position]) {
      var BigWinNum = voteCount[position][officer];
      if (BigWinNum > initial) {
        officers[position] = officer;
        initial = BigWinNum;
      }
    }
  }
}

winner();




// __________________________________________
// Reflection

// What parts of your strategy worked? What problems did you face?
//  We got a little stuck with putting in the wrong iteration, but we didn't have many problems other than that.
// Sebastian, Kevin, and I met up and worked on this together in real life.
// We didn't correct the pseudocode, since the code we have is good now, we don't really need to.

// What questions did you have while coding? What resources did you find to help you answer them?
//  We had some problems with this initially, but we got everything to work.

// What concepts are you having trouble with, or did you just figure something out? If so, what?
//  Some of the iterations are a little confusing, this is something I'll want to work on a bit more.

// Did you learn any new skills or tricks?
//  I learned some iteration, it was good.

// How confident are you with each of the Learning Competencies?
// Not very confident, this is a subject I want more practice on.
// Javascript is good, I like it. I want to do more.

// Which parts of the challenge did you enjoy?
//  I like how the iteration is different in JS, it seems similar to working with hashes.

// Which parts of the challenge did you find tedious?
//  I don't like how we had to go a roundabout way to do things.
//  It was a pain in the caboose, but everything worked out.


// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)