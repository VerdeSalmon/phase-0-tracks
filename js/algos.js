// Release 0: Find the Longest Phrase

// write a function that takes an array of words or phrases 
// and returns the longest word or phrase in the array. Iterate through an array
// Add driver code that tests your function on a few arrays.

function longestStringIdentifier(strings_array){
	var longestString = "";
	for (var i = 0; i < strings_array.length; i++){
		if (strings_array[i].length > longestString.length){
			longestString = strings_array[i];
		}
	}
	return longestString;
}


var colors = ["yellow", "blue","red"];

var weekends = ["Sunday for ice cream", "Saturday to swim", "Holidays not yet"];

console.log(longestStringIdentifier(colors));

console.log(longestStringIdentifier(weekends));



// Release 1: Find a Key-Value Match

// write a function that takes two objects 
// and checks to see if the objects share at least one key-value pair
// expected return values:
// yourFunction({name: "Steven", age: 54}, {name: "Tamir", age: 54}); #  true
// yourFunction({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}); #  true

// Add some driver code that tests both outcomes of your function.





// Release 2: Generate Random Test Data

//Write a function that takes an integer for length, 
// and builds and returns an array of strings of the given length.
// So if we ran your function with an argument of 3, we would get an array of 3 random words back 
// the words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. 
// Add driver code that does the following 10 times: 
// generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.