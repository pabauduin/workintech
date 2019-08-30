const button = document.querySelectorAll('.form-check');
const label1 = button[0].getElementsByTagName('label');
const label2 = button[1].getElementsByTagName('label');
const submit = document.getElementById('submit-question');

if (button) {

button[0].addEventListener ('click', (event) => {
  label1[0].classList.add("button_visited");
  label2[0].classList.remove("button_visited");
  setTimeout(function() { submit.click();}, 500);
});


button[1].addEventListener ('click', (event) => {
    label1[0].classList.remove("button_visited");
    label2[0].classList.add("button_visited");
    setTimeout(function() { submit.click();}, 500);
});
}
