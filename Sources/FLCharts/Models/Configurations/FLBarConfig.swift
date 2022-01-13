//
//  FLBarConfig.swift
//  FLCharts
//
//  Created by Francesco Leoni on 13/01/22.
//

import UIKit

public struct FLBarConfig {
    
    public enum Radius {
        
        case none
        
        /// Rounds up the shorter side of the bar.
        case capsule
        
        /// Applies the specified radius to the bar.
        case custom(CGFloat)
        
        /// Applies the specified radius to the given corners of the bar.
        case corners(corners: CACornerMask, CGFloat)
    }

    /// The color of the bars. The first color corrisponds to to bottom portion of the bar.
    public var colors: [UIColor]

    /// The style of the bars corners.
    public var radius: Radius

    /// The width of the bar.
    /// - note: This value will be used only if ``FLBarChart/shouldScroll`` is set to `true`. Else the width of the bar will be calculated based on the width of the chart.
    public var width: CGFloat
    
    /// The space between each chart bar.
    public var spacing: CGFloat

    public init(colors: [UIColor] = [.systemBlue, .systemPink, .systemGreen],
                radius: Radius = .corners(corners: [.layerMinXMinYCorner, .layerMaxXMinYCorner], 3),
                width: CGFloat = 12,
                spacing: CGFloat = 5) {
        self.colors = colors
        self.radius = radius
        self.width = width
        self.spacing = spacing
    }
}
