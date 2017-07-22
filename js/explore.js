// Create an object that takes a word or phrase an reverse it
// Input: a word
// Steps:
  // Iterate trhough the word
  // Countdown by index
// Output: reversed word 


function reverse(word){
  var reverseWord = []
  for (var i = word.length-1; i >=0; i--){
    reverseWord +=word[i];
  }
  return reverseWord;
}


console.log(reverse("hola"));

var myReverseWord = []
myReverseWord.push(reverse("hello"));
myReverseWord.push(reverse("apple"));
myReverseWord.push(reverse("sun"));
myReverseWord.push(reverse("banana"));

console.log(myReverseWord); 


var anotherReverseWord = reverse("sun")

if (anotherReverseWord.length > 3){
 console.log(anotherReverseWord); 
}
