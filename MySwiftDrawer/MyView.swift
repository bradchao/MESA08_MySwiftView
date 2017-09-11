//
//  MyView.swift
//  MySwiftDrawer
//
//  Created by user22 on 2017/9/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Cocoa

class MyView: NSView {
    
    //var line:[CGPoint] = [] // Array<CGPoint>
    var lines:[[CGPoint]] = []  // Array<Array<CGPoint>>
    
    // MyView 的呈現畫面
    override func draw(_ dirtyRect: NSRect) {
        
        for line in lines {
            // 一條線
            if line.count<2 {continue}
            
            let myPath = NSBezierPath()
            myPath.move(to: line[0])
            for i in 1..<line.count {
                myPath.line(to: line[i])
            }
            myPath.stroke()
        }
        
    }
    override func mouseDown(with event: NSEvent) {
        var line:[CGPoint] = []
        let px = event.locationInWindow.x
        let py = event.locationInWindow.y
        line += [CGPoint(x: px,y: py)]
        
        lines += [line]
        
    }
    override func mouseDragged(with event: NSEvent) {
        let px = event.locationInWindow.x
        let py = event.locationInWindow.y
        
        //line += [CGPoint(x: px,y: py)]
        lines[lines.count-1] += [CGPoint(x: px,y: py)]
        
        needsDisplay = true
    }
    
    
    
    
    
    
}
