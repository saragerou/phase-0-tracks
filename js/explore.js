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

reverseString("Peanut");