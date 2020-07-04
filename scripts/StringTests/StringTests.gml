function testStrings() {
	testStringSplit();
	testStringJoin();
	
	out("");
}

function testStringSplit() {
	var str = "Have some words";
	var actual = string_split(" ", str);
	var expected = ["Have", "some", "words"];
	
	out("[TEST:StringSplit:SingleCharDelimiter] " + assertEquals(expected, actual).message);
	
	str = "A/-/delimiter/-/test";
	actual = string_split("/-/", str);
	expected = ["A", "delimiter", "test"];
	
	out("[TEST:StringSplit:MultiCharDelimiter] " + assertEquals(expected, actual).message);
}

function testStringJoin() {
	var arr = ["This", "is", "a", "test"];
	var actual = string_join(" ", arr);
	var expected = "This is a test";
	
	out("[TEST:StringJoin] " + assertEquals(expected, actual).message);
}


