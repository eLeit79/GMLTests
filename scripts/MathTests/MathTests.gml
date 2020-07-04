function testMaths() {
	testFactorial();
	testFibonacci();
	
	out("");
}

function testFactorial() {
	var actual = factorial(3);
	var expected = 6;
	out("[TEST:Factorial(3)] " + assertEquals(expected, actual).message);

	actual = factorial(5);
	expected = 120;
	out("[TEST:Factorial(5)] " + assertEquals(expected, actual).message);

	actual = factorial(8);
	expected = 40320;
	out("[TEST:Factorial(8)] " + assertEquals(expected, actual).message);
}

function testFibonacci() {
	var actual = "";
	for (var i = 0; i < 15; i++) {
		if (i > 0) {
			actual += ", ";
		}
		
		actual += string(fibonacci(i))
	}
	var expected = "0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377";
	
	out("[TEST:Fibonacci] " + assertEquals(expected, actual).message);
}
