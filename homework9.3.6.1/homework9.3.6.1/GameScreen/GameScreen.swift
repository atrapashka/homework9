//
//  GameScreen.swift
//  homework9.3.6.1
//
//  Created by Alehandro on 27.01.22.
//

import UIKit

class GameScreen: UIViewController {
    
    private var label: UILabel!
    private var button: UIButton!
    var count = 1
    
    //MARK: - UIViewController Lyfecycle
    //MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        customView.backgroundColor = .systemGray
        
        button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Tap Me!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(onButton), for: .touchUpInside)
        customView.addSubview(button)
        
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Layout
    //MARK: -
    
    override func viewWillLayoutSubviews() {
        let width: CGFloat = 100
        let height: CGFloat = 100
        button.frame = CGRect(x: view.bounds.midX - width / 2,
                              y: view.bounds.midY - height / 2,
                              width: width,
                              height: height)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
    }
    
    //MARK: - Actions
    //MARK: -
    
    @objc func onButton() {
        let width: CGFloat = 100
        let height: CGFloat = 100
        
        let limitViewWidth = UIScreen.main.bounds.size.width
        let limitViewHeight = UIScreen.main.bounds.size.height
        
        let numberX = CGFloat.random(in: 0...limitViewWidth - width * 2)
        let numberY = CGFloat.random(in: 0...limitViewHeight - height * 2 - 50)
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        button.frame = CGRect(x: numberX, y: numberY, width: width, height: height)
        button.backgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: 1)
        button.setTitle("\(count)", for: .normal)
        count += 1
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
