// Release 0: Work with Arrays


var horseName = ["Ed", "Ginger","Glitter","Vanila"];
var horseColor = ["blue", "yellow","pink blue stripes","rainbow"];

horseName.push("Joe");
horseColor.push("green spots");

// Release 1: Build an Object

// add code that will use your two arrays to create an object.
// The keys of your object should be horse names, and the values should be colors. 
// would work for any number of colors/horses, as long as the two arrays are the same length


function horseMaker(horseName, horseColor){
	var horsesMatcher = {};
	for (var i = 0; i < horseName.length; i++){
		horsesMatcher[horseName[i]] = horseColor[i];
	}
	return horsesMatcher
}

console.log(horseMaker(horseName,horseColor))

// Release 2: Build Many Objects Using a Constructor

// write a constructor function for a car. 
// Give it a few different properties of various data types, including at least one function. 
// Demonstrate that your function works by creating a few cars with it.