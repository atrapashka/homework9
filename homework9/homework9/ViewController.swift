//
//  ViewController.swift
//  homework9
//
//  Created by Alehandro on 22.01.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onContinueButton(_ sender: Any) {
        let viewController = UIStoryboard(name: "SecondStoryboard", bundle: Bundle.main).instantiateInitialViewController() as! SecondViewController
        viewController.data = "Data Transfer Item"
        present(viewController, animated: true)
    }
}

