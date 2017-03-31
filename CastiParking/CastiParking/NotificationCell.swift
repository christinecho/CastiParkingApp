//
//  NotificationCell.swift
//  CastiParking
//
//  Created by Christine Cho on 3/27/17.
//  Copyright © 2017 CS3. All rights reserved.
//

import Foundation
import UIKit

class NotificationCell: UITableViewCell {
    
    @IBOutlet weak var notificationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var notification: String? {
        didSet {
            notificationLabel.text = notification
        }
    }
    
    var descriptionText: String? {
        didSet {
            descriptionLabel.text = descriptionText
        }
    }
}
