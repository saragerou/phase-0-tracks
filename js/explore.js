function reverseString(str) {
  // Split string to return array
  var splitString = str.split("");

  // Reverse array
  var reverseArray = splitString.reverse();

  // Join array back to string
  var joinArray = reverseArray.join("");

  // Return reverse
  return joinArray;
}

// Driver code
console.log (reverseString("Peanut"));

if (1 == 1) {
  console.log (reverseString("Yay Dev Bootcamp!"));
}
