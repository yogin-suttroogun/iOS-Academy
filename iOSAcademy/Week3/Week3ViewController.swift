//
//  Week3ViewController.swift
//  iOSAcademy
//
//  Created by Suttroogun Yogin on 11/01/2024.
//

import UIKit

class Week3ViewController: UIViewController {
    
    @IBOutlet weak var usernameTxtFld: UITextField!
    @IBOutlet weak var forgotUsernameBtn: UIButton!
    @IBOutlet weak var forgotPasswordBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        guard
            let sender = sender as? UIButton
        else { return }
        
        switch sender {
        case forgotPasswordBtn:
            segue.destination.navigationItem.title = "Forgot Password"
        case forgotUsernameBtn:
            segue.destination.navigationItem.title = "Forgot Username"
        default:
            segue.destination.navigationItem.title = usernameTxtFld.text
        }
        
    }
    
    // MARK: - Bonus: Navigation using code
    
    @IBAction func LoginButtonTap(_ sender: Any) {
        let destinationViewController = Week3DestinationViewController()
        destinationViewController.view.backgroundColor = .lightGray
//        self.navigationController?.pushViewController(destinationViewController, animated: true)
        self.navigationController?.present(destinationViewController, animated: true)
    }
}

