//
//  GamesTableViewCell.swift
//  CampeoesDaCopa
//
//  Created by Admin Colaborador on 21/09/20.
//  Copyright © 2020 Rodrigo Queiroz. All rights reserved.
//

import UIKit

class GamesTableViewCell: UITableViewCell {

    //MARK: Outlet's
    @IBOutlet weak var imgHome: UIImageView!
    @IBOutlet weak var lblHome: UILabel!
    
    @IBOutlet weak var imgAway: UIImageView!
    @IBOutlet weak var lblAway: UILabel!
    
    @IBOutlet weak var lblScore: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    func prepare(with  game: Game) {
        
        imgHome.image = UIImage(named: "\(game.home).png")
        lblHome.text = game.home
        
        imgAway.image = UIImage(named: "\(game.away).png")
        lblAway.text = game.away
        
        lblScore.text = game.score
    }
}
