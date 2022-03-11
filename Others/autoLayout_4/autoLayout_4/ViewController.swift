//
//  ViewController.swift
//  autoLayout_4
//
//  Created by LuisRomero on 7/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var TLLabel = UILabel()
    var TRLabel = UILabel()
    var BLLabel = UILabel()
    var BRLabel = UILabel()
    
    var constraints = [NSLayoutConstraint]()
    

    func labelAttributes(label:UILabel,t:CGFloat,l:CGFloat,w:CGFloat,h:CGFloat){

    label.backgroundColor=UIColor.orange

    label.text="TL"

    label.textColor=UIColor.black

    label.translatesAutoresizingMaskIntoConstraints=false

    view.addSubview(label)

    let topConstraint = label.topAnchor.constraint(equalTo: self.view.topAnchor, constant: t)

    let leadingConstraint = label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: l)

    let widthConstraint = label.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: w)

    let heightConstraint = label.heightAnchor.constraint(equalTo: self.view.heightAnchor, constant: h)

    arrayConstraints=[topConstraint,leadingConstraint,widthConstraint,heightConstraint]

    NSLayoutConstraint.activate(arrayConstraints)

    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TLLabel.backgroundColor = UIColor.orange
        TLLabel.text = "TL"
        TLLabel.textColor = UIColor.black
        TLLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TLLabel)
        
        let topConstraintTL = TLLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 28)
        let leadingConstraintTL = TLLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 18)
        let widthConstraintTL = TLLabel.widthAnchor.constraint(equalToConstant: 30)
        let heigthConstraintTL = TLLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [topConstraintTL,leadingConstraintTL,widthConstraintTL,heigthConstraintTL])
        
        
        TRLabel.backgroundColor = UIColor.orange
        TRLabel.text = "TR"
        TRLabel.textColor = UIColor.black
        TRLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(TRLabel)
        
        let topConstraintTR = TRLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 28)
        let leadingConstraintTR =  TRLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: -18)
        let widthConstraintTR = TRLabel.widthAnchor.constraint(equalToConstant: 30)
        let heigthConstraintTR = TRLabel.heightAnchor.constraint(equalToConstant: 15)
        
        constraints.append(contentsOf: [topConstraintTR,leadingConstraintTR,widthConstraintTR,heigthConstraintTR])
        
        
        NSLayoutConstraint.activate(constraints)
        
        
        
    }
    
    


}

