//
//  WorldCupTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Admin Colaborador on 21/09/20.
//  Copyright © 2020 Rodrigo Queiroz. All rights reserved.
//

import UIKit

class WorldCupTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var lblWorldCupLocation: UILabel!
    
    @IBOutlet weak var imgWinner: UIImageView!
    @IBOutlet weak var lblWinner: UILabel!
    @IBOutlet weak var lblWinnerScore: UILabel!
    
    @IBOutlet weak var imgVice: UIImageView!
    @IBOutlet weak var lblVice: UILabel!
    @IBOutlet weak var lblViceScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func prepare(with  cup: WorldCup) {
        
        lblYear.text = "\(cup.year)"
        lblWorldCupLocation.text = cup.country
        
        imgWinner.image = UIImage(named: "\(cup.winner).png")
        lblWinner.text = cup.winner
        lblWinnerScore.text = cup.winnerScore
        
        imgVice.image = UIImage(named: "\(cup.vice).png")
        lblVice.text = cup.vice
        lblViceScore.text = cup.viceScore
        
        
    }

}
