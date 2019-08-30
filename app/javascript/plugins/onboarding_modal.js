const modal = document.querySelector(".onboarding-modal");
const button_modal = document.getElementById("button-modal");
const game = document.querySelector(".game");

if (modal) {
setTimeout(function() {
  modal.classList.remove("margin-hide");
  modal.classList.remove("display-none");
  modal.classList.add("margin-hide-null");
  game.className += " blur";
}, 500);

button_modal.addEventListener ('click', (event) => {
  modal.classList.add("margin-hide");
  modal.classList.add("display-none");
  modal.classList.remove("margin-hide-null");
  game.className = "game";
});
};
