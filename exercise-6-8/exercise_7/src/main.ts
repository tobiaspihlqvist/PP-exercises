import "./style.css";
import { grammar } from "./grammar";
const button = document.querySelector<HTMLDivElement>("#parsingButton")!;

function tryParse() {
	const inputVal = document.querySelector<HTMLInputElement>("#parse")!.value;
	const res = grammar.parse(inputVal);
	console.log(res);
}

button.onclick = function () {
	tryParse();
};
button.textContent = "Try parse";
