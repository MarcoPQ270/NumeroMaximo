
let array = ["Mundo", "Gabriel", "Vecino"]
for item in array {
    //print("Hola \(item)")
}

let stock = ["Mouse": 5, "Teclado":20, "Pen drive": 10]
for (dispositivo, cantidad) in stock {
    //print("Se disponen de \(cantidad) unidades de \(dispositivo)")
}

for numero in 1...4 {
      //print(numero)
}

for numero in stride(from: 0, to: 10, by: 2) {
    //print(numero)
}

var contador = 0
while contador < 10 {
    //print("Contador: \(contador)")
    contador += 1
}

contador = 0
repeat {
    //print("Contador: \(contador)")
    contador += 1
} while contador < 10

let promedio = 9
if promedio >= 7 {
    //print("Curso aprobado!")
}

let alumnos = 20
if alumnos < 10 {
    //print("Hoy faltaron muchos alumnos")
} else if alumnos < 17 {
    //print("Vinieron muchos alumnos")
} else {
    //print("Hoy vinieron todos!")
}
//switch
let personajeAnime = "Goku"
switch personajeAnime {
case "Goku":
    print("Kamehameha!!")
case "Vegeta":
    print("Final Flash!!")
default:
    print("nada")
}
//Switch basado en rangos numericos
 let nota=5
switch nota {
case 0...6:
    print("Examen desaprobado")
case 7...10:
    print("Examen aprobado")
default:
    print("Nota inexistente")
}
/*
   La sentencia switch permite crear constantes o variables temporales en cada case para poder usar el valor que se está comparando dentro del cuerpo de ese case , en caso de entrar al mismo. Esta técnica es conocida como value binding (vinculación de valores). Asimismo, se puede utilizar la sentencia where para agregar condiciones adicionales y hacer más específica la comparación de ese
 case . */
let numero = 18
switch numero {
case let x where x%2 == 0:
    print("Número par: \(x)") case let x where x%2 != 0:
        print("Número impar:\(x)")
default:
    print("Nada")
}
/*
 switch para que el flujo del programa continue inmediatamente luego de éste. Se puede decir que ésta es la manera en la que Swift nos permite ignorar determinados case . */
let num = 18
switch num {
case let x where x%2 == 0:
    print("Número par: \(x)") case let x where x%2 != 0:
        print("Número impar:\(x)")
default:
break
}
