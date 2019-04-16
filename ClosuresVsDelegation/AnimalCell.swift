//
//  AnimalCell.swift
//  ClosuresVsDelegation
//
//  Created by Victor Lee on 16/4/19.
//  Copyright © 2019 VictorLee. All rights reserved.
//

import UIKit

protocol AnimalCellDelegate: class {
    func didTapNoiseButton(for animal: Animal)
    }

class AnimalCell: UITableViewCell {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var animal: Animal? {
        didSet {
            nameLabel.textColor = .white
        }
    }
    
    weak var animalCellDelegate: AnimalCellDelegate?
    
    func populate(with animal: Animal) {
        
        self.animal = animal
        emojiLabel.text = animal.emoji
        nameLabel.text = animal.name
    }
    
    
    @IBAction func didTapNoise(_ sender: Any) {
        guard let unwrappedAnimal = animal else { return }
        animalCellDelegate?.didTapNoiseButton(for: unwrappedAnimal)
    }
    
}
