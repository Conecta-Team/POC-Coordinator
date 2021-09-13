//
//  Tasks.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import Foundation

struct Task {
    var title: String
}

extension Task {
    static func getMock() -> [Task] {
        return [
            Task(title: "Task 01"),
            Task(title: "Task 02"),
            Task(title: "Task 03"),
            Task(title: "Task 04"),
            Task(title: "Task 05"),
            Task(title: "Task 06"),
            Task(title: "Task 07"),
            Task(title: "Task 08"),
            Task(title: "Task 09"),
            Task(title: "Task 10")
        ]
    }
}
