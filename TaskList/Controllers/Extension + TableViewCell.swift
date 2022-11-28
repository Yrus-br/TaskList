//
//  TasksTableViewCell.swift
//  TaskList
//
//  Created by Jorgen Shiller on 23.11.2022.
//

import UIKit

extension UITableViewCell {
    func configure(with tasksList: TaskList) {
        let currentTasks = tasksList.tasks.filter("isComplete = false")
        var content = defaultContentConfiguration()
        
        content.text = tasksList.name
        
        if tasksList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if currentTasks.isEmpty {
            content.secondaryText = nil
            accessoryType = .checkmark
        } else {
            content.secondaryText = currentTasks.count.formatted()
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
