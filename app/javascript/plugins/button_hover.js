const button = document.querySelectorAll('.form-check');

if (button.length > 0) {
  console.log("test")
  const label1 = button[0].getElementsByTagName('label');
  const label2 = button[1].getElementsByTagName('label');
  const submit = document.getElementById('submit-question');

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
};
