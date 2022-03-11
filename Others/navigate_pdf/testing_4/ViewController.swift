//
//  ViewController.swift
//  testing_4
//
//  Created by LuisRomero on 23/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var contenidoCeldas = ["pdf1","pdf2","pdf3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contenidoCeldas.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
            celda.textLabel?.text = contenidoCeldas[indexPath.row]
            
            
            //agregar imagen al tableView
            
            celda.imageView!.image = UIImage(named: "Libro.jpg")
            
            return celda
        }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let idPdfSeleccionado = indexPath.row
        
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
    }
    
    //da permiso ala fila para q sea editada
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool{
        return true
    }
    //se procede con la eliminacion de la fila seleccionada
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
       
        if editingStyle == .delete{
            contenidoCeldas.remove(at: indexPath.row)
                tableView.reloadData()
           
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pantallaDosSegue" {
            let idPdfSeleccionadoRecibido = sender as! Int
            
            let objPantalla2:ViewController2 = segue.destination as! ViewController2
            
            objPantalla2.nombrePdfRecibido = contenidoCeldas[idPdfSeleccionadoRecibido]
            
        }
    }


}

