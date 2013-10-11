// Title: Multiples of 3 and 5
// URL: http://projecteuler.net/problem=1
// Usage: execute `node problem_1/program.js`.

var Program = function() {
  var self = this;
  
  // Returns true if the number is a multiple of 3.
  self.isMultipleOf3 = function(n) {
    // Divide by 3.
    var dividedBy3 = n / 3.0;
    // Is the result is a whole number?
    return dividedBy3 === Math.round(dividedBy3);
  }
  
  // Returns true if the number is a multiple of 5.
  self.isMultipleOf5 = function(n) {
    // Divide by 5.
    var dividedBy5 = n / 5.0
    // Is the result is a whole number?
    return dividedBy5 === Math.round(dividedBy5);
  }
  
  // Returns true if the number is a multiple of 3 or 5.
  self.isMultipleOf3Or5 = function(n) {
    return self.isMultipleOf3(n) || self.isMultipleOf5(n);
  }
  
  // Run the program: return the sum of all multiples of 3 or 5 below 1000.
  self.run = function() {
    var n = 1, sum = 0;
    while (n < 1000) {
      if (self.isMultipleOf3Or5(n)) {
        sum = sum + n;
      }
      n++;
    }
    return sum;
  }

}

console.log(new Program().run());