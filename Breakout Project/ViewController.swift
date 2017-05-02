//
//  ViewController.swift
//  Breakout Project
//
//  Created by student8 on 4/27/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var paddle = UIView()
    
    var ball = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paddleView = CGRect(x: 167, y: 700, width: 100, height: 25)
        
        paddle = UIView(frame: paddleView)
        
        let ballView = CGRect(x: 100, y: 100, width: 25, height: 25)
        
        ball = UIView(frame: ballView)
        
        ball.layer.cornerRadius = 20
        
        paddle.backgroundColor = UIColor.black
        
        ball.backgroundColor = UIColor.black
        
        view.addSubview(paddle)
        
        view.addSubview(ball)
        

    }



}

