import "./style.css";
import { grammar } from "./grammar";
const app = document.querySelector<HTMLDivElement>("#app")!;

function tryParse() {
	const inputVal = document.querySelector<HTMLInputElement>("#parse")!.value;
	const res = grammar.parse(inputVal);
	console.log(res);
}

const button = document.createElement("button");
button.onclick = function () {
	tryParse();
};
button.textContent = "Try parse";

app.innerHTML = `
  <h1>Hello Vite!</h1>
  <a href="https://vitejs.dev/guide/features.html" target="_blank">Documentation</a>
  <div class="parsingDiv">
  <label for="parse">Try parse</label>
  <input type="text" id="parse">
  </div>
  `;
app.append(button);
