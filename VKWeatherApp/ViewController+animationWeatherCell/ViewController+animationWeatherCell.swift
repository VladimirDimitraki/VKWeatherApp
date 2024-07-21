//
//  ViewController+animationWeatherCell.swift
//  VKWeatherApp
//
//  Created by Melania Dababi on 7/21/24.
//

import UIKit

extension ViewController {
    func animationWeatherCell(imageName: String, numberImages: Int, animation: Animation) {
        if let subview = self.view.subviews.first, subview.clipsToBounds != true {
            subview.removeFromSuperview()
        }
        animation.setupAnimtion(imageName: imageName, numberImages: numberImages)
        animation.frame = view.bounds
        self.view.addSubview(animation)
        self.view.insertSubview(animation, at: 0)
        UIView.transition(with: view, duration: 0.5, options: .transitionCrossDissolve, animations: {
            animation.alpha = 0.5
        }, completion: nil)
    }
}
