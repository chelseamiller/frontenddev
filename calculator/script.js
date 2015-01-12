// var keys = document.querySelectorAll('#calculator span');
// var operators = ['+','-','x','/'];
// var decimalAdded = false;

// for(var i=0; i < keys.length; i++) {
// 	keys[i].onclick = function(e) {
// 		var input = document.querySelector('.screen');
// 		console.log(input);
// 		var inputVal = input.innerHTML;
// 		var btnVal = this.innerHTML;
// 	if(btnVal == 'C') {
// 		input.innerHTML = '';
// 		decimalAdded = false;
// 	} else if (btnVal == '=') {
// 		var equation = inputVal;
// 		var lastChar = equation[equation.length - 1];
// 		equation = equation.replace(/x/g, '*').replace(/÷/g, '/');

// 		if(operators.indexOf(lastChar) > -1 || lastChar == '.')
// 			equation = equation.replace(/.$/,'');

// 		if(equation)
// 			input.inn	erHTML = eval(equation);

// 		decimalAdded = false;
// 	} else {
// 		input.innerHTML += btnVal;
// 	};
// };
// };


var keys = document.querySelectorAll('#calculator span');
var calcArray = [];

for (var i = 0; i < keys.length; i++) {
	keys[i].onclick = function(e) {
		var input = document.querySelector('#screen');
		var btnVal = this.innerHTML;
		calcArray.push(btnVal);
		var calcExpression = calcArray.join("");
		if (btnVal == "C") {
			calcArray = [0];
			calcExpression = calcArray.join("");
			document.getElementById('screen').innerHTML = calcExpression;
			calcArray = [];
			calcExpression = calcArray.join("");
		} else if (btnVal == "=") {
			calcArray.pop();
			calcExpression = calcArray.join("");
			var theAnswer = eval(calcExpression);
			calcArray = [theAnswer];
			calcExpression = calcArray.join("");
		} 
		document.getElementById('screen').innerHTML = calcExpression;
	};
};










