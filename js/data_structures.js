// Release 0: Work with Arrays


var horseName = ["Ed", "Ginger","Glitter","Vanila"];
var horseColor = ["blue", "yellow","pink blue stripes","rainbow"];

horseName.push("Joe");
horseColor.push("green spots");

// Release 1: Build an Object

function horseMaker(horseName, horseColor){
	var horsesMatcher = {};
	for (var i = 0; i < horseName.length; i++){
		horsesMatcher[horseName[i]] = horseColor[i];
	}
	return horsesMatcher;
}

console.log(horseMaker(horseName,horseColor));

console.log("----");


// Release 2: Build Many Objects Using a Constructor

// write a constructor function for a car. 
// Give it a few different properties of various data types, including at least one function. 
// Demonstrate that your function works by creating a few cars with it.


function Car(modelYear, color, confortable){
  this.modelYear = modelYear;
  this.color = color;
  this.confortable = confortable;
  this.honk = function(){console.log("Beep Beep");};
  }


var car1 = new Car(2010, "pink blue stripes", true);
console.log(car1);
car1.honk();


console.log("----");


var car2 = new Car(1999, "tooth white", false);
car2.honk();
console.log(car2);


console.log("----");


var car3 = new Car(2020, "silver hope", false);
car3.honk();
console.log(car3);