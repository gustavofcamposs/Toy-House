function showPopup() {
    document.getElementById('popupContainer').style.display = 'flex';
}

function showPopup1() {
    document.getElementById('popupContainer1').style.display = 'flex';
}

// Evento para fechar o popup ao clicar em qualquer lugar do container
document.getElementById('popupContainer').onclick = function(event) {
    // Verifica se o clique foi no próprio container, e não na div interna
    if (event.target === this) {
        this.style.display = 'none';
    }
};

// Evento para fechar o popup ao clicar em qualquer lugar do container
document.getElementById('popupContainer1').onclick = function(event) {
    // Verifica se o clique foi no próprio container, e não na div interna
    if (event.target === this) {
        this.style.display = 'none';
    }
};
