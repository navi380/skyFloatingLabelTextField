//
//  ViewController.swift
//  ES-UIdesign
//
//  Created by Naveed Tahir on 08/09/2021.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController {
    
    @IBOutlet weak var uiStackViewForAccountField: UIStackView!

    @IBOutlet weak var uiAmountStackViewField: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        let rightBtn = UIBarButtonItem(image: UIImage(systemName: "qrcode"), style: .plain, target: self, action: #selector(onClickMethod))
        self.navigationItem.rightBarButtonItem = rightBtn
    
        uiStackViewForAccountField.clipsToBounds = true
        uiAmountStackViewField.clipsToBounds = true
        self.uiStackViewForAccountField.spacing = 10.0
        self.uiAmountStackViewField.spacing = 10.0
        self.uiStackViewForAccountField.addArrangedSubview(accountTextField())
        self.uiAmountStackViewField.addArrangedSubview(ammountTextField())
    }
   
}

