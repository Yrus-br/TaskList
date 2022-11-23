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
        let completedTasks = tasksList.tasks.filter("isComplete = true")
        
        textLabel?.text = tasksList.name
        
        if !currentTasks.isEmpty {
            detailTextLabel?.text = "\(currentTasks.count)"
            detailTextLabel?.font = UIFont.systemFont(ofSize: 10)
        } else if !completedTasks.isEmpty {
            detailTextLabel?.text = "✅"
            detailTextLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        } else {
            detailTextLabel?.text = "0"
        }
    }
}
