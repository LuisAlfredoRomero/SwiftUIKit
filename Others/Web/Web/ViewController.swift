//
//  ViewController.swift
//  Web
//
//  Created by LuisRomero on 5/01/22.
//
import WebKit
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textField: UITextField!
    
    var palabra:String?
    
    
    override func viewDidLoad() {
        /*
         https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=sega
         */
        
    }
    
    
    @IBAction func Buscar(_ sender: Any) {
        
        palabra =  textField.text!
        
        let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!.replacingOccurrences(of: " ", with: "%20"))"
        
        let objetoURL = URL(string:urlCompleto)
        let session = URLSession.shared
               
        let tarea = session.dataTask(with: objetoURL!) { (datos, respuesta, error) in
            
            if error != nil{
                print(error!)
            }else{
                do{
                    let json = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    
                    //print(json)
                    
                    let querySubJson = json["query"] as! [String:Any]
                    //print(querySubJson)
                    let pagesSubJson = querySubJson["pages"] as! [String:Any]
                    //print(pagesSubJson)
                    
                    let pageId = pagesSubJson.keys
                    let primeraLave = pageId.first!
                                        
                    let idSubJson = pagesSubJson[primeraLave] as! [String:Any]
                    //print(idSubJson)
                    let extractStringHtml = idSubJson["extract"] as! String
                    //print(extractStringHtml)
                    DispatchQueue.main.sync(execute: {
                        
                        if extractStringHtml == ""{
                               self.webView.loadHTMLString("Palabra mal escrita", baseURL:nil)
                           }else{
                               self.webView.loadHTMLString(extractStringHtml, baseURL: nil)
                           }
                    })
                    
                    
                }catch {
                    print("EL procesamiento del Json tuvo un error")
                }
            }
 
        }
        tarea.resume()
    }
    


}

