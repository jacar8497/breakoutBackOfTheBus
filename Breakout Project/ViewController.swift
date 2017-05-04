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
        
        let blockWidth = (screenWidth - 30)/5
        
        let blockViewOne = UIView(frame: CGRect(x: 10, y: 10, width: Int(blockWidth), height: 20))
        
        let blockViewTwo = UIView(frame: CGRect(x: 15, y: 10, width: Int(blockWidth), height: 20))
        
        ball = UIView(frame: ballView)
        
        ball.layer.cornerRadius = 20
        
        paddle.backgroundColor = UIColor.black
        
        ball.backgroundColor = UIColor.black
        
        blockViewOne.backgroundColor = UIColor.black
        
        view.addSubview(paddle)
        
        view.addSubview(ball)
        
        view.addSubview(blockViewOne)
        
        view.addSubview(blockViewTwo)
        
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
        self.ballView.backgroundColor = UIColor.cyan
        print("In second delegate method")
    }
    
    @IBAction func paddleDragged(_ sender: UIPanGestureRecognizer) {
        
        paddleOneView.center = CGPoint(x: sender.location(in: self.view).x, y: paddleOneView.center.y)
        
        dynamicAnimator.updateItem(usingCurrentState: paddleOneView)
        
    }
 
    
}\*
*/
}

}
