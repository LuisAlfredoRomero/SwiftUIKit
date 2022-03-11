//
//  ViewController.swift
//  testing_5
//
//  Created by LuisRomero on 3/01/22.
//

import UIKit

class ViewController: UIViewController {
    var contenidoCeldas = ["pdf1","pdf2","pdf3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contenidoCeldas.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
                let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
                celda.textLabel?.text = contenidoCeldas[indexPath.row]
                
                return celda
            }
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let idPdfSeleccionado = indexPath.row
            
            self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "pantallaDosSegue" {
                let idPdfSeleccionadoRecibido = sender as! Int
                
            }
        }
    
    


}

