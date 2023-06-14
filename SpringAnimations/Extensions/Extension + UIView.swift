//
//  Extension + UIView.swift
//  SpringAnimations
//
//  Created by Dmitrii Galatskii on 14.06.2023.
//

import UIKit

extension UIView {
    func setGradientBackground() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.black.cgColor,
                                UIColor.systemIndigo.cgColor,
                                UIColor.systemPurple.withAlphaComponent(0.95).cgColor]
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
