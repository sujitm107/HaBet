//
//  ViewController.swift
//  HaBet
//
//  Created by Sujit Molleti on 2/22/20.
//  Copyright © 2020 Sujit Molleti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    @IBOutlet weak var betsTableview: UITableView!
    
    @IBOutlet weak var challengeLabel: UILabel!
    @IBOutlet weak var opponentNameLabel: UILabel!
    var bets: [Bet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        betsTableview.delegate = self
        betsTableview.dataSource = self
        
        var temp: Bet = Bet(opponent: "Rachana", amount: "$50", activity: "Running", endDate: "4-2-2020")
        bets.append(temp)
        temp = Bet(opponent: "Sujit", amount: "$50", activity: "Reading", endDate: "6-25-2020")
        bets.append(temp)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBetController" {
            guard let betVC = segue.destination as? CreateBetController else {
                return
            }
            
            betVC.betDelegate = self
        }
        
        if segue.identifier == "betDetailSegue" {
            guard let betDetailVC = segue.destination as? BetDetailViewController else {
                return
            }
            
            betDetailVC.bet = bets[betsTableview.indexPathForSelectedRow!.row]
            
            
        }
    }
    
//SETTING UP TABLEVIEW
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = betsTableview.dequeueReusableCell(withIdentifier: "betCell", for: indexPath) as! BetTableViewCell
        
        //cell.textLabel?.text = bets[indexPath.row].toString()
        
        cell.nameLabel.text = bets[indexPath.row].opponent
        cell.challengeLabel.text = "Challenge: \(bets[indexPath.row].activity)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

}

extension ViewController: BetDelegate{
    func createBet(activityText: String, opponentText: String, endDateText: String, amountText: String){
        
        var temp: Bet = Bet(opponent: opponentText, amount: amountText, activity: activityText, endDate: endDateText)
        print(temp.toString())
        bets.append(temp)
        print(bets.count)
        self.betsTableview.reloadData()
        
    }
}

