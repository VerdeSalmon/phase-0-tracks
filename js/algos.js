// Release 0: Find the Longest Phrase

// Created a function that returns the longest word or phrase of a list
  // Input: word or phrases list
  // Steps:
    // Iterate through the list
      // Compare the elements length 
  // Output: the longest word or phrase of the list

  
function longestWordFinder(wordList){
  var longestWord = ""
  for (var i = 0; i < wordList.length; i++){
    if (wordList[i].length > longestWord.length){
      longestWord = wordList[i] 
    }
  }
  return longestWord; 
}

var wordList = ["car", "face", "monday"];
var phraseList = ["banana dos", "orange three", "banana five"];

console.log(longestWordFinder(wordList));
console.log(longestWordFinder(phraseList));

