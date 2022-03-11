//
//  ViewController.swift
//  poo
//
//  Created by LuisRomero on 14/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelTitulo: UILabel!
    
    var objetoMazda3Mini:Mazda3Mini?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitulo.text = "Fabrica de Automoviles"
        
        
    }
    
    
    @IBAction func createObjeto(_ sender: UIButton) {
    
        objetoMazda3Mini = Mazda3Mini()
        print("objeto creado")
    }
    
    
    @IBAction func mostrarPropiedades(_ sender: UIButton) {
        
        
    
        print("El carro Mazda 3 es tamano \(objetoMazda3Mini!.tamanio), tiene \(objetoMazda3Mini!.numeroPuertas), su color es \(objetoMazda3Mini!.color) y su precio es de \(objetoMazda3Mini!.precio) y su carga es de \(objetoMazda3Mini!.porcentajeCarga)")
    
    }
    
    
    @IBAction func encender(_ sender: UIButton) {
        objetoMazda3Mini!.encender()
        
    
    }
    
    @IBAction func acelerar(_ sender: UIButton) {
        objetoMazda3Mini!.acelerar()
        
    }
    
    
    @IBAction func recargar(_ sender: UIButton) {
        
        
    }
    
    override func loadView() {
        super.loadView()
        print("Se activo la func loadView")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("se activo la func viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("se activo la func viewDidAppear")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("Se activo la func viewDidDisappear")
        
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        print("se activo la func didReceiveMemoryWarning")
    }
    
    
    

}

