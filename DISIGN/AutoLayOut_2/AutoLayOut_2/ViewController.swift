//
//  ViewController.swift
//  AutoLayOut_2
//
//  Created by LuisRomero on 24/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        
        
        let backgroundImageView: UIImageView = {
           let iv = UIImageView()
            iv.image = UIImage(named: "background9")
            iv.contentMode = .scaleAspectFill
            iv.alpha = 1
            return iv
        }()
        
        
        let logoImageView: UIImageView = {
           let iv = UIImageView()
            iv.image = UIImage(named: "moka")
            iv.contentMode = .scaleAspectFill
            iv.alpha = 1
            return iv
        }()
        
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(greenView)
        
        //[redView, blueView, greenView].forEach{ view.addSubview($0)}
        
        backgroundImageView.anchor(top: view.topAnchor,
                                   leading: view.leadingAnchor,
                                   bottom: view.bottomAnchor,
                                   trailing: view.trailingAnchor,
                                   padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        
        
        
        
        redView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                       leading: nil,
                       bottom: nil,
                       trailing: view.safeAreaLayoutGuide.trailingAnchor,
                       padding: .init(top: 0, left: 0, bottom: 0, right: 12),
                       size: .init(width: 100, height: 0))
        redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
        
        
        
    
        blueView.anchor(top: redView.bottomAnchor,
                        leading: nil,
                        bottom: nil,
                        trailing: redView.trailingAnchor,
                        padding: .init(top: 12, left: 0, bottom: 0, right: 0))
//        blueView.widthAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
//        blueView.heightAnchor.constraint(equalTo: redView.heightAnchor).isActive = true
        blueView.anchorSize(to: redView)
        
        greenView.anchor(top: redView.topAnchor,
                        leading: view.safeAreaLayoutGuide.leadingAnchor,
                        bottom: blueView.bottomAnchor,
                        trailing: redView.leadingAnchor,
                        padding: .init(top: 0, left: 12, bottom: 0, right: 12))
        
        
        logoImageView.anchor(top: greenView.bottomAnchor,
                             leading: nil,
                             bottom: nil,
                             trailing: nil,
                             padding: .init(top: 20, left: 50, bottom: 0, right: 50)
        )
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        
//        let purpleView = UIView()
//        purpleView.backgroundColor = UIColor.purple
//        view.addSubview(purpleView)
//        purpleView.fillSuperView()
        
        
    }
    
    


}

extension UIView {
    
    func fillSuperView() {
        anchor(top: superview?.topAnchor,
               leading: superview?.leadingAnchor,
               bottom: superview?.bottomAnchor,
               trailing: superview?.trailingAnchor)
    }
    
    func anchorSize(to view: UIView){
            widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
    
        
        
        
        

    }
    
}

