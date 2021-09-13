//
//  TasksViewModel.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import Foundation

class TasksViewModel: ViewModelType {
    
    var delegate: ViewModelDelegate?
    var allTasks: [Task] = []

    func initialization() {
        self.delegate?.willLoadData()

        self.allTasks = Task.getMock()

        self.delegate?.didLoadData()
    }
    
    func createNewData() {
        self.delegate?.willLoadData()

        self.allTasks.append(Task(title: "Task 11"))
        self.allTasks.append(Task(title: "Task 12"))
        
        self.delegate?.didLoadData()
    }
}
