//
//  ViewController.swift
//  Alerts and Git
//
//  Created by Andrew Sagatelov on 08.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    enum filmType: String {
        case film1 = "Spider man"
        case film2 = "Venom"
        
    }
    
    let handler: (_ filmType: filmType) -> (UIAlertAction) -> Void = {
        filmType in
        return {
            action in
            print(filmType.rawValue)
        }
        
    }
    @IBAction func alertAction(_ sender: Any) {
        let alert = UIAlertController(title: "Photo access", message: "Your photo is not the good pass", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .default, handler: handler(.film1))
        let alertActionCancel = UIAlertAction(title: "cancel", style: .cancel, handler: handler(.film2))
        
        alert.addAction(alertAction)
        alert.addAction(alertActionCancel)
        
        present(alert, animated: true)
        
    }
    
   
    
    @IBAction func sheetAction(_ sender: Any) {
        
        let alert = UIAlertController(title: "Access", message: "you password is not alow", preferredStyle: .actionSheet)
        
        let alertAction = UIAlertAction(title: "ok", style: .default)
        let alertActionCancel = UIAlertAction(title: "cancel", style: .cancel)
        
        alert.addAction(alertAction)
        alert.addAction(alertActionCancel)
        
        present(alert, animated: true)
    }
    
    
}

