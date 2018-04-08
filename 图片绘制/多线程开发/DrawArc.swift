//
//  DrawArc.swift
//  多线程开发
//
//  Created by admin on 03/01/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DrawArc: UIView {
    
    
    // 1. get contenxt
    // 2. cratePath
    // 3.addPath to context ,
    // 4. then draw

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //获取绘图上下文
            guard let context = UIGraphicsGetCurrentContext() else {
                return
            }
            //创建一个矩形，它的所有边都内缩3
            let drawingRect = self.bounds.insetBy(dx: 3, dy: 3)

            //创建并设置路径
            let path = CGMutablePath()

            //圆弧半径
            let radius = min(drawingRect.width, drawingRect.height)/2
            //圆弧中点
            let center = CGPoint(x:drawingRect.midX, y:drawingRect.midY)
            //绘制圆弧
            path.addArc(center: center, radius: radius, startAngle: 0,
                                                        endAngle: CGFloat.pi * 1.5, clockwise: false)

            //添加路径到图形上下文
            context.addPath(path)

            //设置笔触颜色
            context.setStrokeColor(UIColor.orange.cgColor)
            //设置笔触宽度
            context.setLineWidth(6)
            context.setFillColor(UIColor.red.cgColor)
        
            //绘制路径
            context.drawPath(using: .fillStroke)
        
        
    }
 

}
