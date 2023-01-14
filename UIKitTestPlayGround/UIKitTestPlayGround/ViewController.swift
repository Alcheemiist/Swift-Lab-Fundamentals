//
//  ViewController.swift
//  UIKitTestPlayGround
//
//  Created by eelaazmi on 13/1/2023.
//

import UIKit

class ViewController: UIViewController {
    var counter : Int = 0
    
    @IBOutlet var Tablelabel: UILabel!
    @IBOutlet var titleNav: UINavigationItem!
    @IBOutlet var InputText: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleNav.title = "Alchemist"
        titleNav.titleView = UIView()
        Tablelabel.text = "Counter 0"
        InputText.text = "....."
        
     
    }
    

    @IBAction func ButtonPressed(_ sender: Any) {
        counter += 1
        Tablelabel.text = "Counter \(counter)"
    }
    @IBOutlet var table: UITableView!
    
    @IBAction func inputtext(_ sender: Any) {
        
        
    }
}

