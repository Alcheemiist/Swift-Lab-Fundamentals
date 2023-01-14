//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by eelaazmi on 12/1/2023.
//

import UIKit


class ViewController: UIViewController {
    var count = 0
    var light = true
    
    @IBOutlet var Button: UIButton!

    @IBAction func Pre(_ sender: Any) {
        count += 1
        Button.setTitle( count.formatted(), for: .normal)
        view.backgroundColor = light ? .yellow : .white
        light.toggle()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Button.setTitle( count.formatted(), for: .normal)
    }

}

