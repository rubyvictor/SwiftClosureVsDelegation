//
//  AlertService.swift
//  ClosuresVsDelegation
//
//  Created by Victor Lee on 16/4/19.
//  Copyright © 2019 VictorLee. All rights reserved.
//

import UIKit

class AlertService: UIAlertController {
    
    func alert(with message: String) -> UIAlertController {
        
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        return alert
    }
}
