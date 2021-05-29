//
//  ViewController.swift
//  logInCore
//
//  Created by Aishu on 27/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usnTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logInTapped(_ sender: Any) {
        
        guard let usnfeild = usnTxt.text, !usnfeild.isEmpty,
            let pswdfeild = passwordTxt.text, !pswdfeild.isEmpty else{
               showAlert()
                return
             
        }
        // Storing to Coredata
        
        let dict = ["usn": usnTxt.text,"password": passwordTxt.text]
        Database.shareInstance.save(object: dict as! [String : String])
        
    }
    
    func showAlert(){
        let alert = UIAlertController(title: "Try again", message:"Missing feild data", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style:.cancel, handler: { action in print("tapped Dismiss")}))
        present(alert, animated: true)
    }
    
    
}


