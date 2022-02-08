//
//  ViewController.swift
//  homework9.2
//
//  Created by Alehandro on 24.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onStartButton(_ sender: Any) {
        let viewController = UIStoryboard(name: "SecondStoryboard", bundle: Bundle.main).instantiateInitialViewController() as! SecondViewController
        viewController.carStruct.manufacturer = "Audi"
        viewController.carStruct.model = "S6"
        viewController.carStruct.engine = "4.2 V8"
        present(viewController, animated: true)
    }
    

}

