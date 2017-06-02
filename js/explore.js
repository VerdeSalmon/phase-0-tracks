// Create an object that takes a word or phrase an reverse it

function reverse(word){
	// Create an array to return the reverse string
	var reverseString = [];
	// Iterate trhough the word
	for (var i = 0; i < word.length; i++) {
	// Return each letter of the word, put on top last letter returned
	reverseString.unshift(word[i]);
	} 
	//Return the reverse string
	return reverseString.join("");
}


//Call the object, give a string as an argument and store the result of the function in a variable
var reverseWord = reverse("yellow chicken baby");


//Print the variable when a condition become true
if (reverseWord.length > 5){
	console.log(reverseWord);
}




