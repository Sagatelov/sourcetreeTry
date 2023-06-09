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
        case film3 = "Запах женщины"
        
    }
    
    let handler: (filmType) -> (UIAlertAction) -> Void = { type in
        return { _ in print(type.rawValue)
        }
        
    }
    @IBAction func alertAction(_ sender: Any) {
        let alert = UIAlertController(title: "Photo access", message: "Your photo is not the good pass", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "ok", style: .default, handler: handler(.film1))
        let alertActionCancel = UIAlertAction(title: "cancel", style: .cancel, handler: handler(.film2))
        let filmAction = UIAlertAction(title: "lovely film", style: .default, handler: handler(.film3))
        
        alert.addAction(alertAction)
        alert.addAction(alertActionCancel)
        alert.addAction(filmAction)
        
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

