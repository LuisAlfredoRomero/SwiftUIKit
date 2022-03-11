//
//  ViewController.swift
//  machineLearningPhotos
//
//  Created by LuisRomero on 14/01/22.
//

import UIKit
import Vision
import CoreML

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dataImage: UIImageView!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBAction func tomarFoto(_ sender: Any) {
    }
    
    @IBAction func seleccionarFoto(_ sender: Any) {
    }
    
    func detectarImagenes(){
        dataLabel.text = "Cargando..."
        
        guard let model = try? VNCoreMLModel(for: GoogLeNetPlaces().model) else {
            print("Ocurrio un error no se pudo crear el modelo")
            
            return
        }
        
        let peticion = VNCoreMLRequest(model: model){(request, error) in
            
            guard let resultados = request.results as? [VNClassificationObservation],
                  let primerResultado = resultados.first else {
                      print("No se encontraron resultados")
                      return
                  }
        }
        
        
        
    }
    
    
    
    


}

