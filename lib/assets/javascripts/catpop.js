document.addEventListener('DOMContentLoaded', function() {
  const SHOWING_TIME = 3000;
  const INTERVAL_TIME = 1000;

  function showCat() {
    // define emojis
    const emojis = ["🐱", "🐈", "🐈‍⬛"];
    const emoji = emojis[Math.floor(Math.random() * emojis.length)];

    // define the size of the cat (1 ~ 10 em)
    const catSize = Math.floor(Math.random() * 10) + 1;

    // create div element
    const catDiv = document.createElement('div');
    catDiv.className = 'catpop';
    catDiv.style.position = 'fixed';
    catDiv.style.top = Math.floor(Math.random() * 90) + 'vh';
    catDiv.style.left = Math.floor(Math.random() * 90) + 'vw';
    catDiv.style.fontSize = catSize + 'em';
    catDiv.innerText = emoji;

    // append the div element to the body
    document.body.appendChild(catDiv);

    // remove the div element after a while
    setTimeout(() => catDiv.remove(), SHOWING_TIME);
  }


  showCat();

  // show cat every INTERVAL_TIME
  setInterval(showCat, INTERVAL_TIME);
});
