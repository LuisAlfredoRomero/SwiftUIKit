//
//  ViewController.swift
//  autoLayout_6
//
//  Created by LuisRomero on 10/01/22.
//

import UIKit

class ViewController: UIViewController {

    //variables
    let imagenPerfil = UIImageView()
    var constraintToApply = [NSLayoutConstraint]()
    let nombrePersona = UILabel()
    let cargoPersonal = UILabel()
    let numeroContacto = UILabel()
    let email = UILabel()
    
    //funciones
    
    func crearImagenyCargarlaconAutoLayout(nombredeImagen: String){
        imagenPerfil.translatesAutoresizingMaskIntoConstraints = false
        imagenPerfil.image = UIImage(named: nombredeImagen)
        imagenPerfil.contentMode = UIView.ContentMode.scaleAspectFill
        imagenPerfil.clipsToBounds = true
        self.view.addSubview(imagenPerfil)
        
        let centerXConstraint = imagenPerfil.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0)
        
        let centerYConstraint = imagenPerfil.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0)
        
        let widthConstraint =  imagenPerfil.widthAnchor.constraint(equalToConstant: 175)
        let heigthConstraint = imagenPerfil.heightAnchor.constraint(equalToConstant: 175)
        
        constraintToApply.append(centerXConstraint)
        constraintToApply.append(centerYConstraint)
        constraintToApply.append(widthConstraint)
        constraintToApply.append(heigthConstraint)
        
    }
    
    func asignarNombreyColocarAutolayout(nombre: String){
        nombrePersona.text = nombre
        nombrePersona.textColor = UIColor.black
        nombrePersona.translatesAutoresizingMaskIntoConstraints = false
        nombrePersona.textAlignment = NSTextAlignment.center
        nombrePersona.font = UIFont(name: "Avenir Next", size: 20)
        self.view.addSubview(nombrePersona)
        
        let leadingConstraint = nombrePersona.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailingConstraint = nombrePersona.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let topConstraint = nombrePersona.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 18)
        let heigthConstraint = nombrePersona.heightAnchor.constraint(equalToConstant: 25)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailingConstraint)
        constraintToApply.append(topConstraint)
        constraintToApply.append(heigthConstraint)
        
        
    }
    
    func asignarCargoyColocarAutolayout(cargo: String){
        cargoPersonal.text = cargo
        cargoPersonal.textColor = UIColor.black
        cargoPersonal.translatesAutoresizingMaskIntoConstraints = false
        cargoPersonal.textAlignment = NSTextAlignment.center
        cargoPersonal.font = UIFont(name: "Avenir Next", size: 16)
        self.view.addSubview(cargoPersonal)
        
        let leadingConstraint = cargoPersonal.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 150)
        let trailingConstraint = cargoPersonal.leadingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 150)
        let topConstraint = cargoPersonal.topAnchor.constraint(equalTo: self.imagenPerfil.bottomAnchor, constant: 0)
        let heigthConstraint = cargoPersonal.heightAnchor.constraint(equalToConstant: 20)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailingConstraint)
        constraintToApply.append(topConstraint)
        constraintToApply.append(heigthConstraint)
        
    }
    
    func crearNumeroContacto(numero: String){
        numeroContacto.text = numero
        numeroContacto.textColor = UIColor.black
        numeroContacto.translatesAutoresizingMaskIntoConstraints = false
        numeroContacto.textAlignment = NSTextAlignment.left
        numeroContacto.font = UIFont(name: "Avenir Next", size:16)
        self.view.addSubview(numeroContacto)
        
        let leadingConstraint = numeroContacto.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailignConstraint = numeroContacto.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0)
        let bottomConstraint = numeroContacto.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 18)
        let heightConstraint = numeroContacto.heightAnchor.constraint(equalToConstant: 60)
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailignConstraint)
        constraintToApply.append(bottomConstraint)
        constraintToApply.append(heightConstraint)
        
        
    }
    
    func crearEmail(correo: String){
        email.text = correo
        email.textColor = UIColor.black
        email.translatesAutoresizingMaskIntoConstraints = false
        email.textAlignment = NSTextAlignment.right
        email.font = UIFont(name: "Avenir Next", size:16)
        self.view.addSubview(email)
        
        let leadingConstraint = email.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0)
        let trailignConstraint = email.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
        let heightConstraint = email.heightAnchor.constraint(equalToConstant: 30)
        
        let bottomConstraint = email.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0)
        
        
        constraintToApply.append(leadingConstraint)
        constraintToApply.append(trailignConstraint)
        
        constraintToApply.append(heightConstraint)
        
        constraintToApply.append(bottomConstraint)
        
        
    }
    
    
    
    
    
    /*<------------------------------------------------->*/
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        crearImagenyCargarlaconAutoLayout(nombredeImagen: "here")
        asignarNombreyColocarAutolayout(nombre: "Luis Romero")
        asignarCargoyColocarAutolayout(cargo: "iOS Developer")
        crearNumeroContacto(numero: "986884844")
        crearEmail(correo: "alfredo.romero.r@outlook.com")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        NSLayoutConstraint.activate(constraintToApply)
    }
    
    
  
    
    


}

