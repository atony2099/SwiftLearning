
//
//  DrawLine.swift
//  多线程开发
//
//  Created by admin on 02/01/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class DrawLine: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
        */
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        // 1. get context
        guard let context = UIGraphicsGetCurrentContext() else {
            return;
        }
        
        
        // 2.
                //创建一个矩形，它的所有边都内缩3
        let drawingRect = self.bounds.insetBy(dx: 10, dy: 10)
        
        //创建并设置路径
        let path = CGMutablePath()
        path.move(to: CGPoint(x:drawingRect.minX, y:drawingRect.minY))
        path.addLine(to:CGPoint(x:drawingRect.maxX, y:drawingRect.minY))
        path.addLine(to:CGPoint(x:drawingRect.maxX, y:drawingRect.maxY))
        //添加路径到图形上下文
        context.addPath(path)
        
        //设置笔触颜色
        context.setStrokeColor(UIColor.orange.cgColor)
        context.setFillColor(UIColor.blue.cgColor)
        //设置笔触宽度
        context.setLineWidth(30)
        
        //绘制路径
        context.drawPath(using: .stroke)
        
        
        
        
    }


}
