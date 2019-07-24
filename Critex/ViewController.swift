//
//  ViewController.swift
//  Critex
//
//  Created by Habibu Zaman on 7/23/19.
//  Copyright © 2019 Habibu Zaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension UITextField {
    
    func setLocationTextView()  {
        
        self.frame.size.height = 50
        self.layer.cornerRadius = self.frame.height / 2
        
        //To apply Shadow
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize.zero // Use any CGSize
        self.layer.shadowColor = UIColor.gray.cgColor
        
        //To apply padding
        let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = UITextField.ViewMode.always
    }
}


@IBDesignable class Card: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 13
    @IBInspectable var shadowColor: UIColor? = UIColor.black
    
    @IBInspectable var shadowOffsetWidth: Int = 0
    @IBInspectable var shadowOffsetHeight: Int = 1
    
    @IBInspectable var shadowOpacity: Float = 0.3
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
    }
}

