//
//  MainCoordinator.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = [Coordinator]() 
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let vc = ViewController()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func detailTask(task: Task) {
        let vc = DetailsViewController(task: task)
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
}
