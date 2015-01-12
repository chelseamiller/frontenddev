var keys = document.querySelectorAll('#calculator span');
var calcArray = [];

for (var i = 0; i < keys.length; i++) {
	keys[i].onclick = function(e) {
		var input = document.querySelector('#screen');
		var btnVal = this.innerHTML;
		calcArray.push(btnVal);
		var calcExpression = calcArray.join("");

		function clearCalculator() {
			calcArray = [0];
			calcExpression = calcArray.join("");
			document.getElementById('screen').innerHTML = calcExpression;
			calcArray = [];
			calcExpression = calcArray.join("");
		};

		function getAnswer() {
			calcArray.pop();
			calcExpression = calcArray.join("");
			var theAnswer = eval(calcExpression);
			calcArray = [theAnswer];
			calcExpression = calcArray.join("");
		}

		if (btnVal == "C") {
			clearCalculator();
		} else if (btnVal == "=") {
			getAnswer();
		} 
		document.getElementById('screen').innerHTML = calcExpression;
	};
};










