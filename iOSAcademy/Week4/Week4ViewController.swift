//
//  Week4ViewController.swift
//  iOSAcademy
//
//  Created by Suttroogun Yogin on 26/01/2024.
//

import UIKit

class Week4ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "Hello".localised()
    }
}


extension String {
    func localised() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localizable",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
}
