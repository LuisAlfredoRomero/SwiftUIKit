//
//  ViewController.swift
//  CalculatorApp
//
//  Created by LuisRomero on 3/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
        
    }
    
    func clearAll(){
        workings = ""
        calculatorWorkings.text = ""
        calculatorResults.text = ""
    }
    
    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    
    @IBAction func backTap(_ sender: Any) {
        if(!workings.isEmpty){
            workings.removeLast()
            calculatorWorkings.text = workings
        }
        
    }
    
    
    func addToWorkings(value: String){
        workings = workings + value
        calculatorWorkings.text = workings
    }
    
    
    @IBAction func percentage(_ sender: Any) {
        addToWorkings(value: "%")
    }
    
    
    @IBAction func division(_ sender: Any) {
    addToWorkings(value: "/")
    }
    
    @IBAction func multiplication(_ sender: Any) {
        addToWorkings(value: "x")
    }
    
    @IBAction func subtraction(_ sender: Any) {
        addToWorkings(value: "-")
    }
    
    @IBAction func sum(_ sender: Any) {
        addToWorkings(value: "+")
    }
    
    @IBAction func equal(_ sender: Any) {
        if(validInput()){
            
            let checkedWorkingForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            
            let expression = NSExpression(format: checkedWorkingForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            calculatorResults.text = resultString
        }else{
            let alert = UIAlertController(title: "Invalid Input", message: "Calculator unable to match based on input" , preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
    }
        
    }
    
    func validInput() ->Bool{
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in workings
        {
            if (specialCharacter(char: char)){
                funcCharIndexes.append(count)
            }
            
            count += 1
        }
        
        var previous: Int = -1
        for index in funcCharIndexes{
            
            if(index == 0){
                return false
            }
            
            if(index ==  workings.count - 1){
                return false
            }
            
            if(previous != -1){
                if(index - previous == 1){
                    return false
                }
            }
            
            previous = index
            
        }
        
        
        return true
    }
       
    
    
    func specialCharacter (char: Character) -> Bool{
            if(char == "*"){
                return true
            }
            if (char == "/"){
                return true
            }
            if(char == "+"){
                return true
            }
            
            return false
        }
        
        
    
    func formatResult(result: Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String (format: "%.0f", result)
        }else{
            return String (format: "%.2f", result)
            
        }
    }
    
    
    @IBAction func nine(_ sender: Any) {
        addToWorkings(value: "9")
    }
    
    
    @IBAction func eight(_ sender: Any) {
        addToWorkings(value: "8")
    }
    
    @IBAction func seven(_ sender: Any) {
        addToWorkings(value: "7")
    }
    
    
    @IBAction func six(_ sender: Any) {
        addToWorkings(value: "6")
    }
    
    @IBAction func five(_ sender: Any) {
        addToWorkings(value: "5")
    }
    
    @IBAction func four(_ sender: Any) {
        addToWorkings(value: "4")
    }
    
    
    @IBAction func three(_ sender: Any) {
        addToWorkings(value: "3")
    }
    
    @IBAction func two(_ sender: Any) {
        addToWorkings(value: "2")
    }
    
    @IBAction func one(_ sender: Any) {
        addToWorkings(value: "1")
    }
    
    
    @IBAction func cero(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    
    @IBAction func dot(_ sender: Any) {
        addToWorkings(value: ".")
    }

    
    
}


