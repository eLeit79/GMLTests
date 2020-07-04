function testStructs() {
	testStructLogging();
}

function testStructLogging() {
	out("[STRUCT LOGGING TESTS]");

	var v1 = new Vector2(1, 2);
	
	out(v1);
	out(string(v1));
	out("[CONCAT] " + string(v1) + " [CONCAT]");

	out("[STRUCT LOGGING TESTS] DONE!");
	out("");
}
