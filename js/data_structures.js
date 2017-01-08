var colors = ["blue", "yellow", "red", "orange"];
var names = ["Ed", "Tom", "Frank", "Julia"];

colors.push("purple");
names.push("Bob");

var object = {};

for (var i = 0; i < colors.length; i++) {
 console.log(colors[i]);
 console.log(names[i]);
 object[colors[i]] = names[i];
}

console.log (object);

function Cars(make, year, color) {
 console.log("Our new car:", this);
 this.make = make;
 this.year = year;
 this.color = color;

 this.honk = function() { console.log("Honk!");};

 console.log("Car initialization complete");
}

var anotherCar = new Cars("Ford", 1998, "red");
console.log(anotherCar);
console.log("Our car can honk:");
anotherCar.honk();