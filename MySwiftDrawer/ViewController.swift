//
//  ViewController.swift
//  MySwiftDrawer
//
//  Created by user22 on 2017/9/11.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var myview: MyView!

    @IBAction func clear(_ sender: Any) {
        myview.clearMe()
    }
    
    @IBAction func undo(_ sender: Any) {
        myview.undo()
    }

    @IBAction func redo(_ sender: Any) {
        myview.redo()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        let myview = MyView(frame: frame)
        view.addSubview(myview)
        */
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

