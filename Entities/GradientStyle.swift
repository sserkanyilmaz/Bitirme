//
//  GradientStyle.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 30.10.2024.
//

import UIKit.UIColor
import Foundation
enum GradientStyle: Int, CaseIterable {
    case grey = 0
    case red = 1
    case orange = 2
    case yellow = 3
    case green = 4
    case blue = 5
    case violet = 6
    
    var color: UIColor {
        UIColor.color(by: self)
    }
}
