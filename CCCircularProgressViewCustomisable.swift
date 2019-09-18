//
//  CCCircularProgressViewCustomisable.swift
//  CCCircularProgressView-Swift
//
//  Created by Hsuan-Chih Chuang on 2019/9/17.
//

import Foundation

public protocol CCCircularProgressViewCustomisable {
    var isBarRounded : Bool    { get set }
    var radius       : CGFloat { get set }
    var progress     : CGFloat { get set }
    var startAngle   : CGFloat { get set }
    var lineColor    : UIColor { get set }
    var lineWidth    : CGFloat { get set }
    var trackColor   : UIColor { get set }
    var trackWidth   : CGFloat { get set }
}
