/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself]

*/








// __________________________________________
// Write your code below.

// function average(arr){

//   var sum = 0;

//   for (var i = 0; i < arr.length; i++) 
//   {
//     sum += Number(arr[i]);
//   }
//   var avg = sum/arr.length;
//   return avg;
// }

// var gradebook = {
//   Joseph: {
//     testScores: scores[0]
//   },
//   Susan: {
//     testScores: scores[1]
//   },
//   William: {
//     testScores: scores[2]
//   },
//   Elizabeth: {
//     testScores: scores[3]
//   },
//   addScore: function(name, score) {
//     if (name === students[0]){
//       scores[0].push(score);
//     }
//     else if (name === students[1]) {
//       scores[1].push(score);
//     }
//     else if (name === students[2]) {
//       scores[2].push(score);
//     }
//     else if (name === students[3]) {
//       scores[3].push(score);
//     }
//     else {
//       console.log("Please Input a Valid Students Name.");
//     }
//   },
//   getAverage: function(name) {
//     if (name === students[0]){
//       return average(scores[0]);
//     }
//     else if (name === students[1]) {
//       return average(scores[1]);
//     }
//     else if (name === students[2]) {
//       return average(scores[2]);
//     }
//     else if (name === students[3]) {
//       return average(scores[3]);
//     }
//     else {
//       console.log("Please Input a Valid Students Name.");
//     }
//   }
// };

// __________________________________________
// Refactored Solution

function average(arr){
  var sum = 0;

  for (var i = 0; i < arr.length; i++) 
  {
    sum += Number(arr[i]);
  }
  var avg = sum/arr.length;
  return avg;
}

var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  },
  
  addScore: function(name, score)
  {
    for (var i = 0; i < scores.length; i++) 
    {
      if (name === students[i])
      {
        return scores[i].push(score);
      }
    }
    return console.log("Please input a valid student's name.");
  },

  getAverage: function(name) 
  {
    for (var i = 0; i < scores.length; i++) 
    {
      if (name === students[i])
      {
        return average(scores[i]);
      }
    }
    return console.log("Please input a valid student's name.");
  }
};






// __________________________________________
// Reflect

// What parts of your strategy worked? What problems did you face?
  // It's been a while since I've worked with javascript. I did have to go back to my previous code to relearn some of my things.
  // I understand the instructions were asking for me to do things the way I did, but I felt that it would have been so much easier to create an object constructor function.
  // for the purposes of the code, I used literal notation instead of dot. I could have done it either way.
  // Since we'd been working with Ruby for so long, I had used "=" instead of ":" initially and was able to get that fixed before it became a problem. I made sure to test my code very frequently.
  // I also had issues with having my arrays being equal to the arrays in the scores array for some reason. I still got the values that I needed, so it did not make sense to me as to why it was not passing. I just utilized the scores array instead of setting it equal to the values.
  // Refactoring was very necessary, since I had to think up a function that would recreate the code I had repeated several times, since the initial solution wasn't too Dry, but I'm happy with the end result.
  // There's still some more refactoring that can be done with the gradebook, mainly with the student objects, I know there's a way to loop through them, but I spent quite a bit of time on this exercise, so I'm just going to move on.

// What questions did you have while coding? What resources did you find to help you answer them?
  // all of my questions were basically syntatic, and I just used my old code in codecadamy as well as my old code from the second week to get everything taken care of.

// What concepts are you having trouble with, or did you just figure something out? If so, what?
  // this was all review, so it was good for me to get back into the groove of JS

// Did you learn any new skills or tricks?
  // I did not learn any new skills. This was all a great review

// How confident are you with each of the Learning Competencies?
  // I feel I will need to review a bit more before I'm completely confident

// Which parts of the challenge did you enjoy?
  // I really liked all of it.

// Which parts of the challenge did you find tedious?
  // I would appreciate some more links with this challenge. It's been forever since we've worked JS and more resources would have been helpful. I understand they want us to learn on our own for the most part, and that's what I did.
  // I would just prefer to have more resources given out.



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
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)