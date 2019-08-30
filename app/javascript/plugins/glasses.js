// getElementbyId().
const glasses = document.querySelector(".glasses")


if (glasses) {
  const audio = document.querySelector(".audio-play")
const audioPlay = new Audio(`${audio.src}`);
setTimeout(function() {
  audioPlay.play();
  glasses.classList.add("down-glasses");
}, 0);
}

