//
//  TableViewCell.swift
//  RealmApp
//
//  Created by Pavel Tsyganov on 11.12.2021.
//  Copyright © 2021 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func configure(with taskList: TaskList) {
        let currentTask = taskList.tasks.filter("isComplete = false")
        let completedTask = taskList.tasks.filter("isComplete = true")
        var content = defaultContentConfiguration()
        
        content.text = taskList.name
        
        if !currentTask.isEmpty {
            content.secondaryText = "\(currentTask.count)"
            accessoryType = .none
        } else if !completedTask.isEmpty {
            accessoryType = .checkmark
        } else {
            accessoryType = .none
            content.secondaryText = "0"
        }
        contentConfiguration = content
    }
}


