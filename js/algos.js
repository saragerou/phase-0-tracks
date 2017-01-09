// RELEASE 0
// Write a function that takes an array of words or phrases and returns the longest word of phrase in the array.
// Create function that runs through the length of the array
// Create if statement so that the longest word gets compared to the next index
// return longest word

function findLongest(array) {
  var longest = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length >= findLongest.length) {
      longest = array[i];
    }
  }
  return longest; 
}

console.log(findLongest(["math", "literature", "social studies", "chemistry", "longest string yet"]));


// RELEASE 1
// Write a function that takes two objects and checks to see if they share one key-value pair.
// Set up function to take two objects
// Check for key in object1. compare to key in object2. If they match, true. Else, false.
function Match(object1, object2) {
  for (var key in object1) {
    if (key in object2 && object1[key] == object2[key]) {
      return true;
    }
  }
  return false;
}

console.log(Match({name: "Princess", age: 33}, {name: "Sara", age: 33}))
console.log(Match({name: "Sara", age: 34}, {name: "Sara", age: 28}))

// RELEASE 2
// Write a function that takes an integer for length, and builds and returns an array of strings of that length.
// Note to self: Math.floor returns largest integer less than or equal to given number
// Math.random will return a random number between 0 and 1

function RandString(number) {
  var array = [];
  var alpha = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < number; i++) {
    var word = "";
    for (var x = 0; x < (Math.floor(Math.random() * 10 ) + 1 ); x++) {
      word += alpha.charAt(Math.floor(Math.random() * alpha.length));
    }
    array.push(word);
  }
  return array;
}

for (var i = 0; i < 10; i++){
  var arrayNew = RandString(3);
  console.log(arrayNew);
}