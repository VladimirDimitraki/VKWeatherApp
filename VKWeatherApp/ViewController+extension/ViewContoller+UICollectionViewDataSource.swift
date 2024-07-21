//
//  ViewContoller+UICollectionViewDataSource.swift
//  VKWeatherApp
//
//  Created by Melania Dababi on 7/21/24.
//

import UIKit

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        labelsWeatherArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        cell.label.text = labelsWeatherArray[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let weatherCell = collectionView.cellForItem(at: indexPath) as! WeatherCell
        
        guard let textWeatherCell = weatherCell.label.text else {
            return
        }
        
        let animation = Animation()
        
        switch textWeatherCell {
        case "cell_cloudly".localized:
            animationWeatherCell(imageName: "Untitled00000000_", numberImages: 149, animation: animation)
        case "cell_clear".localized:
            animationWeatherCell(imageName: "photoClearSky", numberImages: 150, animation: animation)
        case "cell_sunny".localized:
            animationWeatherCell(imageName: "photo", numberImages: 83, animation: animation)
        case "cell_fog".localized:
            animationWeatherCell(imageName: "photoFog", numberImages: 150, animation: animation)
        case "cell_rain".localized:
            animationWeatherCell(imageName: "Raining2_", numberImages: 150, animation: animation)
        case "cell_lightningstorm".localized:
            animation.setupAnimtion(imageName: "stockvideo05463_", numberImages: 24)
            animationWeatherCell(imageName: "stockvideo05463_", numberImages: 24, animation: animation)
        default:
            animationWeatherCell(imageName: "photoClearSky", numberImages: 150, animation: animation)
        }
    }
}

