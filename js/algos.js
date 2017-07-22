// Release 0: Find the Longest Phrase

// Created a function that returns the longest word or phrase of a list
  // Input: word or phrases list
  // Steps:
    // Iterate through the list
      // Conditional statement to check IF one element is longer than other
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

console.log("----------------------")


// Release 1: Find a Key-Value Match

// Create a function that check if two different objects share at least one key-value pair 
  // Input: two lists, each one with paired elements.
  // Steps:
    // Iterate through each list
      // Conditional statement to check IF one element is equal than other
      // Compare the lists elements
  // Output: true or false  


function hasEqualProperty(listOne, listTwo){
  for (var i in listOne){
    for (var j in listTwo){
      if (listOne[i] == listTwo[j]){
        var sharedKeyValue = true;
      }else{
        sharedKeyValue = false;
      }
    }
  }
  return sharedKeyValue;
}


var house = {rooms: 5, location: "Main city"};

var office = {rooms: 15, location: "Main city"};

console.log(hasEqualProperty(house, office));

//------------

var garden = {plants:  300, trees: 2};

var jungle = {animals: 300, trees: 1 };

console.log(hasEqualProperty(garden, jungle));

//--------------

console.log("----------------------")


// Release 2: Generate Random Test Data

// Create a function that take a number and build a list of that length with random words
  // Input: a number
  // Steps:
   // Declare a list object
   // Loop for number times 
      // To create random words, with different lenghts, within a range of 1 to 10  
  // Output: a random words list of 'number' lenght


   