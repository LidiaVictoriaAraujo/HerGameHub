function startAnimation() {
  var banner = document.getElementById('HERGAMEHUB');
  banner.style.animation = 'none'; // Remove a animação atual
  setTimeout(function() {
    banner.style.animation = ''; // Reinicia a animação
  }, 10);
}


function openArea(url) {
  window.open(url, '_blank');
}
