//
//  BetController.swift
//  HaBet
//
//  Created by Sujit Molleti on 2/22/20.
//  Copyright © 2020 Sujit Molleti. All rights reserved.
//

import UIKit

protocol BetDelegate{
    func createBet(activityText: String, opponentText: String, endDateText: String, amountText: String)
}

class BetController: UIViewController {
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var activityTextField: UITextField!
    @IBOutlet weak var opponentTextField: UITextField!
    @IBOutlet weak var endDateTextField: UITextField!
    @IBOutlet weak var betAmountTextField: UITextField!
    
    var betDelegate: BetDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendButtonClicked(_ sender: Any) {
        
        //create Bet function inside of ViewController
        
        //var activityText: String = activityTextField.text
        
        betDelegate?.createBet(activityText: activityTextField.text!, opponentText: opponentTextField.text!, endDateText: endDateTextField.text!, amountText: betAmountTextField.text!)
        navigationController?.popViewController(animated: true)
        
        print("created bet")
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
