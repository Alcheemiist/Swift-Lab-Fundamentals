//
//  ViewController.swift
//  TicTacToe
//
//  Created by eelaazmi on 14/1/2023.
//

import UIKit

class ViewController: UIViewController {
    enum Turn {
        case X
        case O
    }
    
    var firstTurn = Turn.X
    var currentTurn = Turn.X
    
    var X = "X"
    var O = "O"
    var Board = [UIButton]()
    
    
    @IBOutlet weak var LabelTurn: UILabel!
    
    @IBOutlet var a1: UIButton!
    @IBOutlet var a2: UIButton!
    @IBOutlet var a3: UIButton!
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    @IBOutlet var c1: UIButton!
    @IBOutlet var c2: UIButton!
    @IBOutlet var c3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
        
        // Do any additional setup after loading the view.
    }
    func initBoard()
    {
        Board.append(a1)
        Board.append(a2)
        Board.append(a3)
        Board.append(b1)
        Board.append(b2)
        Board.append(b3)
        Board.append(c1)
        Board.append(c2)
        Board.append(c3)
    }


    @IBAction func TapStart(_ sender: UIButton) {
        
        addToBoard(sender)
        if (fullBoard())
        {
            resultAlert(title: "Draw")
        }
        
    }
    
    func resultAlert(title : String ){
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (_) in self.resetBoard()}))
        self.present(ac, animated: true )
    }
    
    func resetBoard()
    {
        for button in Board{
            button.setTitle( nil, for: .normal)
            button.isEnabled = true
            
        }
        
        // change first turn
    }
    func fullBoard() -> Bool {
        
        for button in Board
        {
            if (button.title(for: .normal) == nil)
            {
                return false
            }
        }
        return true
        
    }
    func addToBoard(_ sender : UIButton)
    {
        if (sender.title(for: .normal) == nil)
        {
            if (currentTurn == Turn.X)
            {
                sender.setTitle(X, for: .normal)
                currentTurn = Turn.O
                LabelTurn.text = O
            }
            else if (currentTurn == Turn.O)
            {
                sender.setTitle(O, for: .normal)
                currentTurn = Turn.X
                LabelTurn.text = X
            }
        }
        sender.isEnabled = false
    }
    
}

