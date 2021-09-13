//
//  DetailsView.swift
//  POC-Coordinators
//
//  Created by José João Silva Nunes Alves on 12/09/21.
//

import UIKit

class DetailsView: UIView {
    
    let title: UILabel = {
        let label = UILabel()
        label.text = ""
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        self.configure()
    }
    
    func configure() {
        self.backgroundColor = .systemBackground
        self.addSubview(self.title)

        NSLayoutConstraint.activate([
            self.title.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.title.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func setTitle(title: String) {
        self.title.text = title
    }
}
