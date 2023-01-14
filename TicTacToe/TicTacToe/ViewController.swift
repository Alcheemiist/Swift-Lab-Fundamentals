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
    var Xcount = 0
    var Ocount = 0
    
    @IBOutlet weak var LabelTurn: UILabel!
    
    @IBOutlet var Oresult: UILabel!
    @IBOutlet var a1: UIButton!
    @IBOutlet var a2: UIButton!
    @IBOutlet var a3: UIButton!
    @IBOutlet var Xresult: UILabel!
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    @IBOutlet var c1: UIButton!
    @IBOutlet var c2: UIButton!
    @IBOutlet var c3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initBoard()
//        Xresult.text = "X : 0"
//        Oresult.text = "O : 0"
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


    @IBAction func TapStart(_ sender: UIButton)
    {
        addToBoard(sender)
        if checkVectory(O)
        {
            Ocount += 1
            resultAlert(title: "O Wins !!")
        }
        else if checkVectory(X)
        {
            Xcount += 1
            resultAlert(title: "X Wins !!")
        }
        
        if (fullBoard())
        {
            resultAlert(title: "Draw")
        }
        
    }
   
    
    func checkVectory(_ s : String) -> Bool
    {
       
        if (isCheck(Board[0],  s) && isCheck(Board[1],  s) && isCheck(Board[2],  s) )
        {
            return true
        }
        if (isCheck(Board[3],  s) && isCheck(Board[4],  s) && isCheck(Board[5],  s) )
        {
            return true
        }
        if (isCheck(Board[6],  s) && isCheck(Board[7],  s) && isCheck(Board[8],  s) )
        {
            return true
        }
        
        if (isCheck(Board[0],  s) && isCheck(Board[3],  s) && isCheck(Board[6],  s) )
        {
            return true
        }
        if (isCheck(Board[1],  s) && isCheck(Board[4],  s) && isCheck(Board[7],  s) )
        {
            return true
        }
        if (isCheck(Board[2],  s) && isCheck(Board[5],  s) && isCheck(Board[8],  s) )
        {
            return true
        }
        if (isCheck(Board[2],  s) && isCheck(Board[4],  s) && isCheck(Board[6],  s) )
        {
            return true
        }
        if (isCheck(Board[0],  s) && isCheck(Board[4],  s) && isCheck(Board[8],  s) )
        {
            return true
        }
     
        return false
    }
    
    func isCheck(_ sender: UIButton,_ t: String) -> Bool
    {
        if (sender.title(for: .normal) == t) {
            return true
        }
        else
        {
            return false
        }
    }
    
    func resultAlert(title : String ){
        Oresult.text = "O : \(Ocount)"
//        Xresult.text = "X : \(Xcount)"
        let ac = UIAlertController(title: title, message: "O : \(Ocount) \n  X : \(Xcount)", preferredStyle: .actionSheet)
        
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

