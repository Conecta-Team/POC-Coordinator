//
//  ViewController.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import UIKit

class ViewController: UIViewController {

    let mainView: TasksView = TasksView()
    let viewModel: TasksViewModel = TasksViewModel()
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = mainView
        self.mainView.tableView.delegate = self
        self.mainView.tableView.dataSource = self
        
        self.viewModel.delegate = self
        self.viewModel.initialization()
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.viewModel.createNewData()
        }
    }
}

extension ViewController: ViewModelDelegate {
    func willLoadData() {
        print("willLoadData")
    }
    
    func didLoadData() {
        self.mainView.tableView.reloadData()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.viewModel.allTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.mainView.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = self.viewModel.allTasks[indexPath.row].title
        cell.contentConfiguration = config
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let task = self.viewModel.allTasks[indexPath.row]
//        let destination = DetailsViewController(task: self.viewModel.allTasks[indexPath.row])
//        self.navigationController?.present(destination, animated: true, completion: nil)
        
        self.coordinator?.detailTask(task: task)
    }
}
