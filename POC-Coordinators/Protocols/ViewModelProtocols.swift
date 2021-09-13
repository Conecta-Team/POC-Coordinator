//
//  ViewModelProtocols.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import Foundation

protocol ViewModelDelegate {
    func willLoadData()
    func didLoadData()
}

protocol ViewModelType {
    func initialization()
    var delegate: ViewModelDelegate? { get set }
}
