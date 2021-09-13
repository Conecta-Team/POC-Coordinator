//
//  CoordinatorFile.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import UIKit

protocol Coordinator {
    var childCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController {get set}
    
    func start()
}
