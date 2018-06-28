//
//  PrivacyVC.swift
//  CircleFitness
//
//  Created by 蔡祥霖 on 2017/5/18.
//  Copyright © 2017年 woody_tsai. All rights reserved.
//

import UIKit

class PrivacyVC: UIViewController {
    let textView = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "PrivacyPolicy_Text".local
        textView.isEditable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textView)
        if #available(iOS 11.0, *) {
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor ).isActive = true
            textView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        } else {
            textView.topAnchor.constraint(equalTo: view.topAnchor ).isActive = true
            textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        }
        let x = UIBarButtonItem(title: "X", style: .plain, target: self, action: #selector(dismissNav))
        navigationItem.rightBarButtonItems = [x]
        textView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        textView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
//        textView.isScrollEnabled = false //uncomment this line to fix bug
        textView.isScrollEnabled = true

    }
    @objc func dismissNav(){
        self.navigationController?.dismiss(animated: true, completion: nil)
    }


}

