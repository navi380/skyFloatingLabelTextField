//
//  ViewController.swift
//  ES-UIdesign
//
//  Created by Naveed Tahir on 08/09/2021.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var uiStackViewForAccountField: UIStackView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var uiAmountStackViewField: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.configureTextArea()
        self.uiDesignConfigurations()
    }
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
}
