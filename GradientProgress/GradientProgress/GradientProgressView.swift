//
//  GradientProgressView.swift
//  GradientProgress
//
//  Created by by on 2023/11/6.
//

import UIKit

class GradientProgressView: UIView {
    let maskLayer = CALayer();
    var progress: CGFloat = 0 {
        didSet {
            if (progress != oldValue) {
                progress = min(1.0, abs(progress));
                setNeedsLayout();
            }
        }
    }
    let gLayer = CAGradientLayer();
    
//    override class var layerClass: AnyClass {
//        return CAGradientLayer.self;
//    }

    override init(frame: CGRect) {
        super.init(frame: frame);
//        maskLayer.frame = CGRect(x: 0, y: 0, width: 0, height: frame.height);
//        maskLayer.backgroundColor = UIColor.black.cgColor;
//        
//        let layer = self.layer as? CAGradientLayer;
//        layer?.startPoint = CGPoint(x: 0, y: 0.5);
//        layer?.endPoint = CGPoint(x: 1, y: 0.5);
//        
//        layer?.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor];
//        layer?.mask = maskLayer;
        gLayer.frame = CGRect(x: 0, y: 0, width: 0, height: frame.height);
        gLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor];
        gLayer.startPoint = CGPoint(x: 0, y: 0);
        gLayer.endPoint = CGPoint(x: 1, y: 0);
        self.layer.addSublayer(gLayer);
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        var maskRect = gLayer.frame;
        maskRect.size.width = self.bounds.width * progress;
        gLayer.frame = maskRect;
    }
}
