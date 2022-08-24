//
//  ConnectionViewController.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import UIKit

class ConnectionViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var labelImage: UIImageView!
    @IBOutlet weak var connectionButton: UIButton!
    @IBOutlet weak var passwordInput: UITextField!
    var stringImg: String?
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        labelImage.image = UIImage(named: stringImg ?? "")

        


    }
    

    @IBAction func connectionAction(_ sender: Any) {
        //MARK: missing  "@" input valid check in
        
        let predicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}")

        let login = loginInput.text
        let password = passwordInput.text!
        
        if !predicate.evaluate(with: login) || password.isEmpty {
       // if let login = loginInput.text, let pass = passwordInput.text, !login.contains("@") && pass.isEmpty && login.isEmpty  {
            
            let alert = UIAlertController(title: "Error", message: "Login and/or email invalid", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "non", style: .cancel))
            self.present(alert, animated: true)
        
        } else {
            
             let detailVC = storyboard!.instantiateViewController(withIdentifier: "myTabBar")
             detailVC.modalPresentationStyle = .fullScreen
             self.present(detailVC, animated: true)
        }
    }
    

    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true)
    }
}
