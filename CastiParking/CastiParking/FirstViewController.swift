//
//  FirstViewController.swift
//  CastiParking
//
//  Created by Katie Mishra on 2/3/17.
//  Copyright © 2017 CS3. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataSource: NotificationCellData
    
    required init?(coder aDecoder: NSCoder) {
        let descriptions = [
            Notification(notification: "Parking in the senior lot", text: "All softball players park in the senior lot after 4 pm")
        ]
        self.dataSource = NotificationCellData(description: descriptions)
        super.init(coder: aDecoder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

