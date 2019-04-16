//
//  AnimalViewController.swift
//  ClosuresVsDelegation
//
//  Created by Victor Lee on 16/4/19.
//  Copyright © 2019 VictorLee. All rights reserved.
//

import UIKit

class AnimalsViewController: UITableViewController {
    
    let alertService = AlertService()
    
    let animals: [Animal] = [.cat,.dog,.lion,.pig,.snake]
    
    let animalCell: String = "AnimalCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: animalCell, for: indexPath)
        
        let animalCell = cell as? AnimalCell
        
        let animal = animals[indexPath.row]
        
        animalCell?.animalCellDelegate = self
        
        animalCell?.populate(with: animal)
        
        return cell
    }
}

extension AnimalsViewController: AnimalCellDelegate {
    func didTapNoiseButton(for animal: Animal) {
        let alert = alertService.alert(with: animal.noise)
        present(alert, animated: true)
    }
    
    
}
