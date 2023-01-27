[33mcommit 5b3b24efe72dd59627ef606338a8d98babd3e057[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: ALFONSOVM13 <alfonsovengoechea@gmail.com>
Date:   Thu Jan 26 15:15:19 2023 -0500

    mi primer commit

[1mdiff --git a/assets/574726.jpg b/assets/574726.jpg[m
[1mnew file mode 100644[m
[1mindex 0000000..02da3de[m
Binary files /dev/null and b/assets/574726.jpg differ
[1mdiff --git a/assets/deec48bbb80f30a19838531a158f2a2c.png b/assets/deec48bbb80f30a19838531a158f2a2c.png[m
[1mnew file mode 100644[m
[1mindex 0000000..4ac9bee[m
Binary files /dev/null and b/assets/deec48bbb80f30a19838531a158f2a2c.png differ
[1mdiff --git a/assets/mokepons_mokepon_capipepo_attack.png b/assets/mokepons_mokepon_capipepo_attack.png[m
[1mnew file mode 100644[m
[1mindex 0000000..2a5cadc[m
Binary files /dev/null and b/assets/mokepons_mokepon_capipepo_attack.png differ
[1mdiff --git a/assets/mokepons_mokepon_hipodoge_attack.png b/assets/mokepons_mokepon_hipodoge_attack.png[m
[1mnew file mode 100644[m
[1mindex 0000000..a64f248[m
Binary files /dev/null and b/assets/mokepons_mokepon_hipodoge_attack.png differ
[1mdiff --git a/assets/mokepons_mokepon_ratigueya_attack.png b/assets/mokepons_mokepon_ratigueya_attack.png[m
[1mnew file mode 100644[m
[1mindex 0000000..ed75c50[m
Binary files /dev/null and b/assets/mokepons_mokepon_ratigueya_attack.png differ
[1mdiff --git a/js/mokepon.js b/js/mokepon.js[m
[1mnew file mode 100644[m
[1mindex 0000000..89b9cdc[m
[1m--- /dev/null[m
[1m+++ b/js/mokepon.js[m
[36m@@ -0,0 +1,169 @@[m
[32m+[m[32mlet ataqueJugador[m
[32m+[m[32mlet ataqueEnemigo[m
[32m+[m[32mlet vidasJugador = 3[m
[32m+[m[32mlet vidasEnemigo = 3[m
[32m+[m
[32m+[m[32mfunction iniciarJuego() {[m
[32m+[m[32m    let sectionSeleccionarAtaque = document.getElementById('seleccionar-ataque')[m
[32m+[m[32m    sectionSeleccionarAtaque.style.display = 'none'[m
[32m+[m
[32m+[m[32m    let sectionReiniciar = document.getElementById('reiniciar')[m
[32m+[m[32m    sectionReiniciar.style.display = 'none'[m
[32m+[m[41m    [m
[32m+[m[32m    let botonMascotaJugador = document.getElementById('boton-mascota')[m
[32m+[m[32m    botonMascotaJugador.addEventListener('click', seleccionarMascotaJugador)[m
[32m+[m
[32m+[m[32m    let botonFuego = document.getElementById('boton-fuego')[m
[32m+[m[32m    botonFuego.addEventListener('click', ataqueFuego)[m
[32m+[m[32m    let botonAgua = document.getElementById('boton-agua')[m
[32m+[m[32m    botonAgua.addEventListener('click', ataqueAgua)[m
[32m+[m[32m    let botonTierra = document.getElementById('boton-tierra')[m
[32m+[m[32m    botonTierra.addEventListener('click', ataqueTierra)[m
[32m+[m
[32m+[m[32m    let botonReiniciar = document.getElementById('boton-reiniciar')[m
[32m+[m[32m    botonReiniciar.addEventListener('click', reiniciarJuego)[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction seleccionarMascotaJugador() {[m
[32m+[m[32m    let sectionSeleccionarMascota = document.getElementById('seleccionar-mascota')[m
[32m+[m[32m    sectionSeleccionarMascota.style.display = 'none'[m
[32m+[m[41m    [m
[32m+[m[32m    let sectionSeleccionarAtaque = document.getElementById('seleccionar-ataque')[m
[32m+[m[32m    sectionSeleccionarAtaque.style.display = 'flex'[m
[32m+[m[41m    [m
[32m+[m[32m    let inputHipodoge = document.getElementById('hipodoge')[m
[32m+[m[32m    let inputCapipepo = document.getElementById('capipepo')[m
[32m+[m[32m    let inputRatigueya = document.getElementById('ratigueya')[m
[32m+[m[32m    let spanMascotaJugador = document.getElementById('mascota-jugador')[m
[32m+[m[41m    [m
[32m+[m[32m    if (inputHipodoge.checked) {[m
[32m+[m[32m        spanMascotaJugador.innerHTML = 'Hipodoge'[m
[32m+[m[32m    } else if (inputCapipepo.checked) {[m
[32m+[m[32m        spanMascotaJugador.innerHTML = 'Capipepo'[m
[32m+[m[32m    } else if (inputRatigueya.checked) {[m
[32m+[m[32m        spanMascotaJugador.innerHTML = 'Ratigueya'[m
[32m+[m[32m    } else {[m
[32m+[m[32m        alert('Selecciona una mascota')[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    seleccionarMascotaEnemigo()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction seleccionarMascotaEnemigo() {[m
[32m+[m[32m    let mascotaAleatoria = aleatorio(1,3)[m
[32m+[m[32m    let spanMascotaEnemigo = document.getElementById('mascota-enemigo')[m
[32m+[m
[32m+[m[32m    if (mascotaAleatoria == 1) {[m
[32m+[m[32m        spanMascotaEnemigo.innerHTML = 'Hipodoge'[m
[32m+[m[32m    } else if (mascotaAleatoria == 2) {[m
[32m+[m[32m        spanMascotaEnemigo.innerHTML = 'Capipepo'[m
[32m+[m[32m    } else {[m
[32m+[m[32m        spanMascotaEnemigo.innerHTML = 'Ratigueya'[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction ataqueFuego() {[m
[32m+[m[32m    ataqueJugador = 'FUEGO'[m
[32m+[m[32m    ataqueAleatorioEnemigo()[m
[32m+[m[32m}[m
[32m+[m[32mfunction ataqueAgua() {[m
[32m+[m[32m    ataqueJugador = 'AGUA'[m
[32m+[m[32m    ataqueAleatorioEnemigo()[m
[32m+[m[32m}[m
[32m+[m[32mfunction ataqueTierra() {[m
[32m+[m[32m    ataqueJugador = 'TIERRA'[m
[32m+[m[32m    ataqueAleatorioEnemigo()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction ataqueAleatorioEnemigo() {[m
[32m+[m[32m    let ataqueAleatorio = aleatorio(1,3)[m
[32m+[m[41m    [m
[32m+[m[32m    if (ataqueAleatorio == 1) {[m
[32m+[m[32m        ataqueEnemigo = 'FUEGO'[m
[32m+[m[32m    } else if (ataqueAleatorio == 2) {[m
[32m+[m[32m        ataqueEnemigo = 'AGUA'[m
[32m+[m[32m    } else {[m
[32m+[m[32m        ataqueEnemigo = 'TIERRA'[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    combate()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction combate() {[m
[32m+[m[32m    let spanVidasJugador = document.getElementById('vidas-jugador')[m
[32m+[m[32m    let spanVidasEnemigo = document.getElementById('vidas-enemigo')[m
[32m+[m[41m    [m
[32m+[m[32m    if(ataqueEnemigo == ataqueJugador) {[m
[32m+[m[32m        crearMensaje("EMPATE")[m
[32m+[m[32m    } else if(ataqueJugador == 'FUEGO' && ataqueEnemigo == 'TIERRA') {[m
[32m+[m[32m        crearMensaje("GANASTE")[m
[32m+[m[32m        vidasEnemigo--[m
[32m+[m[32m        spanVidasEnemigo.innerHTML = vidasEnemigo[m
[32m+[m[32m    } else if(ataqueJugador == 'AGUA' && ataqueEnemigo == 'FUEGO') {[m
[32m+[m[32m        crearMensaje("GANASTE")[m
[32m+[m[32m        vidasEnemigo--[m
[32m+[m[32m        spanVidasEnemigo.innerHTML = vidasEnemigo[m
[32m+[m[32m    } else if(ataqueJugador == 'TIERRA' && ataqueEnemigo == 'AGUA') {[m
[32m+[m[32m        crearMensaje("GANASTE")[m
[32m+[m[32m        vidasEnemigo--[m
[32m+[m[32m        spanVidasEnemigo.innerHTML = vidasEnemigo[m
[32m+[m[32m    } else {[m
[32m+[m[32m        crearMensaje("PERDISTE")[m
[32m+[m[32m        vidasJugador--[m
[32m+[m[32m        spanVidasJugador.innerHTML = vidasJugador[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    revisarVidas()[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction revisarVidas() {[m
[32m+[m[32m    if (vidasEnemigo == 0) {[m
[32m+[m[32m        crearMensajeFinal("LO SIENTO PERDISTE")[m
[32m+[m[32m    } else if (vidasJugador == 0) {[m
[32m+[m[32m        crearMensajeFinal("MUY BIEN GANASTE!")[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mfunction crearMensaje(resultado) {[m
[32m+[m[32m    let sectionMensajes = document.getElementById('resultado')[m
[32m+[m[32m    let ataquesDelJugador = document.getElementById('ataques-del-jugador')[m
[32m+[m[32m    let ataquesDelEnemigo = document.getElementById('ataques-del-enemigo')[m
[32m+[m
[32m+[m[32m    let nuevoAtaqueDelJugador = document.createElement('p')[m
[32m+[m[32m    let nuevoAtaqueDelEnemigo = document.createElement('p')[m
[32m+[m
[32m+[m[32m    sectionMensajes.innerHTML = resultado[m
[32m+[m[32m    nuevoAtaqueDelJugador.innerHTML = ataqueJugador[m
[32m+[m[32m    nuevoAtaqueD