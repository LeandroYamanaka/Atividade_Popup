function Validar() {
    var cadastro = document.forms["cadastro"]["Nome", "Email"].value;

    if (Nome != null && Email != null) {
        alert("Envio realizado com sucesso!")
        return true;
    } else {
        alert("Falha no envio!")
        return false;
    }
}