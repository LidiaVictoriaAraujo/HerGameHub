// Seleciona o banner pelo ID
const banner = document.getElementById('welcomeBanner');

// Função para iniciar a animação do banner
function startAnimation() {
  banner.classList.add('animated'); // Adiciona uma classe 'animated' ao banner
}

// Função para abrir a área de desenvolvedor
function openArea(url) {
  window.location.href = url; // Redireciona para a URL especificada
}

