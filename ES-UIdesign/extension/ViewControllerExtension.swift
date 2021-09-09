//
//  ViewControllerExtension.swift
//  ES-UIdesign
//
//  Created by Naveed Tahir on 09/09/2021.
//

import Foundation
import UIKit
import SkyFloatingLabelTextField

extension ViewController {
    public func CustomField(field: SkyFloatingLabelTextFieldWithIcon, placeHolder: String, title: String, iconMarginBottom: CGFloat, image: UIImage, tintColor: UIColor, selectedLineColor: UIColor, selectedTitleColor: UIColor, backgroudColor: UIColor) -> SkyFloatingLabelTextFieldWithIcon {
        field.placeholder = placeHolder
        field.title = title
        field.iconMarginBottom = iconMarginBottom
        field.iconImage = image
        field.tintColor = tintColor
        field.selectedLineColor = selectedLineColor
        field.selectedTitleColor = selectedTitleColor
        field.backgroundColor = backgroudColor
        return field
    }
    public func ammountTextField() -> SkyFloatingLabelTextFieldWithIcon{
        return CustomField(field: SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 0, y: 0, width: 100, height: 150), iconType: .image), placeHolder: "Number", title: "Enter Number", iconMarginBottom: 10, image: UIImage(systemName: "trash")!, tintColor: UIColor(hexString: "#0000") , selectedLineColor: UIColor(hexString: "#0000"), selectedTitleColor: UIColor(hexString: "#0000"), backgroudColor: .systemBackground)
    }
    
    public func accountTextField() -> SkyFloatingLabelTextFieldWithIcon{
        return CustomField(field: SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 0, y: 0, width: 100, height: 150), iconType: .image), placeHolder: "Account", title: "Transfer To", iconMarginBottom: 10, image: UIImage(systemName: "trash")!, tintColor: UIColor(hexString: "#0000") , selectedLineColor: UIColor(hexString: "#0000"), selectedTitleColor: UIColor(hexString: "#0000"), backgroudColor: .systemBackground)
    }
    
    @objc public func onClickMethod() {
        print("right bar button item")
    }

   
}
