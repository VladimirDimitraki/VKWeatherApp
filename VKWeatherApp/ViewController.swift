//
//  ViewController.swift
//  VKWetherApp
//
//  Created by Melania Dababi on 7/17/24.
//

import UIKit

class ViewController: UIViewController {
    var labelsWeatherArray: [String] = [
        "cell_cloudly".localized,
        "cell_rain".localized,
        "cell_fog".localized,
        "cell_sunny".localized,
        "cell_clear".localized,
        "cell_lightningstorm".localized
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        animationWeatherCell(imageName: "photoClearSky", numberImages: 150, animation: Animation())
    }
    
    private lazy var layout: UICollectionViewLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        return layout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(WeatherCell.self, forCellWithReuseIdentifier: "WeatherCell")
        collectionView.backgroundColor = .clear
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    func setupCollectionView() {
        self.view.addSubview(self.collectionView)
        
        NSLayoutConstraint.activate([
            self.collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.collectionView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.collectionView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            self.collectionView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
