// https://noveblo.com/javascript-message-display/

const weight_button = document.getElementById('weight-button');
const temp_button = document.getElementById('temp-button');
const ele_button = document.getElementById('ele-button');
const mask = document.getElementById('mask');

weight_button.addEventListener('click', () => {
  // prompt("clicked!");
  mask.classList.remove('hidden');

});

mask.addEventListener('click', () => {
  mask.classList.add('hidden');
})
