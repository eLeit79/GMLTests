function testMaths() {
	out("[MATHS TESTS]");

	testFactorial();
	testFibonacci();

	out("[MATHS TESTS]");
	out("");
}

function testFactorial() {
	var f = factorial(5);
	out("Factorial of 5: " + string(f) + " (recursion test)");
}

function testFibonacci() {
	var fib = "";
	for (var i = 0; i < 15; i++) {
		if (i > 0) {
			fib += ", ";
		}
		
		fib += string(fibonacci(i))
	}
	out("Fibonacci sequence: " + fib);
}
