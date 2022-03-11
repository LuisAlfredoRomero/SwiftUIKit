
import UIKit
import Vision
import CoreML

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func didReceiveMemoryWarning() {
        print("didReceiveMemoryWarning")
    }
    
     
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    //variables
    
    //IBOutlets
    
    @IBOutlet weak var dataImage: UIImageView!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    //IBActions
    
    @IBAction func tomarFoto(_ sender: Any) {
    }
    
    @IBAction func selecionarFoto(_ sender: Any) {
    }
    
    //Functions
    
    
    
    //System functions


}

