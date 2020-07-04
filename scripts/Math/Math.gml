function factorial(n) {
	if (n == 0) {
		return 1;
	}
	
	return n * factorial(n - 1);
}

function fibonacci(n) {
	var a = 0, b = 1, c = 0;
	
	if (n == 0) return a;
	
	for (var i = 2; i <= n; i++) {
	    c = a + b;
		a = b;
		b = c;
	}
	
	return b;
}
