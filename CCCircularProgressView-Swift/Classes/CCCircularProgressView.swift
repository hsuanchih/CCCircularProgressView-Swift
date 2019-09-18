//
//  CCCircularProgressView.swift
//  CCCircularProgressView-Swift
//
//  Created by Hsuan-Chih Chuang on 2019/9/17.
//

import UIKit

@IBDesignable public class CCCircularProgressView: UIView, CCCircularProgressViewCustomisable {
    
    @IBInspectable public var isBarRounded : Bool = false {
        didSet {
            lineLayer.lineCap = isBarRounded ? kCALineCapRound : kCALineCapSquare
        }
    }
    @IBInspectable public var radius : CGFloat = 0 {
        didSet {
            guard oldValue != radius else { return }
            lineLayer.path = circularPath.cgPath
            trackLayer.path = circularPath.cgPath
        }
    }
    @IBInspectable public var progress: CGFloat = 0 {
        didSet {
            guard oldValue != progress else { return }
            lineLayer.strokeEnd = progress
        }
    }
    @IBInspectable public var startAngle : CGFloat = -CGFloat.pi/2 {
        didSet {
            guard oldValue != startAngle else { return }
            lineLayer.path = circularPath.cgPath
        }
    }
    @IBInspectable public var lineColor : UIColor = .clear {
        didSet {
            lineLayer.strokeColor = lineColor.cgColor
        }
    }
    @IBInspectable public var lineWidth : CGFloat = 10 {
        didSet {
            lineLayer.lineWidth = lineWidth
        }
    }
    @IBInspectable public var trackColor : UIColor = .clear {
        didSet {
            trackLayer.strokeColor = trackColor.cgColor
        }
    }
    @IBInspectable public var trackWidth : CGFloat = 10 {
        didSet {
            trackLayer.lineWidth = trackWidth
        }
    }
    
    private lazy var trackLayer = CAShapeLayer()
    @objc private lazy var lineLayer = CAShapeLayer()
    private var circularPath : UIBezierPath {
        return UIBezierPath(arcCenter: CGPoint(x: bounds.midX, y: bounds.midY), radius: radius, startAngle: startAngle, endAngle: startAngle+2*CGFloat.pi, clockwise: true)
    }
    
    private func setup() {
        [trackLayer,lineLayer].forEach {
            $0.fillColor = UIColor.clear.cgColor
            layer.addSublayer($0)
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    public override var bounds: CGRect {
        didSet {
            if oldValue != bounds {
                lineLayer.path = circularPath.cgPath
                trackLayer.path = circularPath.cgPath
            }
        }
    }
}
