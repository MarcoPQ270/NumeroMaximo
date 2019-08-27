//Estrucctura de una funcion

func saludar(){
    //print("Ki onda")
}
saludar()

//Funciones - parametros y valores de retorno
func saluda(nombre: String){
    print("Hola \(nombre)!")
}
saluda(nombre: "Gabriel")

func saludaA(nombre: String)-> String{
    return "Hola \(nombre)"
}
let saludo = saludaA(nombre:"Didiere")
print(saludo)
