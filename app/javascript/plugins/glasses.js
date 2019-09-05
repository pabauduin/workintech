// getElementbyId().
const glasses = document.querySelector(".glasses")
const netflix = document.querySelector(".netflix")
const audio = document.querySelector(".audio-play")

if (glasses) {
const audioPlay = new Audio(`${audio.src}`);
setTimeout(function() {
  audioPlay.play();
  glasses.classList.add("down-glasses");
}, 0);
};

if (audio) {
  const audioPlay = new Audio(`${audio.src}`);
setTimeout(function() {
  audioPlay.play()
},   0);
};

