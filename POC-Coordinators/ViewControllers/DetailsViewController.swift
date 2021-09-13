//
//  DetailsViewController.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import UIKit

class DetailsViewController: UIViewController {
    var task: Task
    var mainView: DetailsView
    weak var coordinator: MainCoordinator?

    init(task: Task) {
        self.task = task
        self.mainView = DetailsView()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.mainView
        self.mainView.setTitle(title: task.title)
    }
}
