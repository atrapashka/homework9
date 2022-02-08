//
//  FifthViewController.swift
//  homework9
//
//  Created by Alehandro on 22.01.22.
//

import UIKit

class FifthViewController: UIViewController {
    
    var data = ""
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        
        dataLabel.text = data

        // Do any additional setup after loading the view.
    }
    @IBAction func onStartScreenButton(_ sender: Any) {
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
