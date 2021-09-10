import Typed from 'typed.js';

const initTypedjs = () => {
  console.log('init typed activated')
  const target = document.querySelector('.typed-target');

  if (target) {
    console.log('init typed run')
    new Typed('.typed-target', {
      strings: ["Change your life", "Learn to code"],
      typeSpeed: 50,
      loop: true
    });    
  }
}

export { initTypedjs }