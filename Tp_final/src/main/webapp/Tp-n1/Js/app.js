// Función calcular total

const cant = document.getElementById('cantidad'); 
const cat = document.getElementById('categoria');
const valor = 200;

const form = document.getElementById("ticket");

    form.addEventListener("submit" , e => {
        e.preventDefault();

        const nombre = document.getElementById("nombre");
        const apellido = document.getElementById("apellido");
        const email = document.getElementById("email");

        if (nombre.value.trim() == '' || apellido.value.trim() == '' || email.value.trim() == ''){
            alert ("Completar todos los datos")
        } else if (!isValidEmail(email.value)) {
            alert ('ingrese un correo de mail valido' ); 
        } else {
            form.onsubmit();
        }

    });

    function isValidEmail(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
      }

function CalcularTotal(){
    var descuento;
    switch (cat.value){
        case "Estudiante": descuento=0.2; break;
        case "Trainee": descuento=0.5; break;
        case "Junior":descuento=0.85; break;
    } 
    if (!isNaN (parseInt(cant.value))) 
    document.getElementById("total").innerHTML = parseInt(cant.value)* valor * descuento;
}

function resetForm(){
    document.getElementById('ticket').reset();
    document.getElementById("total").innerHTML = "";
}
