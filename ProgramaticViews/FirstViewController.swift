//
//  FirstViewController.swift
//  ProgramaticViews
//
//  Created by Prashant G on 10/19/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
                
        setUpNextButton()
        
        setButtonConstraints()
        
    }
    
    
    func setButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    

    func setUpNextButton()  {
        
        nextButton.backgroundColor = .white
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.setTitleColor(.red, for: .normal)
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        
    }
    
    @objc func nextButtonTapped()  {
        
        let secondScreen = SecondViewController()
        secondScreen.title = "Second Screen"
        
        navigationController?.pushViewController(secondScreen, animated: true)
        
    }

}
