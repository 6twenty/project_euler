// Title: Multiples of 3 and 5
// URL: http://projecteuler.net/problem=1
// Usage: execute `node problem_1/program.js`.

var Program = function () {

  // Return the sum of all multiples of 3 or 5 below 1000.
  this.run = function () {
    var n = 1, sum = 0;
    while (n < 1000) {
      if ((n % 3 === 0) || (n % 5 === 0)) sum += n;
      n++;
    }
    return sum;
  }

}

console.log(new Program().run());
