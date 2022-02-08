//
//  SecondViewController.swift
//  homework9
//
//  Created by Alehandro on 22.01.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var data = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(data)

        // Do any additional setup after loading the view.
    }
    @IBAction func onContinueButton(_ sender: Any) {
        let viewController = UIStoryboard(name: "ThirdStoryboard", bundle: Bundle.main).instantiateInitialViewController() as! ThirdViewController
        viewController.data = data
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
