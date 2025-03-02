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

    /// The style of the bars corners.
    public var radius: Radius

    /// The width of the bar.
    /// - note: If ``FLBarPlotView/shouldScroll`` is set to `true` this value will be used as absolute value for the bar width. Else the width of the bar will be calculated based on the width of the chart but If ``limitWidth`` is set to `true` this value will be used as the maximum width for the bar
    public var width: CGFloat
    
    /// The space between each chart bar.
    public var spacing: CGFloat
    
    /// Limits the with of the bar if ``FLBarPlotView/shouldScroll`` is set to `false`
    public var limitWidth: Bool
    
    public init(radius: Radius = .corners(corners: [.layerMinXMinYCorner, .layerMaxXMinYCorner], 3),
                width: CGFloat = 12,
                spacing: CGFloat = 5,
                limitWidth: Bool = false) {
        self.radius = radius
        self.width = width
        self.spacing = spacing
        self.limitWidth = limitWidth
    }
}
