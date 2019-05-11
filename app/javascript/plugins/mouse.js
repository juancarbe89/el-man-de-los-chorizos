const animateToLinks = document.querySelectorAll('.js-animate-to');
animateToLinks.forEach((animateLink) => {
  animateLink.addEventListener('click', () => {
    const location = animateLink.getAttribute('href');
    const divToAnimateTo = document.querySelector(location);
    const scrollIns = new ScrollTo({
      target: divToAnimateTo,
      animationFn: 'easeOut',
      duration: 400
    });
    scrollIns.scroll();
  });
});
