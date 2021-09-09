//
//  RoundButton.swift
//  ES-UIdesign
//
//  Created by Naveed Tahir on 08/09/2021.
//


import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
        self.layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor
        }
    }
//    override func {
//        super.layoutIfNeeded()
//
//    }
    override func layoutSubviews() {
        super.layoutSubviews()
    }
   
}
