(function () {
  document.querySelectorAll('.site-nav').forEach(function (nav) {
    var container = nav.querySelector('.container');
    if (!container) return;
    var ul = container.querySelector('ul');
    if (!ul) return;

    var btn = document.createElement('button');
    btn.className = 'nav-toggle';
    btn.type = 'button';
    btn.setAttribute('aria-expanded', 'false');
    if (!ul.id) ul.id = 'site-nav-list';
    btn.setAttribute('aria-controls', ul.id);
    btn.setAttribute('aria-label', 'Toggle navigation menu');
    btn.innerHTML = '<span></span><span></span><span></span>';

    container.insertBefore(btn, ul);

    btn.addEventListener('click', function () {
      var isOpen = nav.classList.toggle('nav-open');
      btn.setAttribute('aria-expanded', isOpen ? 'true' : 'false');
    });

    ul.querySelectorAll('a').forEach(function (link) {
      link.addEventListener('click', function () {
        nav.classList.remove('nav-open');
        btn.setAttribute('aria-expanded', 'false');
      });
    });

    window.addEventListener('resize', function () {
      if (window.innerWidth > 560) {
        nav.classList.remove('nav-open');
        btn.setAttribute('aria-expanded', 'false');
      }
    });
  });
})();
