//Define a function that take a string as a parameter and returned reversed. 
function reverse(word){
	//Iterate trough the word and coutndown by index
	var reverseString = "";
	for (i = word.length; i >= 0; i--) {
	//Return each letter of the word
	reverseString = (reverseString + word[i]);
	} 
	return reverseString;
}


//Call the function, give a string as an argument and store the result of the function in a variable
var reverseWord = reverse("blue");


//Print the variable when a condition become true
if (reverseWord.length > 5){
	console.log(reverseWord);
}







