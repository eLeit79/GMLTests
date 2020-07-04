function assertEquals(expected, actual) {
	if (!is_same_type(actual, expected)) {
		return new TestResult(false, "FAILED: Actual type does not match Expected type");
	}
	
	if (typeof(expected) == "number") {
		if (actual != expected) {
			return new TestResult(false, "FAILED: Actual value does not match Expected value");
		}
	}
	
	if (typeof(expected) == "array") {
		if (array_length(actual) != array_length(expected)) {
			return new TestResult(false, "FAILED: Actual array length does not match Expected array length");
		}
		
		var arrayContentsMatch = true;
		for (var i = 0; i < array_length(expected); i++) {
			if (expected[i] != actual[i]) {
				arrayContentsMatch = false;
				break;
			}
		}
		if (!arrayContentsMatch) {
			return new TestResult(false, "FAILED: Actual array content does not match Expected array content");
		}
	}
	
	return new TestResult(true, "PASSED")
}

function assertSameType(var1, var2) {
	if (!is_same_type(var1, var2)) {
		return new TestResult(false, "FAILED: Actual type does not match Expected type");
	}
	
	return new TestResult(true, "PASSED");
}

function is_same_type(var1, var2) {
	if (typeof(var1) == typeof(var2)) {
		return true;
	}
	
	return false;
}
