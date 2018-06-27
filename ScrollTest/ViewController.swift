//
//  ViewController.swift
//  ScrollTest
//
//  Created by Woody on 2018/6/27.
//  Copyright © 2018年 Woody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension String {
    var local: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
