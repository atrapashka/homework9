//
//  ViewController.swift
//  homework9.3.6.3
//
//  Created by Alehandro on 27.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    private var label: UILabel!
    private var start: UIButton!
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .systemGray
        
        start = UIButton()
        label = UILabel()
        
        start.backgroundColor = .white
        start.setTitle("S T A R T", for: .normal)
        start.setTitleColor(.black, for: .normal)
        start.addTarget(self, action: #selector(onStartButton), for: .touchUpInside)
        
        label.text = "M O V E   T H I S   B U T T O N !"
        label.textColor = .systemPink
        label.textAlignment = .center
        label.backgroundColor = .systemGray6
        
        customView.addSubview(start)
        customView.addSubview(label)
        
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
        let width: CGFloat = 150
        let height: CGFloat = 50
        start.frame = CGRect(x: view.bounds.midX - width / 2,
                              y: view.bounds.midY - height / 2,
                              width: width,
                              height: height)
        start.layer.cornerRadius = 0.1 * start.bounds.size.width
        
        label.frame = CGRect(x: view.bounds.midX - view.bounds.maxX / 2,
                             y: view.bounds.minY + 325,
                             width: view.bounds.maxX,
                             height: 50)
    }
    
    @objc func onStartButton() {
        let viewController = UIStoryboard(name: "GameScreen", bundle: Bundle.main).instantiateInitialViewController() as! GameScreen
        present(viewController, animated: true)
    }
}

