// getElementbyId().
const glasses = document.querySelector(".glasses")
const netflix = document.querySelector(".netflix")


if (glasses) {
  const audio = document.querySelector(".audio-play")
const audioPlay = new Audio(`${audio.src}`);
setTimeout(function() {
  audioPlay.play();
  glasses.classList.add("down-glasses");
}, 0);
}

if (netflix) {
  const audio = document.querySelector(".audio-play")
  const audioPlay = new Audio(`${audio.src}`);
setTimeout(function() {
  audioPlay.play()
},   0);
}

