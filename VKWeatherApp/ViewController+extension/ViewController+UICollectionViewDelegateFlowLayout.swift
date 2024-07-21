//
//  ViewController+UICollectionViewDelegateFlowLayout.swift
//  VKWeatherApp
//
//  Created by Melania Dababi on 7/21/24.
//
import UIKit

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 100, height: 100)
    }
}
