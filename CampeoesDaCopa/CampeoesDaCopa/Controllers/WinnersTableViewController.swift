//
//  WinnersTableViewController.swift
//  CampeoesDaCopa
//
//  Created by Rodrigo Queiroz on 17/09/20.
//  Copyright © 2020 Rodrigo Queiroz. All rights reserved.
//

import UIKit

class WinnersTableViewController: UITableViewController {
    
    var worldCups: [WorldCup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWorlCups()
        
        
    }
    
    func loadWorlCups() {
        
        let fileUrl = Bundle.main.url(forResource: "winners.json", withExtension: nil)
        let jsonData = try! Data(contentsOf: fileUrl!)
        
        do {
            worldCups = try JSONDecoder().decode([WorldCup].self, from: jsonData)
        } catch {
            print(error.localizedDescription)
        }
        
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return worldCups.count
    }
    
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    
    
    
}
