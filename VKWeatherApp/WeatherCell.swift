//
//  StoryCell.swift
//  VKWetherApp
//
//  Created by Melania Dababi on 7/17/24.
//

import UIKit

class WeatherCell: UICollectionViewCell {
    var label: UILabel = {
        var label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 240.0/255.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setupShadow()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func setupShadow() {
        self.containerView.layer.cornerRadius = 20
        self.containerView.layer.shadowOffset = CGSize(width: 2, height: 0)
        self.containerView.layer.shadowColor = UIColor.lightGray.cgColor
        self.containerView.layer.shadowRadius = 4
        self.containerView.layer.shadowOpacity = 5
    }

    func setupCell() {
        self.addSubview(self.containerView)
        self.containerView.addSubview(self.label)
        
        NSLayoutConstraint.activate([
            self.containerView.topAnchor.constraint(equalTo: self.topAnchor),
            self.containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
  
            self.label.topAnchor.constraint(equalTo: self.containerView.topAnchor),
            self.label.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor),
            self.label.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor),
            self.label.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor)
        ])
    }
}


