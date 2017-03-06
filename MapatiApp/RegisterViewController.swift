//
//  RegisterViewController.swift
//  MapatiApp
//
//  Created by erdem on 03/03/2017.
//  Copyright © 2017 erdem. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func creatAcountBtn(_ sender: Any) {
        
        let userName = userNameTextField.text
        let password = passwordTextField.text
        
        FIRAuth.auth()?.createUser(withEmail: userName!, password: password!, completion: { (user, error) in
            if error != nil{
            //Hesap Oluşturulamadı 
                let alert = UIAlertController(title: "Hata!", message: "Hesap Oluşturulamadı", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Tamam", style: .default ,handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else{
                //Başarılı giriş
                let alert = UIAlertController(title: "Tebrikler", message: "Kayıt işleminiz gerçekleştirildi.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Tamam", style: .default ,handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
            
        })
        
        
    }
    
}
