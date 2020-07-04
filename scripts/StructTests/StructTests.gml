function testStructs() {
	testStructLogging();
	testNestedStruct();
	
	out("");
}

function testStructLogging() {
	var v1 = new Vector2(1, 2);
	
	out(v1);
	out(string(v1));
	out("[CONCAT] " + string(v1) + " [CONCAT]");
	out("");
}

function testNestedStruct() {
	var a = {
		getStruct : function(in) {
			return {
				some_field : -1,
				some_method : function() {
					return -1;
				}
			}
		}
	};
	
	var actual = abs(a.getStruct([]).some_field);
	var expected = 1;
	out("[TEST:NestedStruct:field] " + assertEquals(expected, actual).message);
	
	var actual = abs(a.getStruct([]).some_method());
	out("[TEST:NestedStruct:method] " + assertEquals(expected, actual).message);
}
