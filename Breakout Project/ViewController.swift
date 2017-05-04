//
//  ViewController.swift
//  Breakout Project
//
//  Created by student8 on 4/27/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {
    
    
    var dynamicAnimator = UIDynamicAnimator()
    
    var pushBehavior: UIPushBehavior!
    
    var collisionBehavior: UICollisionBehavior!
    
    var ballDynamicBehavior: UIDynamicItemBehavior!
    
    var paddleDynamicBehavior: UIDynamicItemBehavior!
    
    var paddle = UIView()
    
    var ball = UIView()
    
    var blockOne = UIView()
    
    var blockTwo = UIView()
    
    var blockThree = UIView()
    
    var blockFour = UIView()
    
    var blockFive = UIView()
    
    var blockSix = UIView()
    
    var blockSeven = UIView()
    
    var blockEight = UIView()
    
    var blockNine = UIView()
    
    var blockTen = UIView()
    
    var screenWidth = Float(UIScreen.main.bounds.width)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paddleView = CGRect(x: 167, y: 700, width: 110, height: 25)
        
        paddle = UIView(frame: paddleView)
        
        let ballView = CGRect(x: 167, y: 650, width: 25, height: 25)
        
        let blockWidth = (screenWidth - 60)/5
        
        let blockOne = UIView(frame: CGRect(x: 10, y: 25, width: Int(blockWidth), height: 20))
        
        let blockTwo = UIView(frame: CGRect(x: Int(10+7+blockWidth), y: 25, width: Int(blockWidth), height: 20))
        
        let blockThree = UIView(frame: CGRect(x: Int(10+11+2*blockWidth), y: 25, width: Int(blockWidth), height: 20))
        
        let blockFour = UIView(frame: CGRect(x: Int(10+18+3*blockWidth), y: 25, width: Int(blockWidth), height: 20))
        
        let blockFive = UIView(frame: CGRect(x: Int(10+25+4*blockWidth), y: 25, width: Int(blockWidth), height: 20))
        
        let blockSix = UIView(frame: CGRect(x: 10, y: 55, width: Int(blockWidth), height: 20))
        
        let blockSeven = UIView(frame: CGRect(x: Int(10+7+blockWidth), y: 55, width: Int(blockWidth), height: 20))
        
        let blockEight = UIView(frame: CGRect(x: Int(10+11+2*blockWidth), y: 55, width: Int(blockWidth), height: 20))
        
        let blockNine = UIView(frame: CGRect(x: Int(10+18+3*blockWidth), y: 55, width: Int(blockWidth), height: 20))
        
        let blockTen = UIView(frame: CGRect(x: Int(10+25+4*blockWidth), y: 55, width: Int(blockWidth), height: 20))
        
        ball = UIView(frame: ballView)
        
        ball.layer.cornerRadius = 20
        
        paddle.backgroundColor = UIColor.black
        
        ball.backgroundColor = UIColor.black
        
        blockOne.backgroundColor = UIColor.black
        
        blockTwo.backgroundColor = UIColor.black
        
        blockThree.backgroundColor = UIColor.black
        
        blockFour.backgroundColor = UIColor.black
        
        blockFive.backgroundColor = UIColor.black
        
        blockSix.backgroundColor = UIColor.black
        
        blockSeven.backgroundColor = UIColor.black
        
        blockEight.backgroundColor = UIColor.black
        
        blockNine.backgroundColor = UIColor.black
        
        blockTen.backgroundColor = UIColor.black
        
        view.addSubview(paddle)
        
        view.addSubview(ball)
        
        view.addSubview(blockOne)
        
        view.addSubview(blockTwo)
        
        view.addSubview(blockThree)
        
        view.addSubview(blockFour)
        
        view.addSubview(blockFive)
        
        view.addSubview(blockSix)
        
        view.addSubview(blockSeven)
        
        view.addSubview(blockEight)
        
        view.addSubview(blockNine)
        
        view.addSubview(blockTen)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        /*override func viewDidAppear(_ animated: Bool) {
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        pushBehavior = UIPushBehavior(items: [ball], mode: UIPushBehaviorMode.instantaneous)
        
        pushBehavior.pushDirection = CGVector(dx: 0.5, dy: 1.0)
        
        pushBehavior.active = true
        
        pushBehavior.magnitude = 0.3
        
        dynamicAnimator.addBehavior(pushBehavior)
        
        collisionBehavior = UICollisionBehavior(items: [ball])
        
        collisionBehavior.collisionMode = UICollisionBehaviorMode.everything
        
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        collisionBehavior.collisionDelegate = self
        
        dynamicAnimator.addBehavior(collisionBehavior)
        
        ballDynamicBehavior = UIDynamicItemBehavior(items: [ball])
        
        ballDynamicBehavior.allowsRotation = false
        
        ballDynamicBehavior.elasticity = 1.0
        
        ballDynamicBehavior.friction = 0.0
        
        ballDynamicBehavior.resistance = 0.0
        
        dynamicAnimator.addBehavior(ballDynamicBehavior)
        
        paddleDynamicBehavior = UIDynamicItemBehavior(items: [paddle])
        
        paddleDynamicBehavior.allowsRotation = false
        
        paddleDynamicBehavior.density = 1000.0
        
        dynamicAnimator.addBehavior(paddleDynamicBehavior)
        
        
    }
    
    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint) {
        
        
        print("collided")
        
    }
    
    
    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, with item2: UIDynamicItem, at p: CGPoint) {
        self.ball.backgroundColor = UIColor.cyan
        print("In second delegate method")
    }
    
    @IBAction func paddleDragged(_ sender: UIPanGestureRecognizer) {
        
        paddle.center = CGPoint(x: sender.location(in: self.view).x, y: paddle.center.y)
        
        dynamicAnimator.updateItem(usingCurrentState: paddle)
        
    }
 
    
}




