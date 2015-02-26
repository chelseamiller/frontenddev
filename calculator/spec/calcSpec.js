// describe("Add two numbers", function () {
// 	it("add", function () {
// 		var sum = add(2,8);
// 		expect(sum).toEqual(10);
// 	});
// });


// describe("multly 3 numbers", function () {
// 	it("mulitply", function () {
// 		var product = multiply(2,3,4);
// 		expect(product).toEqual(24);
// 	});
// });

// describe("append 3 zeros to array", function () {
// 	it("appends zeros to array", function () {
// 		var appendedarray = append3tolist([4]);
// 		expect(appendedarray).toEqual([0,0,0,4]);
// 	});
// 	it("checks length", function () {
// 		var appendedarray = append3tolist([2,3]);
// 		expect(appendedarray.length).toEqual(5);
// 	});
// });


// describe("show pressed buttons on screen", function() {
// 	it("shows 30 when I press 3 and 0", function () {
// 		var theAnswer = null;
// 		expect(theAnswer).toEqual(30);
// 	});
// });

describe("get answer", function() {
	it("calculates answer", function () {
		var theAnswer = getAnswer();
		expect(theAnswer).toEqual(30);
	});
});

