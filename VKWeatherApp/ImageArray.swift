//
//  ImageArray.swift
//  VKWetherApp
//
//  Created by Melania Dababi on 7/19/24.
//

import UIKit

class ImageArray {
    func imageArray(_ imageName: String, _ numberOFImages: Int) -> [UIImage] {
        var returnedArray: [UIImage] = []
        for imageIndex in 1...numberOFImages {
            let imageName = "\(imageName)\(addLeadingZeros(to: String(imageIndex), length: 3))"
            if let image = UIImage(named: imageName) {
                returnedArray.append(image)
            }
        }
        return returnedArray
    }
}

extension ImageArray {
    func addLeadingZeros(to string: String, length: Int) -> String {
        let zeroString = String(repeating: "0", count: length - string.count)
        return zeroString + string
    }
}
