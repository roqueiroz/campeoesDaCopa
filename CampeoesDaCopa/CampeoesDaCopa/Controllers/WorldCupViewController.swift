//
//  WorldCupViewController.swift
//  CampeoesDaCopa
//
//  Created by Rodrigo Queiroz on 17/09/20.
//  Copyright © 2020 Rodrigo Queiroz. All rights reserved.
//

import UIKit

class WorldCupViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
   
    

    
    @IBOutlet weak var imgWinner: UIImageView!
    @IBOutlet weak var lblWinner: UILabel!
    
    @IBOutlet weak var imgVice: UIImageView!
    @IBOutlet weak var lblVice: UILabel!
    
    @IBOutlet weak var lblScore: UILabel!
    
    @IBOutlet weak var tblvChampionTrajectory: UITableView!
    
    var worldCup: WorldCup!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadInfos()
    }
    
    //MARK: Load Infos
    private func loadInfos() {
        
        title = "WorldCup \(worldCup.year)"
        
        imgWinner.image = UIImage(named: "\(worldCup.winner).png")
        lblWinner.text = worldCup.winner
       
        imgVice.image = UIImage(named: "\(worldCup.vice).png")
        lblVice.text = worldCup.vice
        
        lblScore.text = "\(worldCup.winnerScore) x \(worldCup.viceScore)"
    }

    //MARK: Implements TableView Data Source
    func numberOfSections(in tableView: UITableView) -> Int {
        return worldCup.matches.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return worldCup.matches[section].games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let match = worldCup.matches[indexPath.section]
        
        let game = match.games[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GamesTableViewCell
        cell.prepare(with: game)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let match = worldCup.matches[section]
        
        return match.stage
    }
    
}
