//
//  ViewController.swift
//  Breakout Project
//
//  Created by student8 on 4/27/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollisionBehaviorDelegate {
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    var dynamicAnimator = UIDynamicAnimator()
    
    var pushBehavior: UIPushBehavior!
    
    var collisionBehavior: UICollisionBehavior!
    
    var ballDynamicBehavior: UIDynamicItemBehavior!
    
    var paddleDynamicBehavior: UIDynamicItemBehavior!
    
    var blockDynamicBehavior: UIDynamicItemBehavior!
    
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
    
    var blockArray = [UIView]()
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let paddleView = CGRect(x: 167, y: 700, width: 110, height: 25)
        
        paddle = UIView(frame: paddleView)
        
        let ballView = CGRect(x: 167, y: 650, width: 25, height: 25)
        
        let blockWidth = (screenWidth - 45)/5
        
        blockOne = UIView(frame: CGRect(x: 10, y: 35, width: Int(blockWidth), height: 30))
        
        blockTwo = UIView(frame: CGRect(x: Int(10+7+blockWidth), y: 35, width: Int(blockWidth), height: 30))
        
        blockThree = UIView(frame: CGRect(x: Int(10+11+2*blockWidth), y: 35, width: Int(blockWidth), height: 30))
        
        blockFour = UIView(frame: CGRect(x: Int(10+18+3*blockWidth), y: 35, width: Int(blockWidth), height: 30))
        
        blockFive = UIView(frame: CGRect(x: Int(10+25+4*blockWidth), y: 35, width: Int(blockWidth), height: 30))
        
        blockSix = UIView(frame: CGRect(x: 10, y: 75, width: Int(blockWidth), height: 30))
        
        blockSeven = UIView(frame: CGRect(x: Int(10+7+blockWidth), y: 75, width: Int(blockWidth), height: 30))
        
        blockEight = UIView(frame: CGRect(x: Int(10+11+2*blockWidth), y: 75, width: Int(blockWidth), height: 30))
        
        blockNine = UIView(frame: CGRect(x: Int(10+18+3*blockWidth), y: 75, width: Int(blockWidth), height: 30))
        
        blockTen = UIView(frame: CGRect(x: Int(10+25+4*blockWidth), y: 75, width: Int(blockWidth), height: 30))
        
        blockArray = [blockOne, blockTwo, blockThree, blockFour, blockFive, blockSix, blockSeven, blockEight,blockNine, blockTen]
        
        ball = UIView(frame: ballView)
        
        ball.layer.cornerRadius = 20
        
        paddle.backgroundColor = UIColor.brown
        
        ball.backgroundColor = UIColor.black
        
        blockOne.backgroundColor = UIColor.magenta
        
        blockTwo.backgroundColor = UIColor.magenta
        
        blockThree.backgroundColor = UIColor.magenta
        
        blockFour.backgroundColor = UIColor.magenta
        
        blockFive.backgroundColor = UIColor.magenta
        
        blockSix.backgroundColor = UIColor.magenta
        
        blockSeven.backgroundColor = UIColor.magenta
        
        blockEight.backgroundColor = UIColor.magenta
        
        blockNine.backgroundColor = UIColor.magenta
        
        blockTen.backgroundColor = UIColor.magenta
        
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
    
        override func viewDidAppear(_ animated: Bool) {
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
            
        collisionBehavior = UICollisionBehavior(items: [ball, paddle, blockOne, blockTwo,blockThree,blockFour, blockFive, blockSix, blockSeven, blockEight, blockNine, blockTen])
        
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
        
        blockDynamicBehavior = UIDynamicItemBehavior(items: [blockOne,blockTwo, blockThree, blockFour, blockFive, blockSix,blockSeven,blockEight, blockNine, blockTen])
        
        blockDynamicBehavior.allowsRotation = false
        
        blockDynamicBehavior.density = 1000.0
        
        dynamicAnimator.addBehavior(blockDynamicBehavior)

    }

    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?, at p: CGPoint)
    {
        if ball.center.y > paddle.center.y
        {
            ball.removeFromSuperview()
            
            collisionBehavior.removeItem(ball)
            
            let youLose = UIAlertController(title: "You Lose", message: nil, preferredStyle: UIAlertControllerStyle.alert)
            
            let okAlert = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in})
            
            youLose.addAction(okAlert)
            
            present(youLose, animated: true, completion: nil)
        }
    }
    
    
    func collisionBehavior(_ behavior: UICollisionBehavior, beganContactFor item1: UIDynamicItem, with item2: UIDynamicItem, at p: CGPoint) {
        
        self.ball.backgroundColor = UIColor.cyan
        
        for block in blockArray
        {
            if (item1 .isEqual(ball) && item2 .isEqual(block) ) || (item1 .isEqual(block) && item2 .isEqual(ball) )
            {
                if block.backgroundColor == UIColor.magenta
                {
                    
                block.backgroundColor = UIColor.blue
                    
                }
                
                else if block.backgroundColor == UIColor.blue
                {
        
                block.removeFromSuperview()
                    
                }
                
                count += 1
                
                if count == 20
                {
                    let blockAway = UIAlertController(title: "You Done", message: nil, preferredStyle: UIAlertControllerStyle.alert)
                    
                    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in})
                    
                    blockAway.addAction(okAction)
                    
                    present(blockAway, animated: true, completion: nil)
                    
                    collisionBehavior.removeItem(paddle)
                
                }
            }
            
        }
        
    }
    
    @IBAction func startUp(_ sender: UIButton) {
        
        buttonOutlet.removeFromSuperview()
        
        pushBehavior = UIPushBehavior(items: [ball], mode: UIPushBehaviorMode.instantaneous)
        
        pushBehavior.pushDirection = CGVector(dx: 0.5, dy: 1.0)
        
        pushBehavior.active = true
        
        pushBehavior.magnitude = 0.3
        
        dynamicAnimator.addBehavior(pushBehavior)
        
    }
    
    @IBAction func paddleDragged(_ sender: UIPanGestureRecognizer)
    {
        paddle.center = CGPoint(x: sender.location(in: self.view).x, y: paddle.center.y)
        
        dynamicAnimator.updateItem(usingCurrentState: paddle)
    }

}




