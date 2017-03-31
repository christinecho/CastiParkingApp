//
//  NotificationCellData.swift
//  CastiParking
//
//  Created by Christine Cho on 3/27/17.
//  Copyright © 2017 CS3. All rights reserved.
//

import Foundation
import UIKit

class NotificationCellData: NSObject {
    let descriptions: [Notification]
    
    init(descriptions: [Notification]) {
        self.descriptions = descriptions
    }
}

extension NotificationCellData: UITableViewDataSource { //not sure if this should be here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return descriptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell") as! NotificationCell
        let description = descriptions[indexPath.row]
        cell.notification = description.notification
        cell.descriptionText = description.text
        return cell
    }
}

