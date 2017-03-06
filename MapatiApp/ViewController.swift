//
//  ViewController.swift
//  MapatiApp
//
//  Created by erdem on 03/03/2017.
//  Copyright © 2017 erdem. All rights reserved.
//

import UIKit
import Firebase
class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginBtnn(_ sender: Any) {

        
        let userName = userNameTextField.text
        let password = passwordTextField.text
     
        FIRAuth.auth()?.signIn(withEmail: userName!, password: password!, completion: { (user, error) in
            if error != nil{
                // Hatalı giriş
                let alert = UIAlertController(title: "Hatta!", message: "Yanlış Kullanıcı Adı veya Şifre", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Tamam", style: .default ,handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else{
                //Başarılı giriş
                let alert = UIAlertController(title: "Başarılı", message: "Giriş Başarılı", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Tamam", style: .default ,handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        })
    
    }
}

