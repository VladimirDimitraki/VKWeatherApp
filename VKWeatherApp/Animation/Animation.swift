//
//  Animation.swift
//  VKWeatherApp
//
//  Created by Melania Dababi on 7/21/24.
//

import UIKit

class Animation: UIView {
    var imageView: UIImageView!
    var animation: [UIImage] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }

    func setupAnimtion(imageName: String, numberImages: Int) {
        imageView = UIImageView(frame: UIScreen.main.bounds)
        imageView.animationImages = ImageArray().imageArray(imageName, numberImages)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.animationDuration = 5
        addSubview(imageView)
        imageView.startAnimating()
    }
}

