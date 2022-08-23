//
//  ViewController.swift
//  EVO.IOS2
//
//  Created by Plancquet Frederic on 23/08/2022.
//

import UIKit

class LaunchViewController: UIViewController {
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var googleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func googleConnection(_ sender: Any) {
        
        let detailVC = storyboard!.instantiateViewController(withIdentifier: "ConnectionViewController") as! ConnectionViewController
        detailVC.stringImg = "google_header"
        self.present(detailVC, animated: true)
        




        
    }
    
    @IBAction func facebookConnection(_ sender: Any) {
       
        let detailVC = storyboard!.instantiateViewController(withIdentifier: "ConnectionViewController") as! ConnectionViewController
        detailVC.stringImg = "faceook_header"
        self.present(detailVC, animated: true)
        
        



    }
}

