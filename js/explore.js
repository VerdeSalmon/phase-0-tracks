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

var myReverseWord = (reverse("hello"));

console.log(myReverseWord);