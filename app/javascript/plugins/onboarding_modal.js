const modal = document.querySelector(".onboarding-modal");
const button_modal = document.getElementById("button-modal");
const game = document.querySelector(".game");

if (modal) {
setTimeout(function() {
  modal.className = "onboarding-modal margin-hide-null";
  game.className += " blur";
}, 500);

button_modal.addEventListener ('click', (event) => {
  modal.className = "onboarding-modal";
  modal.className += " margin-hide";
  modal.className += " display-none";
  game.className -= "blur";
});
};
