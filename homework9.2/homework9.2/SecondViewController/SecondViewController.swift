//
//  SecondViewController.swift
//  homework9.2
//
//  Created by Alehandro on 24.01.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var engineLabel: UILabel!
    
    var carStruct = car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manufacturerLabel.text = carStruct.manufacturer
        modelLabel.text = carStruct.model
        engineLabel.text = carStruct.engine

        // Do any additional setup after loading the view.
    }
    @IBAction func onBackButton(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateInitialViewController() as! ViewController
        present(viewController, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
