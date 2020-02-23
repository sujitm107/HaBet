//
//  BetDetailViewController.swift
//  HaBet
//
//  Created by Sujit Molleti on 2/23/20.
//  Copyright © 2020 Sujit Molleti. All rights reserved.
//

import UIKit

class BetDetailViewController: UIViewController {
//LABELS
    @IBOutlet weak var BetValueLabel: UILabel!
    @IBOutlet weak var StreakLabel: UILabel!
//UIImageView
    @IBOutlet weak var PhotoImageView: UIImageView!
//BUTTONS
    @IBOutlet weak var YesButton: UIButton!
    @IBOutlet weak var CameraButton: UIButton!
    
    var bet: Bet! = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        BetValueLabel.text = "Bet: \(bet.amount)"
        
        if(bet.activity == "Reading"){
            PhotoImageView.image = UIImage(named: "books.")
        } else {
            PhotoImageView.image = UIImage(named: "running.jpg")
        }
        
    }
    
    @IBAction func YesButtonClicked(_ sender: Any) {
        
        YesButton.setTitle("Yes", for: .normal)
        
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
