//
//  ViewController.swift
//  Breakout Project
//
//  Created by student8 on 4/27/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {
    
    //@IBOutlet weak var ballView: UIView!      PROGRAM THESE
    
    //@IBOutlet weak var paddleOneView: UIView!
    
    var dynamicAnimator: UIDynamicAnimator!
    
    var pushBehavior: UIPushBehavior!
    
    var collisionBehavior: UICollisionBehavior!
    
    var ballDynamicBehavior: UIDynamicItemBehavior!
    
    var paddleDynamicBehavior: UIDynamicItemBehavior!
    
    var ballView = UIView()
    
    var paddleOneView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
  
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        ballView.layer.cornerRadius = 12.0
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        pushBehavior = UIPushBehavior(items: [ballView], mode: UIPushBehaviorMode.instantaneous)
        
        pushBehavior.pushDirection = CGVector(dx: 0.5, dy: 1.0)
        
        pushBehavior.active = true
        
        
        pushBehavior.magnitude = 0.3
        
        dynamicAnimator.addBehavior(pushBehavior)
        
        collisionBehavior = UICollisionBehavior(items: [ballView])
        
        collisionBehavior.collisionMode = UICollisionBehaviorMode.everything
        
        collisionBehavior.translatesReferenceBoundsIntoBoundary = true
        collisionBehavior.collisionDelegate = self
        
        dynamicAnimator.addBehavior(collisionBehavior)
        
        ballDynamicBehavior = UIDynamicItemBehavior(items: [ballView])
        
        ballDynamicBehavior.allowsRotation = false
        
        ballDynamicBehavior.elasticity = 1.0
        
        ballDynamicBehavior.friction = 0.0
        
        ballDynamicBehavior.resistance = 0.0
        
        dynamicAnimator.addBehavior(ballDynamicBehavior)
        
        paddleDynamicBehavior = UIDynamicItemBehavior(items: [paddleOneView])
        
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
    
    
}

