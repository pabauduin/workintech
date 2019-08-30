const hero = document.getElementById("style-variable1");
const variable1 = document.getElementById("variable1");
const variable2 = document.getElementById("variable2");
const variable3 = document.getElementById("variable3");


if (variable1) {
  variable1.value = "1"
}
if (variable2) {
  variable2.value = "blue"
}
if (variable3) {
  variable3.value = "30"
}

if (variable1) {
document.getElementById("variable1").addEventListener('change', (event) => {
  if (variable1.value === "1"){
    hero.style.right = `70%`}
  else if (variable1.value === "2"){
    hero.style.right = `55%`}
  else { hero.style.right = `30%`}
  // hero.style.right = `${variable1.value}%`;
  });
};

if (variable2) {
  hero.style.filter = `saturate(10000%) hue-rotate(225deg)`;
document.getElementById("variable2").addEventListener('change', (event) => {
  if (variable2.value === "red"){
    hero.style.filter = `saturate(1)`}
  else if (variable2.value === "blue"){
    hero.style.filter = `saturate(10000%) hue-rotate(225deg)`}
  else { hero.style.filter = `saturate(10000%) hue-rotate(472deg)`}
  });
document.getElementById("variable1").addEventListener('change', (event) => {
  if (variable1.value === "1"){
    hero.style.right = `30%`}
  else if (variable1.value === "2"){
    hero.style.right = `51%`}
  else { hero.style.right = `74%`}
  // hero.style.right = `${variable1.value}%`;
  });
};

if (variable3) {
  hero.style.width = `30%`
document.getElementById("variable3").addEventListener('change', (event) => {
  if (variable3.value === "10"){
    hero.style.width = `10%`}
  else if (variable3.value === "20"){
    hero.style.width = `20%`}
  else { hero.style.width = `30%`}

});
}
