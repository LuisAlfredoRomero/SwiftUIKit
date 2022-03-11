import UIKit

class Persona{
    
    var nombre:String = "Luis"
    var edad:Int = 34
    var colorCamisa:String = ""
    var color = Colores()
    
    func saludo() -> String{
        
        colorCamisa = color.colorRojo
        
        return "Mi nombres es \(nombre) y mi edad es \(edad) y mi camisa es de color \(colorCamisa)"
    }
    
    
    
}

var objPersona = Persona()

objPersona.saludo()

class Colores{
    var colorAzul:String = "Azul"
    var colorRojo:String = "Rojo"
}
