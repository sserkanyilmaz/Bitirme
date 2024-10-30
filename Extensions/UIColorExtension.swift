//
//  UIColorExtension.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 30.10.2024.
//

import UIKit

extension UIColor {
    
    enum TypeColor {
        case dark, light
    }
    
    static var fiveBackgroundColor: UIColor = .init(named: "fiveBackground") ?? .tertiarySystemBackground
    
    static func color(by style: GradientStyle, type: TypeColor? = .dark) -> UIColor {
        switch type {
        case .dark:
            return CAGradientLayer.darkColor(for: style)
        case .light:
            return CAGradientLayer.lightColor(for: style)
        default:
            return CAGradientLayer.darkColor(for: style)
        }
    }
}
