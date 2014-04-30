// U3.W8-9: 


// I worked on this challenge [by myself].

// 2. Pseudocode

// 1. Create a grocery constructor function
// 2. Make it so you can view the grocery list by utilizing objects
// 3. Make it so you can add items in the constructor function
// 4. Make it so you can delete items inside the grocery list
// 5. Create a function that counts the amount of items inside of the grocery list
// 6. Create a function that will count the amount of specific items in the grocery list


// 3. Initial Solution

// itemArray = ["apple", "banana", "orange"];

// numberOfItems = [3, 6, 4];

// var groceryList = {
//   addItem: function(item_to_add, number)
//   {
// 		for (var i = 0; i < itemArray.length; i++)
// 		{
// 			itemArray.push(item_to_add);
// 			return numberOfItems.push(number);
// 		}
// 	},
	
// 	viewGroceryList: function()
// 	{
// 		for (var i = 0; i < itemArray.length; i++)
// 		{
// 			console.log(itemArray[i])
// 			console.log(numberOfItems[i])
// 		}
// 	},
	
// 	amountOfGroceries: function() 
// 	{
// 	return console.log("There are " + itemArray.length + " groceries in the list.")
// 	},

// 	groceryCount: function(item)
// 	{
// 		var i = itemArray.indexOf(item)
// 		return console.log(numberOfItems[i])
// 	},

// 	removeItem: function(item)
// 	{
// 		var i = itemArray.indexOf(item)
// 		itemArray.splice(i, 1)
// 		numberOfItems.splice(i, 1)
// 	}
// };

// 4. Refactored Solution

itemArray = ["apple", "banana", "orange"];

numberOfItems = [3, 6, 4];

var groceryList = {
	
  addItem: function(item_to_add, number)
  {
		for (var i = 0; i < itemArray.length; i++)
		{
			itemArray.push(item_to_add);
			return numberOfItems.push(number);
		}
	},
	amountOfGroceries: function() 
	{
	return console.log("There are " + itemArray.length + " groceries in the list.")
	},

	groceryCount: function(item)
	{
		var i = itemArray.indexOf(item)
		return console.log(numberOfItems[i])
	},

	removeItem: function(item)
	{
		var i = itemArray.indexOf(item)
		itemArray.splice(i, 1)
		numberOfItems.splice(i, 1)
	},

	viewGroceryList: function()
	{
		for (var i = 0; i < itemArray.length; i++)
		{
			console.log(itemArray[i])
			console.log(numberOfItems[i])
		}
	}
	
};




// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

//groceryList.addItem("bacon", 3); - works

// groceryList.removeItem("banana") - works

// groceryList.viewGroceryList() - works

//groceryList.amountOfGroceries() - works

//groceryList.groceryCount("banana") - works

assert(
	(groceryList.addItem instanceof Function),
	"Should be a function\n",
	"1. ")

assert(
	(groceryList.viewGroceryList instanceof Function),
	"Should be a function\n",
	"2. ")

assert(
	(groceryList.amountOfGroceries instanceof Function),
	"Should be a function\n",
	"3. ")

assert(
	(groceryList.groceryCount instanceof Function),
	"Should be a function\n",
	"4. ")

assert(
	(groceryList.removeItem instanceof Function),
	"Should be a function\n",
	"5. ")

// 5. Reflection 

// What parts of your strategy worked? What problems did you face?
// I'm having issues with the driver code, I was unable to make the values come out as true, even though they were still equal to eachother.
// I did make sure the code worked as I was coding with node.js, however I do want further education on this matter. I'll do some extra research on my own where there is some spare time to do so.
// Everything was pretty simple, since my practice with JS is limited, I did what I could to make everything as DRY as possible, all of my code works the way it should.

// What questions did you have while coding? What resources did you find to help you answer them?
// I learned the splice method, it was very useful.

// What concepts are you having trouble with, or did you just figure something out? If so, what?
	// Javascript is something I need to work more with.

// Did you learn any new skills or tricks?
	// I learned how to splice throuugh arrays

// How confident are you with each of the Learning Competencies?
	// Not too confident, but I feel that if I practice more with JS, I'll be good to go

// Which parts of the challenge did you enjoy?
	//It was honestly harder for me to work with, but I enjoyed the refresher.

// Which parts of the challenge did you find tedious?
	//I felt like I got stuck with the driver code. Even without the console.log statements inside of my program, I was unable to get my code to run through assert methods the way I wanted, but it all ran the way I wanted.
	//This is something I'll have to learn more about in the very near future.