//
//  ViewController2.swift
//  testing_4
//
//  Created by LuisRomero on 3/01/22.
//
import WebKit
import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet var vistaWeb: WKWebView!
    
    
    
    var nombrePdfRecibido:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        mostrarPdf()
       
    }
   
    
    func mostrarPdf(){
        //1: Direccion del archivo pdf
        let direccionPdf = URL(fileURLWithPath:  Bundle.main.path (forResource: nombrePdfRecibido!, ofType: "pdf", inDirectory: "PDF")!)
        
        //2: transformar achivo pdf a data
        let datosPdf = try? Data(contentsOf: direccionPdf)
        
        //3: mostrar datos en el webview
        vistaWeb.load(datosPdf!, mimeType: "application/pdf", characterEncodingName: "utf-8", baseURL: direccionPdf)
        
        
    }
    

}
