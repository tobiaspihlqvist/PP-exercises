import "./style.css";
import { grammar } from "./grammar";
const button = document.querySelector<HTMLDivElement>("#parsingButton")!;

function tryParse() {
	const inputVal = document.querySelector<HTMLInputElement>("#parse")!.value;
	const outputField = document.getElementById("output");
	try {
		const res = grammar.parse(inputVal);
		//@ts-ignore
		outputField.innerHTML = `the time input you provided is ${res} minutes after midnight`;
	} catch (e) {
		//@ts-ignore
		outputField.innerHTML = "that is not a valid timeformat";
		console.log(e, "errorrrr");
	}
}

button.onclick = function () {
	tryParse();
};
button.textContent = "Try parse";
