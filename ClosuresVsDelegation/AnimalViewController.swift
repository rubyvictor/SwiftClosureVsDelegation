//
//  AnimalViewController.swift
//  ClosuresVsDelegation
//
//  Created by Victor Lee on 16/4/19.
//  Copyright © 2019 VictorLee. All rights reserved.
//

import UIKit

class AnimalViewController: UITableViewController {
    
    let alertService = AlertService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
