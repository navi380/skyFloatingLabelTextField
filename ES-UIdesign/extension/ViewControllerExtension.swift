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
    
    public func CustomField(field: SkyFloatingLabelTextFieldWithIcon, placeHolder: String, title: String, iconMarginBottom: CGFloat, image: UIImage, tintColor: UIColor, selectedLineColor: UIColor, selectedTitleColor: UIColor, backgroudColor: UIColor, iconColor: UIColor) -> SkyFloatingLabelTextFieldWithIcon {
        field.placeholder = placeHolder
        field.title = title
        field.iconMarginBottom = iconMarginBottom
        field.iconImage = image
        field.tintColor = tintColor
        field.selectedLineColor = selectedLineColor
        field.selectedTitleColor = selectedTitleColor
        field.backgroundColor = backgroudColor
        field.selectedIconColor = iconColor
        return field
    }
    public func ammountTextField() -> SkyFloatingLabelTextFieldWithIcon{
        let image = UIImage(systemName: "trash")!
        return CustomField(field: SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 0, y: 0, width: 100, height: 150), iconType: .image), placeHolder: "Number", title: "Enter Number", iconMarginBottom: 10, image: image, tintColor: UIColor(hexString: "#000000") , selectedLineColor: UIColor(hexString: "#0000"), selectedTitleColor: UIColor(hexString: "#000000"), backgroudColor: .systemGray6, iconColor: UIColor(hexString: "#000000"))
    }
    
    public func accountTextField() -> SkyFloatingLabelTextFieldWithIcon{
        return CustomField(field: SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 0, y: 0, width: 100, height: 150), iconType: .image), placeHolder: "Account", title: "Transfer To", iconMarginBottom: 10, image: UIImage(systemName: "trash")!, tintColor: UIColor(hexString: "#000000") , selectedLineColor: UIColor(hexString: "#0000"), selectedTitleColor: UIColor(hexString: "#000000"), backgroudColor: .systemGray6, iconColor: UIColor(hexString: "#000000"))
    }
    
    @objc public func onClickMethod() {
        print("right bar button item")
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
        else {
            // if keyboard size is not available for some reason, dont do anything
            return
        }
       
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: keyboardSize.height , right: 0.0)
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        // reset back the content inset to zero after keyboard is gone
        scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    func configureTextArea(){
        self.textArea.layer.borderWidth = 0.5
        self.textArea.layer.cornerRadius = 10
        self.textArea.layer.borderColor = #colorLiteral(red: 0.1647864282, green: 0.1607811153, blue: 0.160713166, alpha: 1)
        self.textArea.delegate = self
        self.textArea.placeholder = "Give a short Summary"
        self.textArea.textContainerInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func uiDesignConfigurations(){
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let rightBtn = UIBarButtonItem(image: UIImage(systemName: "qrcode"), style: .plain, target: self, action: #selector(onClickMethod))
        self.navigationItem.rightBarButtonItem = rightBtn
        
        uiStackViewForAccountField.clipsToBounds = true
        uiAmountStackViewField.clipsToBounds = true
        self.uiStackViewForAccountField.spacing = 10.0
        self.uiAmountStackViewField.spacing = 10.0
    
        self.uiAmountStackViewField.addArrangedSubview(ammountTextField())
        self.uiStackViewForAccountField.addArrangedSubview(accountTextField())
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}
